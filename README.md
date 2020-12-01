# SEULogin
A bash shell script to login Southeast University DrCOM webgate authentication.

## 1  Introduction

For background story, since August 1st, 2019, Southeast University has deployed a new webgate authentication system from [DrCOM]( http://www.drcom.com.cn/ ). The new webgate authentication system provides only Web interface for users to login, logout and manage their accounts. Also, the web login is based on javascript, which is not supported in text-based web browsers(e.g. w3m).

However, no official solution for Linux server has been provided ever, which causes troubles for users logging into webgate on Linux server. Especially after mid-october, even the servers in server room are required to login webgate and charged 5 RMB every 10 GB.

[SEULogin](https://github.com/HearyShen/SEULogin) is a tiny toolbox written to help the users login and logout with shell interface.

## 2  Usage

It is super easy to use the script:

### 2.1  Login

To login, run with Bash as:

```bash
bash seu-login.sh <username> <password>
```

or 

```bash
chmod u+x seu-login.sh		# grant executable privilege if necessary
./seu-login.sh <username> <password>
```

e.g. 

```bash
bash seu-login.sh 220123456 12345678
```

You should see a response like `dr1003({"result":"1","msg":"认证成功"})` in your shell.

### 2.2  Logout

To logout, run with Bash as:

```bash
bash seu-logout.sh
```

or 

```bash
chmod u+x seu-logout.sh		# grant executable privilege if necessary
./seu-logout.sh
```

Also, you can just logout your account via user self-service system.

You should see a response like `dr1004({"result":"1","msg":"注销成功"})` in your shell.

### 2.3  Who am I

To check who am I online on the current device, run with Bash as:

```bash
bash seu-whoami.sh
```

or

```bash
chmod u+x seu-whoami.sh		# grant executable privilege if necessary
./seu-whoami.sh
```

**Warning**: *This **whoami** is experimental-only currently, it only works on devices that have already logged in.*

You should see a message like:

```
[WARNING] Experimental-only for login device currently.
User ID:         220123456
User Name:       '张三'
Login IP:        121.248.34.56
```

## 3  Notes

The IP address of your host may change after logout. You can use [IPMailAlert](https://github.com/HearyShen/IPMailAlert) to keep informed of your latest IP address.
