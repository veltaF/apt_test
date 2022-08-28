*** Settings ***
Documentation   Apartment filtering test
Resource        ../../Resources/Search/Search.robot
Resource        ../../Resources/Common/Common.robot
Variables       ../../TestData/TestAutomSmoke_config.py
Variables       ../../TestData/search_apt_data.py



Test Setup     Common.Begin Web Test  ${BROWSER}  ${START_URL}


*** Test Cases ***
Create Search Request
    [Tags]  filtering
    Common.Click 'Accept All' button
    Search.Open ASSUNOT page
    ${num_of_houses} =  Search.Get House Numbers
    Search.Create Filter Request  ${FILTER_SET1}
    ${filtered_num} =  Search.Get House Numbers
    Should Be True  ${num_of_houses} > ${filtered_num}
    Common.Close browser




