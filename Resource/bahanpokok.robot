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
