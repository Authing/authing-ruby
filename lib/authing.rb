require "openssl"
require "base64"
require_relative "static"
require "Faraday"
require "json"
require_relative "utils"
PUBLICKEY = "-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4xKeUgQ+Aoz7TLfAfs9+paePb\n5KIofVthEopwrXFkp8OCeocaTHt9ICjTT2QeJh6cZaDaArfZ873GPUn00eOIZ7Ae\n+TiA2BKHbCvloW3w5Lnqm70iSsUi5Fmu9/2+68GZRH9L7Mlh8cFksCicW2Y2W2uM\nGKl64GDcIq3au+aqJQIDAQAB\n-----END PUBLIC KEY-----"
HOST = "https://core.authing.cn/graphql"

module Authing
  class Client
    @@TokenMethods = Set["getClientWhenSdkInit", "login"]

    def initialize(opts = {})
      ["host", "publicKey", "userPoolId", "secret", "token"].each do |attr|
        instance_variable_set("@#{attr}", opts[attr])
      end #把 opts 中的值替换成目标值
      @host = HOST unless @host
      @publicKey = PUBLICKEY unless @publicKey
      self.refrashToken if @userPoolId and @secret
      Static.constants.each do |attr|
        self.class.send(:define_method, Static.const_get(attr)::Name) { |variables = {}|
          return self.request(
                   attr, variables
                 )
        }
      end
    end

    def getconn()
      return Faraday.new(
               url: HOST,
               headers: {
                 "Authorization" => "Bearer #{@token}",
                 "Content-Type" => "application/json",
               },
             )
    end

    def encrypt(passwd)
      rsa = OpenSSL::PKey::RSA.new @publicKey
      rsa.public_encrypt(passwd)
      return Base64.urlsafe_encode64(rsa.public_encrypt(passwd))
    end

    def refrashToken()
      if @userPoolId and @secret
        self.setToken(self.request("GetClientWhenSdkInit", {
          "secret" => @secret,
          "clientId" => @userPoolId,
        }))
      else
        @token = nil
      end
    end

    def setToken(result)
      @token = result["accessToken"] if result["accessToken"]
      @token = result["token"] if result["token"]
    end

    def converter(moduleName, variables)
      variables = Util::userPoolIdConverter(getQuery(moduleName), variables, @userPoolId)
      if (moduleName.to_s == "Login" or moduleName.to_s == "ChangePassword") and variables[:password]
        variables["password"] = self.encrypt(variables[:password])
      elsif (moduleName.to_s == "Register")
        variables[:userInfo]["password"] = self.encrypt(variables[:userInfo][:password])
      end

      return variables
    end

    def getQueryName(moduleName)
      return Static.const_get(moduleName)::Name
    end

    def getQuery(moduleName)
      return Static.const_get(moduleName)::Query
    end

    def request(moduleName, variables)
      self.refrashToken if Util::checkToken(@token) if @token
      variables = converter(moduleName, variables)
      resp = self.getconn.post() do |req|
        req.body = {
          query: getQuery(moduleName).to_s,
          variables: variables.to_json,
        }.to_json
      end
      resp = JSON.parse resp.body
      if resp["errors"]
        return resp
      end
      result = resp["data"][getQueryName(moduleName)]
      self.setToken(result) unless @token if @@TokenMethods.include?(getQueryName(moduleName))
      return result
    end
  end
end
