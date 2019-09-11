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

Input Bahan Pokok

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
    sleep                     1
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
    Sleep                     2

Input Product
    Click Element             css: a.sidebar__content__app-menu:nth-child(3)
    Sleep                     2
    Click Link                Produk
    Sleep                     2
    Click Element             css: a.button.button__new
    Sleep                     3
    Input Text                id:item_name                                         Kursi
    Input Text                id:item_code                                         5
    Input Text                id:item_published_price                              500.000,00
    Input Text                id:item_description                                  Strong, Comfortable:)
    Input Text                id:item_category                                     FUR
    Click Element             css: ul.input-search-result li:first-child
    Sleep                     2
    Click Element             css: tr:nth-child(2) .js-input
    Sleep                     1
    Click Element             css: tr:nth-child(2) .js-input ~ ul li:first-child
    Sleep                     1
    Input Text                css: tr:nth-child(2) input[type="number"]            2
    Sleep                     2

    Click Element             css: div.js-add
    Sleep                     1

    Click Element             css: tr:nth-child(3) .js-input
    Sleep                     1
    Click Element             css: tr:nth-child(3) .js-input ~ ul li:nth-child(2)
    Sleep                     1
    Input Text                css: tr:nth-child(3) input[type="number"]             2
    Sleep                     2
    Click Button              Simpan
    Sleep                     3
    Click Button              Lanjut
    Sleep                     3

Hapus Product
    Click Link                Ubah
    Click Button              Hapus
    Sleep                     1
    Click Button              Ok
    Sleep                     2
    Click Button              Lanjut
    Sleep                     2

Hapus Bahan Pokok
  Click Link                Bahan Pokok
  Sleep                     2
  Click Link                css: tr:first-child a.table__button.button__edit
  Sleep                     1
  Click Button              Hapus
  Sleep                     1
  Click Button              Ok
  Sleep                     2
  Click Button              Lanjut
  Sleep                     2
  Click Link                css: tr:first-child a.table__button.button__edit
  Sleep                      2
  Click Button              Hapus
  Sleep                     1
  Click Button              Ok
  Sleep                     2
  Click Button              Lanjut
  Sleep                     5

Log Out From My App
  Close Browser


*** Test Cases ***
Sample LoginTest

  Log In To My App

  Sleep                       10
  Tunggu Aplikasi Redirect
  Masuk ke Merchant
  Input Bahan Pokok
  Input Product
  Hapus Product
  Hapus Bahan Pokok

  Log Out From My App
