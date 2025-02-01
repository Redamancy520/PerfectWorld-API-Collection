###  获取比赛记录
> [https://api.wmpvp.com/api/csgo/home/match/list](https://api.wmpvp.com/api/csgo/home/match/list)



请求方式:`POST`

#### 请求头
| 名称 | 说明 | 类型 | 必要性 |
| --- | --- | --- | --- |
| appversion | 无(当前为"3.5.4.172") | String | 必要 |
| platform | 平台(默认"android") | String | 不必要 |
| token | 平台账号登录令牌 | String | 必要 |
| gameType | 未知(当前为"1,2") | String | 不必要 |
| gameTypeStr | 未知(当前为"1,2") | String | 不必要 |


#### 参数
| 参数名 | 说明 | 类型 | 必要性 |
| --- | --- | --- | --- |
| csgoSeasonId | 无 | string | 必要 |
| dataSource | 无 | number | 必要 |
| mySteamId | 发起查询的玩家SteamID | number | 必要 |
| page | 需要获取多少页比赛战绩 | number | 必要 |
| pageSize | 每一页可容纳的比赛数 | number | 必要 |
| pvpType | 无 | number | 必要 |
| toSteamId | 查询的玩家SteamID | number | 必要 |


> 注意!!! `mySteamId` 要和 `token` 相互匹配 一一对应
>

> 控制获取的战绩条数: 通过`page`与`pageSize` ;  当`page=1,pageSize=5` 则为获取5条比赛战绩
>

#### 响应
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| statusCode | 返回值(0为成功,其他则请求失败) | number |
| errorMessage | 错误信息(成功为空字串) | String |
| data | 返回数据(错误时为null) | null |


##### `data`
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| dataPublic | 未知 | boolean |
| matchList | 比赛记录 | Json |


##### `matchList`
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| matchId | 比赛记录ID | String |
| playerId | 该玩家的SteamID | String |
| honor | 未知 | 未知 |
| k4 | 该玩家4杀次数 | number |
| k5 | 该玩家5杀次数 | number |
| matchScore |  | number |
| mapUrl | 比赛地图图片 | String |
| mapLogo | 比赛地图封面图标 | String |
| mapName | 比赛地图名称 | String |
| steamName |  |  |
| steamAvatar |  |  |
| team |  | number |
| winTeam |  | number |
| score1 | 比分1 | number |
| score2 | 比分2 | number |
| rating | CS Rating | number |
| pwRating | PW Rating | number |
| leaveTime | 离开时间 | String |
| startTime | 比赛开始时间 | String |
| endTime | 比赛结束时间 | String |
| timeStamp | 未知时间戳 | number |
| pageTimeStamp | 未知时间戳 | number |
| kill | 杀敌数 | number |
| botKill |  | number |
| negKill |  | number |
| death | 死亡数 | number |
| assist | 助攻数 | number |
| duration |  | number |
| dataSource |  | number |
| cupName |  |  |
| roundRemark |  |  |
| mode | 比赛模式(例如:天梯组排对局) | String |
| pvpScore |  | number |
| pvpScoreChange |  | number |
| pvpMvp |  | boolean |
| pvpNormalRank |  |  |
| pvpStars |  | number |
| group |  | boolean |
| rank |  | number |
| oldrank |  | number |
| gameMode |  |  |
| pvpGrading |  | number |
| matchType |  |  |
| deltaRank |  |  |
| we | WE | number |
| status |  | number |
| steamNick |  |  |
| playerInfoList |  | Array |
| greenMatch |  | boolean |
| mvp |  | boolean |


#### 请求示例
```python
url = "https://api.wmpvp.com/api/csgo/home/match/list"  

headers = {
    "appversion": "3.5.4.172",
    "token": "537fahm7hce521e313b9cef93f990b2db013f4e1"  
}

payload = {
    "csgoSeasonId": "recent",
    "dataSource": 3,
    "mySteamId": 76561199500583440,
    "page": 1,
    "pageSize": 50,
    "pvpType": -1,
    "toSteamId": 76561199500583440
}

requests.post(url, json=payload, headers=headers,verify=False)
```

返回:

```json
{
    "statusCode": 0,
    "errorMessage": "",
    "data": {
        "dataPublic": true,
        "matchList": [
            {
                "matchId": "PVP@9215803944321072908",
                "playerId": "76561199500583440",
                "honor": null,
                "k4": 0,
                "k5": 0,
                "matchScore": 0,
                "mapUrl": "https://www.csgo.com.cn/images/maps/jianying/map_mirage.jpg",
                "mapLogo": "https://www.csgo.com.cn/images/maps/logo/mirage.png",
                "mapName": "荒漠迷城",
                "steamName": null,
                "steamAvatar": null,
                "team": 2,
                "winTeam": 2,
                "score1": 8,
                "score2": 13,
                "rating": 1.07,
                "pwRating": 1.14,
                "leaveTime": "2025-01-31 00:10:31",
                "startTime": "2025-01-31 00:10:31",
                "endTime": "2025-01-31 00:41:22",
                "timeStamp": 1738255282,
                "pageTimeStamp": 1738253431,
                "kill": 15,
                "botKill": 0,
                "negKill": 0,
                "death": 13,
                "assist": 7,
                "duration": 30,
                "dataSource": 3,
                "cupName": null,
                "roundRemark": null,
                "mode": "天梯组排对局",
                "pvpScore": 1459,
                "pvpScoreChange": 28,
                "pvpScoreChangeType": 0,
                "pvpMvp": false,
                "pvpNormalRank": null,
                "pvpStars": 0,
                "group": true,
                "rank": 0,
                "oldrank": 0,
                "gameMode": null,
                "pvpGrading": 0,
                "matchType": null,
                "deltaRank": null,
                "we": 8.8394,
                "status": 0,
                "steamNick": null,
                "playerInfoList": Array[0],
                "greenMatch": false,
                "mvp": false
            },
            {
                "matchId": "PVP@9220659387360876044",
                "playerId": "76561199500583440",
                "honor": null,
                "k4": 3,
                "k5": 0,
                "matchScore": 0,
                "mapUrl": "https://www.csgo.com.cn/images/maps/jianying/map_inferno.jpg",
                "mapLogo": "https://www.csgo.com.cn/images/maps/logo/inferno.png",
                "mapName": "炼狱小镇",
                "steamName": null,
                "steamAvatar": null,
                "team": 1,
                "winTeam": 2,
                "score1": 8,
                "score2": 13,
                "rating": 1.8,
                "pwRating": 1.59,
                "leaveTime": "2025-01-30 23:31:03",
                "startTime": "2025-01-30 23:31:03",
                "endTime": "2025-01-31 00:07:30",
                "timeStamp": 1738253250,
                "pageTimeStamp": 1738251063,
                "kill": 25,
                "botKill": 0,
                "negKill": 0,
                "death": 16,
                "assist": 2,
                "duration": 36,
                "dataSource": 3,
                "cupName": null,
                "roundRemark": null,
                "mode": "天梯组排对局",
                "pvpScore": 1431,
                "pvpScoreChange": -11,
                "pvpScoreChangeType": 0,
                "pvpMvp": false,
                "pvpNormalRank": null,
                "pvpStars": 0,
                "group": true,
                "rank": 0,
                "oldrank": 0,
                "gameMode": null,
                "pvpGrading": 0,
                "matchType": null,
                "deltaRank": null,
                "we": 11.3442,
                "status": 0,
                "steamNick": null,
                "playerInfoList": Array[0],
                "greenMatch": false,
                "mvp": false
            }
          }
}
```
