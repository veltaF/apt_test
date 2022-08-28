*** Settings ***
Library     WhiteLibrary
Library     SeleniumLibrary
Resource    CommonLocators.robot



*** Variables ***
${WORKING_DIR}        ${CURDIR}/../../

*** Keywords ***
Begin Web Test
    [Arguments]  ${browser}  ${start_url}
    SeleniumLibrary.Register Keyword To Run On Failure   WhiteLibrary.Take Desktop Screenshot
    WhiteLibrary.Set White Busy Timeout  30s
    SeleniumLibrary.open browser  about:blank  ${browser}
    SeleniumLibrary.MAXIMIZE BROWSER WINDOW
    SeleniumLibrary.go to  https://asunnot.oikotie.fi/

Close browser
    BuiltIn.run keyword and ignore error  SeleniumLibrary.close all browsers

Check element is visible and click
    [Arguments]  ${element}
    SeleniumLibrary.wait until element is visible  ${element}
    SeleniumLibrary.click element  ${element}

Input text and press enter
    [Arguments]  ${locator}  ${element}
    SeleniumLibrary.input text  ${locator}  ${element}
    SeleniumLibrary.Press Keys  ${locator}    ENTER

Click 'Accept All' button
   SeleniumLibrary.select frame  ${CONSENT_MESSAGE_FRAME}
   SeleniumLibrary.click element  ${ACCEPT_ALL_BUTTON}