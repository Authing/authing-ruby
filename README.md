# SDK for Ruby

<div align=center><img width="300" src="https://files.authing.co/authing-console/authing-logo-new-20210924.svg"></div>
<br/>

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

更多接口可看 [Authing Graphql](https://core.authing.cn/graphql/v2)

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

## 参与贡献
- Fork it
- Create your feature branch (git checkout -b my-new-feature)
- Commit your changes (git commit -am 'Add some feature')
- Push to the branch (git push origin my-new-feature)
- Create new Pull Request

## 获取帮助

Join us on forum: [#authing-chat](https://forum.authing.cn/)
