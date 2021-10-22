*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${buy}      css:.product__buy button
${modal_header}     css:div.modal__header
${place_order}      css:a.cart-receipt__submit
${close_modal_cart}     css:button.modal__close
${about_product}        id:#scrollArea
${product_img}      css:img.picture-container__picture


*** Keywords ***
Add product to cart
    Mouse over   ${find}
    Wait until element is visible   ${buy}
    Click button    ${buy}

Close modal window
    Wait until element is visible   ${close_modal_cart}
    Click button    ${close_modal_cart}

Should open modal window
    Wait until element is visible   ${modal_header}

Place an order
    Wait until element is visible   ${place_order}
    Click element   ${place_order}

Product page should be open
    Wait until element is visible   ${about_product}
