*** Settings ***
Library           Browser

*** Variables ***
${URL}            https://demoqa.com/frames

*** Test Cases ***
HandleFrame
    New Browser    headless=False
    New Page    ${URL}
    sleep    8s
    Click    //iframe[@id='frame1'] >>> //*[@id="sampleHeading"]
    ${xx}    GetText    //iframe[@id='frame1'] >>> //*[@id="sampleHeading"]
    log    ${xx}
