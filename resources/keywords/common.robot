*** Keywords ***
Open website with specific option
    [Arguments]     ${url}      ${browser}=${common['browser']['googlechrome']}
    SeleniumLibrary.Open browser       ${url}     ${browser}