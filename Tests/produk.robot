** Settings ***
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
  Input Text                     id:session_email                                                                                                syiffaadin87@gmail.com
  Input Password                 id:session_password                                                                                             04April-2000
  Click Button                   Masuk
  Sleep                          2
  Input Text                     id:token                                                                                                        000000
  Click Button                   Submit
  sleep                          15
  Click Element                  css: div.merchant-name
  Sleep                          2
  Click Element                  css: a.sidebar__content__app-menu:nth-child(3)
  Sleep                          2
  Click Link                     Produk
  Sleep                          2
  Click Element                  css: a.button.button__new
  Sleep                          3
  Input Text                     id:item_name                                                                                                    Kursi
  Input Text                     id:item_code                                                                                                    K-01
  Input Text                     id:item_lower_stock_treshold                                                                                    5
  Input Text                     id:item_published_price                                                                                         500.000,00
  Input Text                     id:item_description                                                                                             Strong, Comfortable:)
  Input Text                     id:item_category                                                                                                MAT
  Click Element                  css: ul.input-search-result li:first-child
  Sleep                          2

  Click Element                  css: tr:nth-child(2) .js-input
  Sleep                          1
  Click Element                  css: tr:nth-child(2) .js-input ~ ul li:first-child
  Sleep                          1
  Input Text                     css: tr:nth-child(2) input[type="number"]                                                                       2
  Sleep                          2

  Click Element                  css: div.js-add
  Sleep                          1

  Click Element                  css: tr:nth-child(3) .js-input
  Sleep                          1
  Click Element                  css: tr:nth-child(3) .js-input ~ ul li:nth-child(2)
  Sleep                          1
  Input Text                     css: tr:nth-child(3) input[type="number"]                                                                       2
  Sleep                          2

  Click Button                   Simpan
  Sleep                          3
  Click Button                   Lanjut
  Sleep                          3
  Click Link                     Ubah
  Sleep                          3

  Click Element                  css: div.js-add
  Sleep                          1
  Click Element                  css: tr:nth-child(4) .js-input
  Sleep                          1
  Click Element                  css: tr:nth-child(4) .js-input ~ ul li:nth-child(3)
  Sleep                          1
  Input Text                     css: tr:nth-child(4) input[type="number"]                                                                       2
  Sleep                          1
  Click Button                   Simpan
  Sleep                          2
  Click Button                   Ok
  Sleep                          2
  Click Button                   Lanjut
  Sleep                          3

  Click Link                     Ubah
  Sleep                          3

  Click Element                  css: tr:nth-child(2) a.button.button__delete.js-delete
  Sleep                          3
  Click Button                   Simpan
  Sleep                          2
  Click Button                   Ok
  Sleep                          2

  Click Button                   Lanjut
  Sleep                          3

  Close Browser
  Log   Test Completed
*** Keywords ***
