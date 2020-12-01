# SEULogin
A bash shell script to login Southeast University DrCOM webgate authentication.

## 1  Introduction

For background story, since August 1st, 2019, Southeast University has deployed a new webgate authentication system from [DrCOM]( http://www.drcom.com.cn/ ). The new webgate authentication system provides only Web interface for users to login, logout and manage their accounts. Also, the web login is based on javascript, which is not supported in text-based web browsers(e.g. w3m).

However, no official solution for Linux server has been provided ever, which causes troubles for users logging into webgate on Linux server. Especially after mid-october, even the servers in server room are required to login webgate and charged 5 RMB every 10 GB.

[SEULogin](https://github.com/HearyShen/SEULogin) is a tiny tool written to help the users login and logout with shell interface.

## 2  Usage

It is super easy to use the script:

### 2.1  Login

Run with Bash as:

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
bash seu-login.sh 220209876 12345678
```

You should see a response like `dr1003({"result":"1","msg":"认证成功"})` in your shell.

### 2.2  Logout

Run with Bash as:

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

## 3  Notes

The IP address of your host may change after logout. You can use [IPMailAlert](https://github.com/HearyShen/IPMailAlert) to keep informed of your latest IP address.
