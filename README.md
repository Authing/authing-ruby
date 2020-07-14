<h1 align="center">Welcome to Authing-Ruby-Sdk </h1>
<img class="emojidex-emoji" src="https://cdn.emojidex.com/emoji/seal/Ruby.png" emoji-code="Ruby" alt="Ruby" />
<p>
  <a href="https://twitter.com/fuergaosi" target="_blank">
    <img alt="Twitter: fuergaosi" src="https://img.shields.io/twitter/follow/fuergaosi.svg?style=social" />
  </a>
</p>

## Install

```sh
gem install authing
```
## 如何使用
### 初始化
> 通过 Token 初始化
```ruby
authing = Authing::Client.new({
  userPoolId: "<Your userPoolId>",
  token: "<Your Token>"
})
```
> 通过 UserPoolId + Secret 初始化

```ruby
authing = Authing::Client.new({
  userPoolId: "<Your userPoolId>",
  secret: "<Your Token>"
})
```

> 通过用户登录信息初始化
```ruby
authing = Authing::Client.new({userPoolId: "<Your userPoolId>"})
res = authing.register({
  userInfo: {
    email: "c11j@authing.cn",
    password: "username",
    username: "233",
  },
})
```

### 使用功能
**所有方法名以及参数均和 Graphql 保持一致** 
⚠️ 目前版本仅支持 Authing Graphql 的接口，Restful 需要额外支持。   
更多接口可看 [Authing Graphql](https://core.authing.cn/graphql)  
#### 部分 `Demo` 演示
> 登录
```ruby
authing.login({
  email: "authing@tmp.cn",
  password: "authing",
  username: "authing",
})
```
> 注册
```ruby
res = authing.register({
  userInfo: {
    email: "authing@tmp.cn",
    password: "authing",
    username: "authing",
  }
})
```

> 创建角色分组
```ruby
res = authing.createRBACRole({
  input: {
    userPoolId: "5f0c2597061ec4de51237379",
    name: "tmp",
    description: "tmp",
  },
  description: "tmp",
  name: "tmp",
  userPoolId: "5f0c2597061ec4de51237379",
})
```

## Author

* Twitter: [@fuergaosi](https://twitter.com/fuergaosi)
