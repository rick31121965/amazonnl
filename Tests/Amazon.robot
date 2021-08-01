*** Settings ***
Documentation    Deze test zoekt een porsche uit in Amazon.nl
Resource    ../Resources/Common.robot

# robot -d results C:\development\robot-scripts\AmazonNL\Tests\Amazon.robot


*** Variables ***
${Browser} =   Chrome
${URL} =    http://www.amazon.nl
${artikel1} =   Porsche 911 Carrera 4S Cabrio

*** Test Cases ***

Het inloggen in amazon.nl
    [Tags]    inloggen
    open browser    about:blank     ${Browser}
    go to   ${URL}
    maximize browser window
    click element    //*[@id="sp-cc-accept"]
    input text    //*[@id="twotabsearchtextbox"]    ${artikel1}
    click element    //*[@id="nav-search-submit-button"]
    click element    //*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/div[1]/h2/a/span
    click element    //*[@id="add-to-cart-button"]
    click element    //*[@id="nav-cart-text-container"]/span[1]
    select checkbox    //*[@id="sc-buy-box-gift-checkbox"]
    click element    //*[@id="sc-buy-box-ptc-button"]/span/input
    ${elementText}    get text    //*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1
    should contain any    ${ElementText}    Inloggen    ignore_case=true













