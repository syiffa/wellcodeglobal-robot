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
  Click Element                  css: a.sidebar__content__app-menu:nth-child(2)
  Sleep                          2
  Click Link                     Input Pengeluaran
  Sleep                          2

  Input Text                    id:purchase_order_code                                                                                          Pl
  Sleep                         1
  Click Element                 id:purchase_order_date
  Sleep                         1
  Click Element                 css: span.inner
  Sleep                         3
  Input Text                    id:purchase_order_customer_name                                                                                 Jen
  Click Element                 css: ul.input-search-result li:first-child
  Sleep                         2

  Press Key                      id:search                                                                                                      Cat
  Sleep                          1
  Click Element                  css: div.select-item__box__content
  Sleep                          1
  Click Element                  id:type_all
  Sleep                          1
  Click Element                  css: span.js-add
  Sleep                          1
  Click Element                  css: span.js-min
  Sleep                          1

  Click Button                  Tambah Biaya Tambahan
  Sleep                         1
  Input Text                    css: .js-form:nth-child(2) input.container__form__input                                                          ongkir
  Sleep                         1
  Input Text                    css: .js-form:nth-child(2) input.container__form__input.price                                                   10.000,00
  Sleep                         1
  Click Button                  Simpan
  Sleep                         1
  Click Button                  Ok
  Sleep                         1
  Click Button                  Lanjut
  Sleep                         1

# 2
  Click Link                    Input Pengeluaran
  Sleep                         2

  Input Text                    id:purchase_order_code                                                                                          Pl 2
  Sleep                         1
  Click Element                 id:purchase_order_date
  Sleep                         1
  Click Element                 css: span.inner
  Sleep                         3
  Input Text                    id:purchase_order_customer_name                                                                                 Jen
  Click Element                 css: ul.input-search-result li:first-child
  Sleep                         2
  Press Key                     id:search                                                                                                      Me
  Sleep                         1
  Click Element                 css: div.select-item__box__content
  Sleep                         1
  Click Element                 id:type_all
  Sleep                         1
  Click Element                 css: span.js-add
  Sleep                         1
  Click Element                 css: span.js-min
  Sleep                         1

  Click Button                  Tambah Biaya Tambahan
  Sleep                         1
  Input Text                    css: .js-form:nth-child(2) input.container__form__input                                                          ongkir
  Sleep                         1
  Input Text                    css: .js-form:nth-child(2) input.container__form__input.price                                                   10.000,00
  Sleep                         1
  Click Button                  Simpan
  Sleep                         1
  Click Button                  Ok
  Sleep                         1
  Click Button                  Lanjut
  Sleep                         1
