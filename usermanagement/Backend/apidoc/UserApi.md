## 1.1 注册用户

调用该API，可以注册新用户

- **注册新用户**

```json
url:/user/register
method：POST
requestBody:
{
	"username":"cjf",
	"password":"abcdef"
}


successResponse：
123
```

| RequestField     |     Type |   Description   | 
| :--------------: | :--------:| :------: |
|    username|   String |  用户名 |
|    password|   String |  密码 |

| ResponseField     |     Type |   Description   | 
| :--------------: | :--------:| :------: |
|    userid |   Integer |  新用户的id |