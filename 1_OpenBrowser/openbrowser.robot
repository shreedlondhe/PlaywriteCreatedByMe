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
    Set Browser Timeout    20s   #setting implicit wait
    New Page    ${URL}
    Fill Text    //*[@id="email"]    shreedlondhe@gmail.com
    Fill Text    //*[@id="pass"]    Shree@6517
    Click    //button[@name='login']
    log    passed test case of login facebook



*******

___Custom Keywords___

Open Browser To Form Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
Fill Out Form
    [Arguments]    ${name}    ${email}    ${message}
    Input Text    id=name_input    ${name}
    Input Text    id=email_input   ${email}
    Input Text    id=message_input ${message}



******

___Handle DropDown___

*** Test Cases ***
Select Option From Drop-down
    Open Browser    ${URL}    chrome
    Click   selector_for_dropdown_menu  # If necessary, click to open the dropdown menu
    Select Option By Value    selector_for_dropdown_menu    option_value
    # Alternatively:
    # Select Option By Index    selector_for_dropdown_menu    index
    # Select Option By Text     selector_for_dropdown_menu    visible_text
    Close Browser


******

___find elements___

${header_links}=   Get Elements      selecto
FOR ${a} IN @{header_links}
    click ${a}

******

___Get text and Current URL__
 ${link_text}=     Get Text      ${link} 
${currentUrl}=     Get Url 


******

____wait for clickable___
Wait For Elements State    selector=#submit-button     state=enabled       timeout=10s 
____wait for visible____
Wait For Elements State    selector=your-element-selector    state=visible    timeout=10s
____waiyt for element attached ___
Wait For Elements State    selector=your-element-selector    state=attached    timeout=10s



******
___Handle Exception___
*** Test Cases ***
Handle Exception With Try Except
    TRY
        Keyword That Might Fail
    EXCEPT
        Log    An error occurred
    ELSE
        Log    Keyword executed successfully
    FINALLY
        Log    This will always be executed, whether or not an error occurred


******
___Assertion___
*** Test Cases ***
Verify Current Url
    New Page    https://example.com
    ${url}=     Get Url
    Should Be Equal    ${url}    https://example.com

Should Be Equal    ${var1}    ${var2}
Should Not Be Equal    ${var1}    ${var2}
Should Be True    ${condition}
Should Be False    ${condition}
Should Be Empty    ${list}
Should Not Be Empty    ${list}
Should Contain    ${string}    substring
Should Not Contain    ${string}    substring
Should Be Equal As Numbers    ${num1}    ${num2}
Should Be Equal As Strings    ${string1}    ${string2}

**** from playwright ****

Text Should Be Present    expected text
Element Should Be Visible    selector
Element Should Contain    selector    expected text
Title Should Be    expected title


