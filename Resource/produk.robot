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
        Sleep    
