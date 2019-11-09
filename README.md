# SEULogin
A bash shell script to login Southeast University DrCOM webgate authentication.

## 1  Introduction

Since August 1st, 2019, Southeast University has deployed a new webgate authentication system from [DrCOM]( http://www.drcom.com.cn/ ). The new webgate authentication system provides only Web interface for users to login, logout and manage their accounts. 

However, no official solution for Linux server has been provided ever, which causes troubles for users logging into webgate on Linux server. Especially after mid-august, even the servers in server room are required to login webgate and charged 5 RMB every 10 GB.

[SEULogin](https://github.com/HearyShen/SEULogin) is a tiny tool written to help the users to login with shell interface.

## 2  Usage

### 2.1  Login

It is super easy to use the script:

1. Open the script with an editor you like;
2. Fill in the `username` and `password` (replace `<username>` and `<password>`);
3. Run with Bash (e.g. `bash login.sh`).

You should see a response like `dr1003({"result":"1","msg":"认证成功"})` in your shell.

### 2.2  Logout

You can just logout your account via user self-service system. No need for a script.

## 3  Notes

The IP address of your host may change after logout. You can use [IPMailAlert](https://github.com/HearyShen/IPMailAlert) to keep informed of your latest IP address.
