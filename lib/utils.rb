require "jwt"
require "Time"

module Util
  def Util.checkToken(token)
    info = JWT.decode token, nil, false
    return Time.now.to_i() > info[0]["exp"]
  end
end
