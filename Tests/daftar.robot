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
  Click Element                css:div.authentication-register
  Input Text                   id:wellcode_client_name                   syiffa
  Input Text                   id:wellcode_client_email                  syiffaadin87@gmail.com
  Input Text                   id:telephone                              085846022415
  Input Password               id:wellcode_client_password               04April-2000
  Input Password               id:wellcode_client_password_confirmation  04April-2000
  Click Button                 Daftar
  Set Browser Implicit wait    5
  Close Browser
  Log   Test Completed
*** Keywords ***
