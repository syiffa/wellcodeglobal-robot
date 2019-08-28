*** Settings ***
Documentation                 A demo to test daftar PinterUsaha
Library                       Selenium2Library

*** Test Cases ***
MY TEST
  Log   pinterusaha.herokuapp.com

FirstSeleniumTest
  Open browser  https://pinterusaha.herokuapp.com/
  Set Browser Implicit wait  5
  # Click Button  name=btnK
  Sleep  2
  Log   Test Completed

Sample DaftarTest
    [Documentation]  This is a sample daftar tests
  Click Element             css:div.authentication-register
  Input Text                id:wellcode_client_name                   xl
  Input Text                id:wellcode_client_email                  xl@gmail.com
  Input Text                id:telephone                              087871193568
  Input Password            id:wellcode_client_password               04April-2000
  Input Password            id:wellcode_client_password_confirmation  04April-2000
  Click Button              Daftar
  # Click Button            name=btnK
  Sleep                     20
  wait until page contains  PinterUsaha
  Sleep                     10
  Click Button              Keluar
  Sleep                     5
  Click Button              Ok
  Input Text                id:session_email                          xl@gmail.com
  Input Password            id:session_password                       04April-2000
  Click Button              Masuk
  wait until page contains  Masuk Toko
  Sleep                     20
  Close Browser
  Log   Test Completed
*** Keywords ***
