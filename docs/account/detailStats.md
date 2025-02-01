### 获取玩家主页信息
> [https://api.wmpvp.com/api/csgo/home/pvp/detailStats](https://api.wmpvp.com/api/csgo/home/pvp/detailStats)
>

请求方式`POST`

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
| accessToken | 账号令牌(可为空字符串) | String | 不必要 |
| csgoSeasonId |  | | 不必要 |
| mySteamId | 自己的SteamId | number | 必要 |
| toSteamId | 要查询的账号的SteamId | number | 必要 |


#### 响应
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| data | 返回数据 | Json |
| errorMessage | 错误信息(成功为空) | String |
| statusCode | 返回值(成功为0) | number |


##### `data`
| 名称 | 说明 | 类型 |
| --- | --- | --- |
| adr | ADR | number |
| assists | 助攻数 | number |
| avatar | 头像(URL链接) | string |
| avgWe | 平均WE | number |
| breach | | number |
| cnt | 赛季场次 | number |
| commonRating | 平均Rating | number |
| deaths | 死亡数 | number |
| endingWin | | number |
| entryKillRatio | | number |
| gameScore | | number |
| headShotRatio | | number |
| historyDates | 历史记录的比赛时间 | Array String |
| historyPwRatings | 历史记录的完美比赛Rating | Array number |
| historyRatings | 历史记录的比赛Rating | Array number |
| historyRws | 历史记录的比赛RW | Array number |
| historyScores | | Array number |
| hitRate | | number |
| hotMaps | 常用地图 | Json |
| hotWeapons | 常用武器 | Json |
| hotWeapons2 | 常用武器 | Json |
| k2 | 双杀次数 | number |
| k3 | 三杀次数 | number |
| k4 | 四杀次数 | number |
| k5 | 五杀次数 | number |
| kills | 杀敌数 | number |
| multiKill | 多杀次数 | number |
| mvpCount | MVP次数 | number |
| name | 玩家名称 | String |
| prop | 道具指数(五角图) | number |
| pvpRank |  | number |
| pvpScore |  | number |
| pwRating | 玩家Rating | number |
| rating | 玩家Rating | number |
| rws | 玩家RWS | number |
| scoreList |  | Json |
| seasonId | 赛季名称 | String |
| shot | 枪法(五角图) | number |
| snipe | 狙杀(五角图) | number |
| stars |  | number |
| steamId | 玩家SteamId | String |
| summary | 玩家评价 | String |
| titles |  | Array |
| victory | 致胜(五角图) | number |
| vs1 | 1v1次数 | number |
| vs2 | 1v2次数 | number |
| vs3 | 1v3次数 | number |
| vs4 | 1v4次数 | number |
| vs5 | 1v5次数 | number |
| weList | 历史记录的比赛WE | Array number |
| winRate | 总胜率 | number |


#### 请求示例
```python
    url = "https://api.wmpvp.com/api/csgo/home/pvp/detailStats"
    payload = {
        "mySteamId": 76561198929215155,
        "toSteamId": 76561198929215155
    }
    header = {
        "appversion": "3.5.4.172",
        "token":"3dbb2485ah77nn99950bf805bbr20ff13f5d355"
    }
    result = requests.post(url,headers=header,json=payload, verify=False)
```

返回:

```json
{
    "data": {
        "adr": 70.38,
        "assists": 162,
        "avatar": "https://img.wmpvp.com/pvp/8e/d8/8ed80f74bc10babf256b031af3eda9a71690686510.png",
        "avgWe": 8.300000000000001,
        "breach": 5.094205038162378,
        "cnt": 39,
        "commonRating": 1.01,
        "deaths": 523,
        "endingWin": 35,
        "entryKillRatio": 0.1,
        "gameScore": 0,
        "headShotRatio": 0.46,
        "historyDates": [
            "2025-01-31 23:06:48",
            "2025-01-31 22:31:52",
            "2025-01-31 00:41:22",
        ],
        "historyPwRatings": [
            0.6899999999999999,
            0.59,
            0.84
        ],
        "historyRatings": [
            0.76,
            0.47,
            1.04
        ],
        "historyRws": [
            1.72,
            3.14,
            6.42
        ],
        "historyScores": [
            1554,
            1581,
            1610
        ],
        "hitRate": 1,
        "hotMaps": [
            {
                "deathNum": 440,
                "firstDeathNum": 35,
                "firstKillNum": 49,
                "fiveKillNum": 0,
                "fourKillNum": 1,
                "headshotKillNum": 222,
                "map": "de_mirage",
                "mapImage": "https://www.csgo.com.cn/images/maps/bg/map_mirage_bg.jpg",
                "mapLogo": "https://www.csgo.com.cn/images/maps/logo/mirage.png",
                "mapName": "荒漠迷城",
                "matchMvpNum": 4,
                "rank": null,
                "ratingSum": 34.309998,
                "rwsSum": 276.87997,
                "scuffle": false,
                "threeKillNum": 28,
                "totalAdr": 2443,
                "totalKill": 485,
                "totalMatch": 34,
                "v3Num": 4,
                "v4Num": 0,
                "v5Num": 0,
                "winCount": 22
            },
            {
                "deathNum": 83,
                "firstDeathNum": 6,
                "firstKillNum": 7,
                "fiveKillNum": 0,
                "fourKillNum": 0,
                "headshotKillNum": 34,
                "map": "de_inferno",
                "mapImage": "https://www.csgo.com.cn/images/maps/bg/map_inferno_bg.jpg",
                "mapLogo": "https://www.csgo.com.cn/images/maps/logo/inferno.png",
                "mapName": "炼狱小镇",
                "matchMvpNum": 0,
                "rank": null,
                "ratingSum": 4.4,
                "rwsSum": 23.56,
                "scuffle": false,
                "threeKillNum": 3,
                "totalAdr": 302,
                "totalKill": 73,
                "totalMatch": 5,
                "v3Num": 0,
                "v4Num": 0,
                "v5Num": 0,
                "winCount": 2
            }
        ],
        "hotWeapons": [
            {
                "totalMatch": 0,
                "weaponHeadShot": 113,
                "weaponImage": "https://www.csgo.com.cn/images/weapon/ak47.png",
                "weaponKill": 214,
                "weaponName": "AK47"
            },
            {
                "totalMatch": 0,
                "weaponHeadShot": 29,
                "weaponImage": "https://www.csgo.com.cn/images/weapon/m4a1.png",
                "weaponKill": 111,
                "weaponName": "M4A1消音型"
            },
            {
                "totalMatch": 0,
                "weaponHeadShot": 22,
                "weaponImage": "https://www.csgo.com.cn/images/weapon/mp9.png",
                "weaponKill": 54,
                "weaponName": "MP9"
            },
            {
                "totalMatch": 0,
                "weaponHeadShot": 30,
                "weaponImage": "https://www.csgo.com.cn/images/weapon/usp_s.png",
                "weaponKill": 39,
                "weaponName": "USP消音版"
            },
            {
                "totalMatch": 0,
                "weaponHeadShot": 14,
                "weaponImage": "https://www.csgo.com.cn/images/weapon/galil.png",
                "weaponKill": 37,
                "weaponName": "加利尔AR"
            },
            {
                "totalMatch": 0,
                "weaponHeadShot": 18,
                "weaponImage": "https://www.csgo.com.cn/images/weapon/glock18.png",
                "weaponKill": 25,
                "weaponName": "格洛克18型"
            }
        ],
        "hotWeapons2": [
            {
                "accuracyType": 1,
                "avgDamage": 535,
                "avgTimeToKill": 591,
                "damageSum": 20891,
                "firstShotAccuracy": 0.2724138,
                "firstShotHitCount": 79,
                "firstShotShotCount": 290,
                "headshotRate": 0.52803737,
                "headshotSum": 113,
                "image": "https://www.csgo.com.cn/images/weapon/ak47.png",
                "killNum": 214,
                "levelAccuracy": "B",
                "levelAvgDamage": "B",
                "levelAvgKillNum": "B",
                "levelAvgTimeToKill": "B",
                "levelHeadshotRate": "A",
                "matchNum": 39,
                "name": "ak47",
                "nameZh": "AK47",
                "sprayAccuracy": 0.1619023,
                "timeToKillCount": 157,
                "timeToKillTotal": 92928
            },
            {
                "accuracyType": 1,
                "avgDamage": 290,
                "avgTimeToKill": 650,
                "damageSum": 11328,
                "firstShotAccuracy": 0.22147651,
                "firstShotHitCount": 33,
                "firstShotShotCount": 149,
                "headshotRate": 0.26126125,
                "headshotSum": 29,
                "image": "https://www.csgo.com.cn/images/weapon/m4a1.png",
                "killNum": 111,
                "levelAccuracy": "B",
                "levelAvgDamage": "C",
                "levelAvgKillNum": "C",
                "levelAvgTimeToKill": "B",
                "levelHeadshotRate": "B",
                "matchNum": 39,
                "name": "m4a1_silencer",
                "nameZh": "M4A1消音型",
                "sprayAccuracy": 0.19645293,
                "timeToKillCount": 85,
                "timeToKillTotal": 55314
            },
            {
                "accuracyType": 1,
                "avgDamage": 146,
                "avgTimeToKill": 744,
                "damageSum": 5270,
                "firstShotAccuracy": 0.2857143,
                "firstShotHitCount": 18,
                "firstShotShotCount": 63,
                "headshotRate": 0.4074074,
                "headshotSum": 22,
                "image": "https://www.csgo.com.cn/images/weapon/mp9.png",
                "killNum": 54,
                "levelAccuracy": "A",
                "levelAvgDamage": "B",
                "levelAvgKillNum": "B",
                "levelAvgTimeToKill": "A",
                "levelHeadshotRate": "B",
                "matchNum": 36,
                "name": "mp9",
                "nameZh": "MP9",
                "sprayAccuracy": 0.23271376,
                "timeToKillCount": 39,
                "timeToKillTotal": 29038
            },
            {
                "accuracyType": 2,
                "avgDamage": 99,
                "avgTimeToKill": 699,
                "damageSum": 3291,
                "firstShotAccuracy": 0.23529412,
                "firstShotHitCount": 16,
                "firstShotShotCount": 68,
                "headshotRate": 0.7692308,
                "headshotSum": 30,
                "image": "https://www.csgo.com.cn/images/weapon/usp_s.png",
                "killNum": 39,
                "levelAccuracy": "C",
                "levelAvgDamage": "B",
                "levelAvgKillNum": "B",
                "levelAvgTimeToKill": "B",
                "levelHeadshotRate": "A",
                "matchNum": 33,
                "name": "usp_silencer",
                "nameZh": "USP消音版",
                "sprayAccuracy": null,
                "timeToKillCount": 23,
                "timeToKillTotal": 16085
            },
            {
                "accuracyType": 1,
                "avgDamage": 117,
                "avgTimeToKill": 580,
                "damageSum": 3396,
                "firstShotAccuracy": 0.20930232,
                "firstShotHitCount": 9,
                "firstShotShotCount": 43,
                "headshotRate": 0.3783784,
                "headshotSum": 14,
                "image": "https://www.csgo.com.cn/images/weapon/galil.png",
                "killNum": 37,
                "levelAccuracy": "B",
                "levelAvgDamage": "B",
                "levelAvgKillNum": "B",
                "levelAvgTimeToKill": "B",
                "levelHeadshotRate": "B",
                "matchNum": 29,
                "name": "galilar",
                "nameZh": "加利尔AR",
                "sprayAccuracy": 0.16666667,
                "timeToKillCount": 29,
                "timeToKillTotal": 16829
            },
            {
                "accuracyType": 2,
                "avgDamage": 70,
                "avgTimeToKill": 785,
                "damageSum": 2124,
                "firstShotAccuracy": 0.23684211,
                "firstShotHitCount": 9,
                "firstShotShotCount": 38,
                "headshotRate": 0.72,
                "headshotSum": 18,
                "image": "https://www.csgo.com.cn/images/weapon/glock18.png",
                "killNum": 25,
                "levelAccuracy": "C",
                "levelAvgDamage": "C",
                "levelAvgKillNum": "C",
                "levelAvgTimeToKill": "B",
                "levelHeadshotRate": "A",
                "matchNum": 30,
                "name": "glock",
                "nameZh": "格洛克18型",
                "sprayAccuracy": null,
                "timeToKillCount": 23,
                "timeToKillTotal": 18069
            },
            {
                "accuracyType": 2,
                "avgDamage": 154,
                "avgTimeToKill": 328,
                "damageSum": 1857,
                "firstShotAccuracy": 0.4,
                "firstShotHitCount": 14,
                "firstShotShotCount": 35,
                "headshotRate": 0.09523810000000001,
                "headshotSum": 2,
                "image": "https://www.csgo.com.cn/images/weapon/awp.png",
                "killNum": 21,
                "levelAccuracy": "B",
                "levelAvgDamage": "B",
                "levelAvgKillNum": "B",
                "levelAvgTimeToKill": "A",
                "levelHeadshotRate": "C",
                "matchNum": 12,
                "name": "awp",
                "nameZh": "AWP",
                "sprayAccuracy": null,
                "timeToKillCount": 10,
                "timeToKillTotal": 3281
            },
            {
                "accuracyType": 2,
                "avgDamage": 100,
                "avgTimeToKill": 403,
                "damageSum": 2302,
                "firstShotAccuracy": 0.40384614,
                "firstShotHitCount": 21,
                "firstShotShotCount": 52,
                "headshotRate": 0.68421054,
                "headshotSum": 13,
                "image": "https://www.csgo.com.cn/images/weapon/eagle.png",
                "killNum": 19,
                "levelAccuracy": "B",
                "levelAvgDamage": "B",
                "levelAvgKillNum": "C",
                "levelAvgTimeToKill": "A",
                "levelHeadshotRate": "A",
                "matchNum": 23,
                "name": "deagle",
                "nameZh": "沙漠之鹰",
                "sprayAccuracy": null,
                "timeToKillCount": 10,
                "timeToKillTotal": 4036
            },
            {
                "accuracyType": 1,
                "avgDamage": 80,
                "avgTimeToKill": 662,
                "damageSum": 1127,
                "firstShotAccuracy": 0.31578946,
                "firstShotHitCount": 6,
                "firstShotShotCount": 19,
                "headshotRate": 0.41666666,
                "headshotSum": 5,
                "image": "https://www.csgo.com.cn/images/weapon/mac10.png",
                "killNum": 12,
                "levelAccuracy": "B",
                "levelAvgDamage": "C",
                "levelAvgKillNum": "C",
                "levelAvgTimeToKill": "A",
                "levelHeadshotRate": "B",
                "matchNum": 14,
                "name": "mac10",
                "nameZh": "MAC-10",
                "sprayAccuracy": 0.19121447,
                "timeToKillCount": 10,
                "timeToKillTotal": 6625
            },
            {
                "accuracyType": 1,
                "avgDamage": 123,
                "avgTimeToKill": 857,
                "damageSum": 617,
                "firstShotAccuracy": 0.25,
                "firstShotHitCount": 1,
                "firstShotShotCount": 4,
                "headshotRate": 0.16666667,
                "headshotSum": 1,
                "image": "https://www.csgo.com.cn/images/weapon/m4a4.png",
                "killNum": 6,
                "levelAccuracy": "A",
                "levelAvgDamage": "C",
                "levelAvgKillNum": "C",
                "levelAvgTimeToKill": "C",
                "levelHeadshotRate": "C",
                "matchNum": 5,
                "name": "m4a1",
                "nameZh": "M4A4",
                "sprayAccuracy": 0.3030303,
                "timeToKillCount": 4,
                "timeToKillTotal": 3428
            }
        ],
        "k2": 94,
        "k3": 31,
        "k4": 1,
        "k5": 0,
        "kd": 1.07,
        "kills": 558,
        "multiKill": 126,
        "mvpCount": 65,
        "name": "我是ChildKing",
        "prop": 6.28166235976181,
        "pvpRank": 0,
        "pvpScore": 1554,
        "pwRating": 0.99,
        "rating": 1.01,
        "rws": 7.7,
        "scoreList": [
            {
                "matchId": "9216437273368856076",
                "score": 1554,
                "slevel": 0,
                "stars": 0,
                "time": 1738336008
            },
            {
                "matchId": "9210807773619891468",
                "score": 1581,
                "slevel": 0,
                "stars": 0,
                "time": 1738333912
            },
            {
                "matchId": "9215803944321072908",
                "score": 1610,
                "slevel": 0,
                "stars": 0,
                "time": 1738255282
            }
        ],
        "seasonId": "S18",
        "shot": 6.540489198876295,
        "snipe": 2.98064082734533,
        "stars": 0,
        "steamId": "76561198929215177",
        "summary": "神枪不朽",
        "titles": [

        ],
        "victory": 5.972451123195349,
        "vs1": 23,
        "vs1WinRate": 0.8846153846153846,
        "vs2": 8,
        "vs3": 4,
        "vs4": 0,
        "vs5": 0,
        "weList": [
            6.0543,
            5.0565,
            7.8289
        ],
        "winRate": 0.62
    },
    "errorMessage": "",
    "statusCode": 0
}
```
