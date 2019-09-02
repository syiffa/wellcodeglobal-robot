*** Settings ***
Documentation                 A demo to test login PinterUsaha
Library                       Selenium2Library

*** Test Cases ***
MY TEST
  Log  pinterusaha.herokuapp.com

FirstSeleniumTest
  Open browser  https://pinterusaha.herokuapp.com/?robotframework=1
  Set Browser Implicit wait  5
  # Click Button  name=btnK
  Sleep  2
  Log   Test Completed

Sample LoginTest
  [Documentation]  This is a sample login tests
  Input Text                id:session_email                                     syiffaadin87@gmail.com
  Input Password            id:session_password                                  04April-2000
  Click Button              Masuk
  Sleep                     2
  Input Text                id:token                                             000000
  Click Button              Submit
  sleep                     10
  Click Element             css: div.merchant-name
  Sleep                     2
  Click Element             css: a.sidebar__content__app-menu:nth-child(3)
  Sleep                     2
  Click Link                Bahan Pokok
  Sleep                     2
  Click Element             css: a.button.button__new
  Sleep                     2
  Input Text                id:item_name                                         Kayu
  Input Text                id:item_code                                         k-11
  Input Text                id:item_lower_stock_treshold                         10
  Input Text                id:item_published_price                              300.000,00
  Input Text                id:item_description                                  kayu kuat, ukuran 1 meter
  Input Text                id:item_category                                     Material
  Sleep                     2
  Click Button              Simpan
  Click Button              Lanjut

  Click Link                Bahan Pokok
  Sleep                     3
  Click Element             css: a.button.button__new
  Sleep                     3
  Input Text                id:item_name                                         Paku (1 Pack)
  Input Text                id:item_code                                         P-13
  Input Text                id:item_lower_stock_treshold                         10
  Input Text                id:item_published_price                              10.000,00
  Input Text                id:item_description                                  Tajam
  Input Text                id:item_category                                     Material
  Sleep                     5
  Click Button              Simpan
  Click Button              Lanjut

  Click Link                Bahan Pokok
  Sleep                     3
  Click Element             css: a.button.button__new
  Sleep                     3
  Input Text                id:item_name                                         Cat Kayu
  Input Text                id:item_code                                         P-3
  Input Text                id:item_lower_stock_treshold                         10
  Input Text                id:item_published_price                              50.000,00
  Input Text                id:item_description                                  Cair
  Input Text                id:item_category                                     Material
  Sleep                     5
  Click Button              Simpan
  Click Button              Lanjut
  Sleep                     3
  Close Browser
  Log   Test Completed
*** Keywords ***
