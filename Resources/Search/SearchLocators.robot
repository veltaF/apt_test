*** Variables ***

${CONSENT_MESSAGE_FRAME}  xpath=//*[contains(@title, 'SP Consent Message')]
${ACCEPT_ALL_BUTTON}  xpath=//*[contains(@title, 'Hyväksy kaikki evästeet')]

${ASSUNOT_LINK}  xpath=//a[contains(.,'Asunnot')]
${BUY_APARTMENT_HEADER}  xpath=//h1/span[contains(.,'Myytävät asunnot')]

${POSTINUMERO_INPUT}  xpath=//input[contains(@placeholder, 'Esim. Tampere tai 33100')]
${VAPAASANAHAKU_INPUT}  xpath=//input[contains(@id, 'keyword-search')]
${MIN_HINTA_INPUT}  xpath=//input[contains(@name, 'priceMin')]
${MAX_HINTA_INPUT}  xpath=//input[contains(@name, 'priceMax')]
${MIN_ASUIN_PINTA_INPUT}  xpath=//input[contains(@name, 'sizeBuildingMin')]
${MAX_ASUIN_PINTA_INPUT}  xpath=//input[contains(@name, 'sizeBuildingMax')]

${BUTTON_CLEAR_SEARCH}  xpath=//button[contains(@analytics-click, 'search_click_clear')]
${SEARCH_BUTTON}  xpath=//span[contains(., 'Hae kohteet ')]//parent::button

${KERROSTALO_INPUT}  xpath=//div/input[contains(@id, 'apartment-type-1')]//parent::div
${RIVITALO_INPUT}  xpath=//input[contains(@id, 'apartment-type-2')]//parent::div
${PARITALO_INPUT}  xpath=//input[contains(@id, 'apartment-type-64')]//parent::div
${OMAKOTITALO_INPUT}  xpath=//input[contains(@id, 'apartment-type-4')]//parent::div
${PUUTALO_INPUT}  xpath=//input[contains(@id, 'apartment-type-512')]//parent::div

${HOUSES_NUMBER}  xpath=//span[contains(@class, 'search-result-controls__found')]
