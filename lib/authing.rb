require "openssl"
require "base64"
require_relative "static"
require "Faraday"
require "json"
require_relative "utils"
PUBLICKEY = "-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFPxAu3wqStpqyzuzQSail97oA\nhYnHVpXhd44GvHzZsU2a44/ZngUQK3Mjjon3CVVbPivwGAu2aUazgyxfH9/4CgcF\ni59RJjLhYlkjSG7WDr7CFXoiT0Qf7MUZ9mmvg93vJ/ndwj/S9hM6Lx2dX6H91MU2\n28hK0C1CLq1oBbgoZwIDAQAB\n-----END PUBLIC KEY-----"
HOST = "https://core.authing.cn/graphql"

module Authing
  class Client
    attr
    @@TokenMethods = Set["getClientWhenSdkInit", "login"]

    def initialize(opts = {})
      ["host", "publicKey", "userPoolId", "secret", "token"].each do |attr|
        instance_variable_set("@#{attr}", opts[attr])
      end #把 opts 中的值替换成目标值
      @host = HOST unless @host
      @publicKey = PUBLICKEY unless @publicKey

      Static.constants.each do |attr|
        self.class.send(:define_method, Static.const_get(attr)::Name) { |variables = {}|
          Util::checkToken @token if @token
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

    def encrypt(publicKey, passwd)
      rsa = OpenSSL::PKey::RSA.new @publicKey
      return rsa.public_key.public_encrypt(passwd)
    end

    def refrashToken()
      if @userPoolId and @secret
        self.setToken(self.request("getClientWhenSdkInit", {
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

    def request(staticAttr, variables)
      self.refrashToken if Util::checkToken(@token) if @token
      p variables
      resp = self.getconn.post() do |req|
        req.body = {
          query: Static.const_get(staticAttr)::Query.to_s,
          variables: variables.to_json,
        }.to_json
      end
      resp = JSON.parse resp.body
      if resp["errors"]
        return resp
      end
      result = resp["data"][Static.const_get(staticAttr)::Name]

      if @@TokenMethods.include?(Static.const_get(staticAttr)::Name)
        self.setToken(result) unless @token
      end

      return result
    end
  end
end
