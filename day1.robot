*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${DEMOBLAZE_URL}        https://www.demoblaze.com/index.html
${BROWSER}        gc

*** Keywords ***
Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}     browser=${BROWSER}
    Maximize Browser Window


Verify Demoblaze Logo Appears
    Element Should Be Visible    xpath=//*[@id="nava"]


Verify Top Menu Appears
    Element Should Be Visible    xpath=//*[contains(text(), 'Home')]

Verify Banner Appears
    Element Should Be Visible    xpath=//*[@class="carousel-inner"]

verify Produk
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[1]/div/div/h4/a
    Element Should Be Visible        xpath=//*[@id="tbodyid"]/div[1]/div/div/h4/a


Click Tombol Login Homepage
    Click Element                    xpath=//*[@id="login2"]

login popup visible
    Wait Until Element Is Visible    xpath=//*[@id="loginusername"] 
Input Username
    Input Text                      xpath=//*[@id="loginusername"]        text=test4567

Input Password
    Input Text                      xpath=//*[@id="loginpassword"]            text=test

Click Login popup
    Click Element        xpath=//*[@type="button" and contains(text(), 'Log in')]

Close Google Chrome Browser
    Close Browser


*** Test Cases ***
#Open browser and close
#    Open Browser With Google Chrome
#    Verify Demoblaze Logo Appears
#    Verify Top Menu Appears
#    Verify Banner Appears
#    Close Google Chrome Browser

login
    Open Browser With Google Chrome
    Click Tombol Login Homepage   
    login popup visible
    Input Username
    Input Password
    Click Login popup
    Close Google Chrome Browser