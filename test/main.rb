require_relative "../lib/authing"

authing = Authing::Client.new({
  "secret" => "df9f6828b0960671a34287f2381dfb8a",
  "userPoolId" => "5f0c2597061ec4de51237379",
})
# Do everything!
