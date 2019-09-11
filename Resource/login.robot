*** Settings ***
Documentation                 A demo to test login PinterUsaha
Library                       Selenium2Library

*** Keywords ***
Log In To My App
    Open browser  https://pinterusaha.herokuapp.com/?robotframework=1
    Set Browser Implicit wait  5
    Sleep  2
    Input Text                id:session_email                                     elitaads@gmail.com
    Input Password            id:session_password                                  04April-2000
    Click Button              Masuk
    Sleep                     2
    Input Text                id:token                                             000000
    Click Button              Submit

Tunggu Aplikasi Redirect
    Sleep                     10

    Masuk ke Merchant
    Click Element             css: div.merchant-name
    Sleep                     2
