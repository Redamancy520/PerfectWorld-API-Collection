### 关于Token

> 获取token: 通过调用登录API获取

#### 注意

● 每次发送`login` 请求就会更新`token` 

● 每次发送` logout` 请求就会将该次登录的`token` 销毁失效

● `token` 与 `mySteamId` 是对应的,若二者对不上则对于需要提供二者的Api会请求失败