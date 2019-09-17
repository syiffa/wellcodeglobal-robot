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

Input Bahan Pokok
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Click Link                Bahan Pokok
    Click Element             css: a.button.button__new
    Input Text                id:item_name                                                          Kulit
    Input Text                id:item_code                                                          K-h
    Input Text                id:item_lower_stock_treshold                                          1
    Input Text                id:item_published_price                                               300.000,00
    Input Text                id:item_description                                                   Tebal
    Input Text                id:item_category                                                      Material
    Click Button              Simpan
    Click Button              Lanjut
    Page Should Contain       Bahan pokok berhasil dibuat

Pengeluaran Bahan Pokok
    Click Element             css: a.sidebar__content__app-menu:nth-child(2)
    Click Link                Input Pengeluaran
    Input Text                id:purchase_order_code                                                Kl-h
    Click Element             id:purchase_order_date
    Click Element             css: span.inner
    Input Text                id:purchase_order_customer_name                                       Syiffa
    Click Element             css: ul.input-search-result li:first-child
    Press Key                 id:search                                                             Kul
    Click Element             css: div.select-item__box__content
    Click Element             id:type_all
    Click Button              Tambah Biaya Tambahan
    Input Text                css: .js-form:nth-child(2) input.container__form__input               ongkir
    Input Text                css: .js-form:nth-child(2) input.container__form__input.price         10.000,00
    Click Button              Simpan
    Click Button              Ok
    Click Button              Lanjut
    Page Should Contain       Input data pembelian berhasil!

Input Product
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Click Link                Produk
    Click Element             css: a.button.button__new
    Input Text                id:item_name                                                          Wallet
    Input Text                id:item_code                                                          Wl-h
    Input Text                id:item_published_price                                               1.000.000,00
    Input Text                id:item_description                                                   Fashionable
    Input Text                id:item_category                                                      ACC
    Click Element             css: ul.input-search-result li:first-child
    Click Element             css: tr:nth-child(2) .js-input
    Click Element             css: tr:nth-child(2) .js-input ~ ul li:first-child
    Input Text                css: tr:nth-child(2) input[type="number"]                             1
    Click Button              Simpan
    Click Button              Lanjut
    Page Should Contain       Produk berhasil dibuat


Input Produksi
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Sleep                     3
    Click Link                Produk
    Click Link                Produksi
    Input Text                id:stock_log_item                                                    Wall
    Click Element             css: ul.input-search-result li:first-child
    Input Text                id:stock_log_actual_amount                                           1
    Click Button              Simpan
    Click Button              Lanjut
    Page Should Contain       Stok produk berhasil ditambahkan

Input Pemasukan
    Click Element             css: a.sidebar__content__app-menu:first-child
    Click Link                Input Pemasukan
    Input Text                id:sales_order_code                                                   P-h
    Input Text                id:sales_order_customer_name                                          Syiffa
    Click Element             css: ul.input-search-result li:first-child
    Click Element             id:sales_order_date
    Click Element             css: span.inner
    Press Key                 id:search                                                             Wall
    Click Element             css: div.select-item__box__content
    Click Element             id:type_all
    Click Button              Tambah Biaya Tambahan
    Input Text                css: .js-form:nth-child(2) input.container__form__input               ongkir
    Input Text                css: .js-form:nth-child(2) input.container__form__input.price         10.000,00
    Click Button              Simpan
    Click Button              Ok
    Click Button              Lanjut
    Page Should Contain       Input data penjualan berhasil!

Laporan
    Click Element             css: a.sidebar__content__app-menu:nth-child(4)
    Page Should Contain       Laporan
    Click Element             id:unit
    Click Element             css: select#unit option:nth-child(3)
    Page Should Contain       Saldo Akhir


*** Test Cases ***
Sample InventoryTest

    Log In To My App

    Sleep                     10
    Tunggu Aplikasi Redirect
    Masuk ke Merchant
    Input Bahan Pokok
    Pengeluaran Bahan Pokok
    Input Product
    Input Produksi
    Input Pemasukan
    Laporan
