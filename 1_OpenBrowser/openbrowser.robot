*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://www.facebook.com

*** Test Cases ***
Open Facebook
    Open

*** Keywords ***
Open
    New Browser    headless=False
    Set Browser Timeout    20s
    New Page    ${URL}
    Fill Text    //*[@id="email"]    shreedlondhe@gmail.com
    Fill Text    //*[@id="pass"]    Shree@6517
    Click    //button[@name='login']
    log    passed test case of login facebook
