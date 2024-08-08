*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://demoqa.com/browser-windows

*** Test Cases ***
Handle window
    New Browser    headless=False
    New Page    ${URL}
    sleep    7s
    Click    //button[.='New Tab']
    log    clicked on new tab
    sleep    3s
    ${pages}=    Get Page Ids
    log    ${pages}
    Switch Page    ${pages}[0]
    ${text}=    Get Text    //h1
    log    ${text}
