### 登录完美平台
> [https://passport.pwesports.cn/account/login](https://passport.pwesports.cn/account/login)

请求方式:`POST`

#### 参数
| 参数名 | 说明 | 类型 | 必要性 |
| --- | --- | --- | --- |
| appId | 软件ID(当前为 2) | number | 必要 |
| mobilePhone | 手机号 | String | 必要 |
| securityCode | 验证码 | String | 必要 |


#### 响应
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| code | 返回值 | number |
| description | 返回内容 | String |
| result | 返回数据 | Json |


##### `result`
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| loginResult | 登录返回数据 | Json |


##### `loginResult`
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| accountInfo | 账号信息 | Json |
| userType | | number |


##### `accountInfo`
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| create | 完美平台账号创建时间戳 | number |
| mobilePhone | 完美平台账号绑定的手机号 | String |
| steamId | 完美平台账号绑定的SteamID | number |
| token | 账号令牌 | String |
| userId | 完美平台账号Id | number |


#### 请求示例
```python
    url = "https://passport.pwesports.cn/account/login"
    payload = {
        "appId": 2,
        "mobilePhone": "12345675467",
        "securityCode": "982051"
    }
    result = requests.post(url, json=payload, verify=False)
```

返回:

```json
{
   "code" : 0,
   "description" : "Success",
   "result" : {
      "loginResult" : {
         "accountInfo" : {
            "create" : 1690183496000,
            "mobilePhone" : "12345675467",
            "steamId" : 76561198929200000,
            "token" : "cdd5fd3e9f5ab93a19nng99e824988abb589eb8f5",
            "userId" : 58072600
         },
         "userType" : 1
      }
   }
}
```