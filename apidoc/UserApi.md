## 1.1 根据用户名返回用户

调用该API，可以根据用户名得到具体的用户信息

- **根据用户名返回用户**

```json
url:/user/getByUsername?username={username}
method：GET
successResponse：
{
    "username": null,
    "name": "cjf",
    "age": 20,
    "birthday": "2018-10-31T08:04:13.944+0000"
}
```

| ResponseField     |     Type |   Description   | 
| :--------------: | :--------:| :------: |
|    username|   String |  用户名 |
|    name|   String |  姓名 |
|    age|   Integer |  年龄 |
|    birthday|   Date |  出生日期 |