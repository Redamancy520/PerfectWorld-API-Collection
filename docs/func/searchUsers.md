### 搜索用户
> [https://appengine.wmpvp.com/steamcn/app/search/user](https://appengine.wmpvp.com/steamcn/app/search/user)
>

请求方式:`POST`

#### 请求头
| 名称 | 说明 | 类型 | 必要性 |
| --- | --- | --- | --- |
| appversion | 软件版本(当前3.5.4.172) | String | 必要 |
| token | 账号令牌 | String | 必要 |


#### 参数
| 参数名 | 说明 | 类型 | 必要性 |
| --- | --- | --- | --- |
| keyword | 搜索的关键词 | String | 必要 |
| page | 页数(推荐 1) | number | 必要 |




#### 响应
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| code | 返回值(1为成功) | number |
| message | 返回信息 | String |
| result | 搜索到的账号列表 | Array Json |


`result`

| 名称 | 说明 | 类型 |
| --- | --- | --- |
| steamId | SteamID | number |
| pvpNickName | 完美平台用户昵称 | String |
| pvpAvatar | 完美平台用户头像URL | String |
| steamNickName | Steam昵称(目前为NULL) | String |
| steamAvatar | Steam头像(目前为NULL) | String |
| appNickName | 完美平台用户编号 | String |
| userId | 完美平台用户ID | number |
| ladderType | 未知 | int |


#### 请求示例


```python
def searchUser(name, token):
    url = "https://appengine.wmpvp.com/steamcn/app/search/user"
    header = {
        "appversion": "3.5.4.172",
        "token": token
    }
    payload = {
        "keyword": name,
        "page": 1
    }
    requests.post(url, headers=header, json=payload, verify=False)

searchUser("波奇666","34kba297b5077af99950bpoe2eag30h313f693ab")
```

返回:

```json
{
    "code": 1,
    "message": "success",
    "result": [
        {
            "steamId": "76561198929215233",
            "pvpNickName": "波奇666",
            "pvpAvatar": "https://img.wmpvp.com/pvp/8e/d8/8ed80f74bc10babf256b031af3eda9a71690686510.png",
            "steamNickName": null,
            "steamAvatar": null,
            "appNickName": "PW9321974267",
            "userId": 58072673,
            "ladderType": 4
        },   
        {
            "steamId": "76561199163489003",
            "pvpNickName": "波奇642",
            "pvpAvatar": "https://cdn.wmpvp.com/avatars/ad19558a90cd1c789cfcbf9584081af25d85c40e.jpg",
            "steamNickName": null,
            "steamAvatar": null,
            "appNickName": "PW2076942005",
            "userId": 1009754767,
            "ladderType": 0
        }
    ]
}
```

> 提示: 若有完全符合keyword的用户,则出现在result的第一个位置
>

