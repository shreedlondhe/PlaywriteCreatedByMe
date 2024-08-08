
*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://demoqa.com/alerts

*** Test Cases ***
HandleAlerts
    New Browser    headless=False
    New Page    ${URL}
    sleep    8s
    Click    //button[@id='alertButton']
    log    clicked on get alert CTA
    Handle Future Dialogs    action=accept
    log    alert accepted
