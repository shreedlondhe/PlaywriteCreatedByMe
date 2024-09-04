*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://demoqa.com/browser-windows

*** Test Cases ***
Handle window
    New Browser    headless=False
    #adding implecit wait of 10 sec
    Set Browser Timeout    20s
    New Page    ${URL}
    Click    //button[.='New Tab']  #clicking on element
    log    clicked on new tab
    sleep    3s  #adding hard waits
    ${pages}=    Get Page Ids
    log    ${pages}
    Switch Page    ${pages}[0]
    ${text}=    Get Text    //h1
    log    ${text}
