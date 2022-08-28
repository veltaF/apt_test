*** Settings ***
Resource    SearchLocators.robot
Resource     ../../Resources/Common/Common.robot


*** Variables ***
${WORKING_DIR}        ${CURDIR}/../../

*** Keywords ***
Open ASSUNOT page
    Common.Check element is visible and click  ${ASSUNOT_LINK}
    SeleniumLibrary.wait until element is visible  ${BUY_APARTMENT_HEADER}


Get House Numbers
    ${numbers} =   SeleniumLibrary.Get Text  ${HOUSES_NUMBER}
    Return From Keyword  ${numbers}


Create Filter Request
    [Arguments]  ${data}
    SeleniumLibrary.Scroll Element Into View  ${BUTTON_CLEAR_SEARCH}
    Select PostiNumero  ${data['PostiNumero']}
    Type Vapaasanahaku  ${data['FreeSearch']}
    Type Hinta Min  ${data['HintaMin']}
    Type Hinta Max  ${data['HintaMax']}
    Type Pinta Min  ${data['AsuinPintaMin']}
    Type Pinta Max  ${data['AsuinPintaMax']}

    Select House Types  ${data['HouseType']}
    Select Room Number  ${data['Rooms']}

    SeleniumLibrary.Click element  ${SEARCH_BUTTON}


Select PostiNumero
    [Arguments]  ${postinumero}
    Common.Input text and press enter  ${POSTINUMERO_INPUT}  ${postinumero}
    SeleniumLibrary.wait until element is visible  xpath=//div[contains(@class, 'search-inputs-location-results')]/span[contains(.,'${postinumero}')]

Type Vapaasanahaku
     [Arguments]  ${vapaasanahaku}
     Common.Input text and press enter  ${VAPAASANAHAKU_INPUT}  ${vapaasanahaku}
     SeleniumLibrary.wait until element is visible  xpath=//span[contains(@ng-bind, 'keyword')][contains(.,'${vapaasanahaku}')]

Type Hinta Min
     [Arguments]  ${min_hinta}
     Common.Input text and press enter  ${MIN_HINTA_INPUT}  ${min_hinta}

Type Hinta Max
     [Arguments]  ${max_hinta}
     Input text and press enter  ${MAX_HINTA_INPUT}  ${max_hinta}


Type Pinta Min
     [Arguments]  ${min_pinta}
     Common.Input text and press enter  ${MIN_ASUIN_PINTA_INPUT}  ${min_pinta}

Type Pinta Max
     [Arguments]  ${max_pinta}
     Common.Input text and press enter  ${MAX_ASUIN_PINTA_INPUT}  ${max_pinta}

Select House Types
    [Arguments]  ${housetypes}
    FOR    ${type}    IN    @{housetypes}
        IF  "${type}" == "Kerrostalo"
            SeleniumLibrary.Click element  ${KERROSTALO_INPUT}
        ELSE IF  "${type}" == "Rivitalo"
             SeleniumLibrary.Click element  ${RIVITALO_INPUT}
        ELSE IF  "${type}" == "Paritalo"
             SeleniumLibrary.Click element  ${PARITALO_INPUT}
        ELSE IF  "${type}" == "Omakotitalo"
             SeleniumLibrary.Click element  ${OMAKOTITALO_INPUT}
        ELSE IF  "${type}" == "Puutalo"
             SeleniumLibrary.Click element  ${PUUTALO_INPUT}
        END
    END


Select Room Number
    [Arguments]  ${rooms}
    FOR    ${room}    IN    @{rooms}
            SeleniumLibrary.Click element   xpath=//input[contains(@id, 'search-input-roomCount-${room}')]//parent::div
    END
