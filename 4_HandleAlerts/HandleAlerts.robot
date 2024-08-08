
*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://demoqa.com/alerts

*** Test Cases ***
HandleAlerts
    New Browser    headless=False
    #adding implecit wait of 10 sec
    Set Browser Timeout    20s
    New Page    ${URL}
    Click    //button[@id='alertButton']
    log    clicked on get alert CTA
    Handle Future Dialogs    action=accept
    log    alert accepted
