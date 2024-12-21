*** Keywords ***
Open website with specific option
    [Arguments]     ${url}      ${browser}=${common['browser']['googlechrome']}
    SeleniumLibrary.Open browser       ${url}     ${browser}

Input text when ready
    [Arguments]     ${locator}      ${text}
    SeleniumLibrary.Wait until element is visible       ${locator}
    SeleniumLibrary.Input text      ${locator}      ${text}