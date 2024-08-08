*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://demoqa.com/frames

*** Test Cases ***
HandleFrame
    New Browser    headless=False
    #adding implecit wait of 10 sec
    Set Browser Timeout    20s
    New Page    ${URL}
    Click    //iframe[@id='frame1'] >>> //*[@id="sampleHeading"]
    ${xx}    GetText    //iframe[@id='frame1'] >>> //*[@id="sampleHeading"]
    log    ${xx}
