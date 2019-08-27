*** Settings ***
Documentation                 A demo to test login PinterUsaha
Library                       Selenium2Library

*** Test Cases ***
MY TEST
  Log  well-erp.herokuapp.com

FirstSeleniumTest
  Open browser  https://well-erp.herokuapp.com/sign_in
  Set Browser Implicit wait  5
  # Click Button  name=btnK
  Sleep  2
  Log   Test Completed

Sample LoginTest
  [Documentation]  This is a sample login tests
  Input Text                id:session_email     syiffaadin87@gmail.com
  Input Password            id:session_password  04April-2000
  Click Button              Masuk
  Click Button              Keluar
  Close Browser
  Log   Test Completed
*** Keywords ***
