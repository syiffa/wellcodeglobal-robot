*** Settings ***
Documentation                 A demo to test login PinterUsaha
Library                       Selenium2Library

*** Keywords ***
Log In To My App
    Open browser  https://pinterusaha.herokuapp.com/?robotframework=1
    Set Browser Implicit wait  5
    Sleep  2
    Input Text                id:session_email                                                      jannah@gmail.com
    Input Password            id:session_password                                                   04April-2000
    Click Button              Masuk
    Sleep                     2
    Input Text                id:token                                                              000000
    Click Button              Submit

Tunggu Aplikasi Redirect
    Sleep                     10

Masuk ke Merchant
    Click Element             css: div.merchant-name
    Sleep                     2

Input Bahan Pokok
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Sleep                     2
    Click Link                Bahan Pokok
    Sleep                     2
    Click Element             css: a.button.button__new
    Sleep                     2
    Input Text                id:item_name                                                          Kulit
    Input Text                id:item_code                                                          K-14
    Input Text                id:item_lower_stock_treshold                                          100
    Input Text                id:item_published_price                                               300.000,00
    Input Text                id:item_description                                                   Tebal
    Input Text                id:item_category                                                      Material
    Sleep                     2
    Click Button              Simpan
    Sleep                     1
    Click Button              Lanjut
    Sleep                     1
    Page Should Contain       Bahan pokok berhasil dibuat

Input Stok Bahan Pokok
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Sleep                     2
    Click Link                Jurnal Stok
    Sleep                     2
    Click Element             css: a.button.button__new
    Sleep                     3
    Input Text                id:stock_log_item                                                     Kulit
    Click Element             css: ul.input-search-result li:first-child
    Sleep                     2
    Input Text                id:stock_log_actual_amount                                            2
    Sleep                     1
    Click Button              Simpan
    Sleep                     1
    Click Button              Lanjut
    Sleep                     1

Input Product
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Sleep                     2
    Click Link                Produk
    Sleep                     2
    Click Element             css: a.button.button__new
    Sleep                     3
    Input Text                id:item_name                                                          Wallet
    Input Text                id:item_code                                                          WK-13
    Input Text                id:item_published_price                                               1.000.000,00
    Input Text                id:item_description                                                   Fashionable
    Input Text                id:item_category                                                      ACC
    Click Element             css: ul.input-search-result li:first-child
    Sleep                     2
    Click Element             css: tr:nth-child(2) .js-input
    Sleep                     1
    Click Element             css: tr:nth-child(2) .js-input ~ ul li:first-child
    Sleep                     1
    Input Text                css: tr:nth-child(2) input[type="number"]                             1
    Sleep                     2
    Click Button              Simpan
    Sleep                     3
    Page Should Contain       Produk berhasil dibuat
    Click Button              Lanjut
    Sleep                     3


Input Stok Product
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Sleep                     2
    Click Link                Jurnal Stok
    Sleep                     2
    Click Element             css: a.button.button__new
    Sleep                     3
    Input Text                id:stock_log_item                                                     Wall
    Click Element             css: ul.input-search-result li:first-child
    Sleep                     2
    Input Text                id:stock_log_actual_amount                                            2
    Sleep                     1
    Click Button              Simpan
    Sleep                     1
    Click Button              Lanjut
    Sleep                     1

Input Pemasukan
    Click Element             css: a.sidebar__content__app-menu:first-child
    Sleep                     1
    Click Link                Input Pemasukan
    Sleep                     2
    Input Text                id:sales_order_code                                                   333
    Sleep                     1
    Input Text                id:sales_order_customer_name                                          Syiffa
    Click Element             css: ul.input-search-result li:first-child
    Sleep                     2
    Click Element             id:sales_order_date
    Sleep                     1
    Click Element             css: span.inner
    Sleep                     3
    Press Key                 id:search                                                             Wall
    Sleep                     1
    Click Element             css: div.select-item__box__content
    Sleep                     1
    Click Element             id:type_all
    Sleep                     1
    Click Element             css: span.js-add
    Sleep                     1
    Click Element             css: span.js-min
    Sleep                     1
    Click Button              Tambah Biaya Tambahan
    Sleep                     1
    Input Text                css: .js-form:nth-child(2) input.container__form__input               ongkir
    Sleep                     1
    Input Text                css: .js-form:nth-child(2) input.container__form__input.price         10.000,00
    Sleep                     1
    Click Button              Simpan
    Sleep                     1
    Click Button              Ok
    Sleep                     1
    Click Button              Lanjut
    Sleep                     1

Laporan
    Click Element             css: a.sidebar__content__app-menu:nth-child(4)
    Sleep                     2
    Page Should Contain       Laporan
    Click Element             id:unit
    Click Element             css: select#unit option:nth-child(3)
    Sleep                     1
    wait until page contains  Saldo Akhir
    Sleep                     2


*** Test Cases ***
Sample InventoryTest

    Log In To My App

    Sleep                     10
    Tunggu Aplikasi Redirect
    Masuk ke Merchant
    Input Bahan Pokok
    Input Stok Bahan Pokok
    Input Product
    Input Stok Product
    Input Pemasukan
    Laporan
