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

## 1.2 用户登陆

调用该API，可以进行用户登录

- **用户登陆**

```json
url:/user/login?username={username}&password={password}
method：GET

```

| RequestField     |     Type |   Description   | 
| :--------------: | :--------:| :------: |
|    username|   String |  用户名 |
|    password|   String |  密码 |

| Response Status Code  |   Description   | 
| :--------------: |  :------: |
|    200 |  注册成功 |
|    非200 |  注册失败 |