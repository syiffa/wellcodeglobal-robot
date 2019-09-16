*** Settings ***
Documentation                 A demo to test login PinterUsaha
Library                       Selenium2Library

*** Keywords ***
Log In To My App
    Open browser  https://pinterusaha.herokuapp.com/?robotframework=1
    Set Browser Implicit wait  5
    Sleep  2
    Input Text                    id:session_email                                                   elitaads@gmail.com
    Input Password                id:session_password                                                04April-2000
    Click Button                  Masuk
    Sleep                         2
    Input Text                    id:token                                                           000000
    Click Button                  Submit

Tunggu Aplikasi Redirect
    Sleep                         10

Masuk ke Merchant
    Click Element                 css: div.merchant-name
    Sleep                         2

Input Pemasukan
    Click Element                  css: a.sidebar__content__app-menu:nth-child(1)
    Sleep                          2
    Click Link                     Input Pemasukan
    Sleep                          2
    Input Text                     id:sales_order_code                                               a
    sleep                          2
    Input Text                     id:sales_order_customer_name                                      Syif
    Click Element                  css: ul.input-search-result li:first-child
    sleep                          2
    Click Element                  id:sales_order_date
    Sleep                          1
    Click Element                  css: span.inner
    Sleep                          3
    Input Text                     id:sales_order_table_number                                       a
    Press Key                      id:search                                                         Mej
    Sleep                          1
    Click Element                  css: div.select-item__box__content
    Sleep                          1
    Click Element                  id:type_all
    Sleep                          1
    Click Element                  css: span.js-add
    Sleep                          1
    Click Element                  css: span.js-min
    Sleep                          1
    Click Button                   Simpan
    Sleep                          1
    Click Button                   Ok
    Sleep                          1
    Click Button                   Lanjut
    Sleep                          1

Input Pengeluaran

    Click Element                 css: a.sidebar__content__app-menu:nth-child(2)
    Sleep                         2
    Click Link                    Input Pengeluaran
    Sleep                         2
    Input Text                    id:purchase_order_code                                              b
    Sleep                         2
    Click Element                 id:purchase_order_date
    Sleep                         1
    Click Element                 css: span.inner
    Sleep                         3
    Input Text                    id:purchase_order_customer_name                                     Syif
    Click Element                 css: ul.input-search-result li:first-child
    sleep                         2
    Press Key                     id:search                                                           Me
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
    Input Text                    css: .js-form:nth-child(2) input.container__form__input             ongkir
    Sleep                         1
    Input Text                    css: .js-form:nth-child(2) input.container__form__input.price       100.000,00
    Sleep                         1
    Click Button                  Simpan
    Sleep                         1
    Click Button                  Ok
    Sleep                         1
    Click Button                  Lanjut
    Sleep                         1

Laporan

    Click Element                 css: a.sidebar__content__app-menu:nth-child(4)
    Sleep                         2
    Page Should Contain           Laporan
    Click Element                 id:unit
    Click Element                 css: select#unit option:nth-child(3)
    Sleep                         1



Log Out From My App
    Close Browser

*** Test Cases ***
Sample LoginTest

    Log In To My App

    Sleep                        10
    Tunggu Aplikasi Redirect
    Masuk ke Merchant
    # Input Pemasukan
    # Input Pengeluaran
    Laporan

    # Log Out From My App
