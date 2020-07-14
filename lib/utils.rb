require "jwt"
require "Time"

module Util
  def Util.checkToken(token)
    info = JWT.decode token, nil, false
    return Time.now.to_i() > info[0]["exp"]
  end
  def Util.userPoolIdConverter(query, value, userPoolId)
    if query.include? "$registerInClient: String"
      value["registerInClient"] = userPoolId
    end
    if query.include? "$clientId: String"
      value["clientId"] = userPoolId
    end
    if query.include? "$userPoolId: String,"
      value["userPoolId"] = userPoolId
    end
    if query.include? "mutation register"
      value[:userInfo][:registerInClient] = userPoolId
    end
    return value
  end
end
