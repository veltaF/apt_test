*** Settings ***
Suite Setup     Smoke Test Setup
Suite Teardown  Smoke Test Teardown

Library  SeleniumLibrary
Library  WhiteLibrary
*** Keywords ***
Smoke Test Setup
    log  ${CURDIR}
    SeleniumLibrary.set selenium speed	 0.1 seconds
    # Timeout for how long these keywords should wait for certain events or actions
    SeleniumLibrary.set selenium timeout  1 min
    # Implicite wait specifies the maximum time how long Selenium waits when searching for elements
    SeleniumLibrary.set selenium implicit wait  0 seconds

Smoke Test Teardown
    SeleniumLibrary.close all browsers
    log  ${CURDIR}