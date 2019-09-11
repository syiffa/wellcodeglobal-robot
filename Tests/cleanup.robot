*** Settings ***
Library                       Selenium2Library
Log In To My App
Open browser  https://pinterusaha.herokuapp.com/?robotframework=1
Resource                      ../Resource/login.robot
Sleep                         10

*** Test Cases ***
Sample LoginTest
Set Browser Implicit wait
  Tunggu Aplikasi Redirect
  Sleep                       10
  Masuk ke Merchant
  Input Bahan Pokok
  Input Product
  Hapus Product
  Hapus Bahan Pokok

  Log Out From My App
