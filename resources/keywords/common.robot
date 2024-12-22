*** Keywords ***
Open website with specific option
    [Arguments]     ${url}=${EMPTY}      ${browser}=${web['browser']['googlechrome']}
    SeleniumLibrary.Open browser       ${url}     ${browser}

Open application with specific option
    [Arguments]
    ...     ${remote_url}=${remote_url}
    ...     ${automationName}=${automationName}
    ...     ${platformName}=${platformName}
    ...     ${platformVersion}=${platformVersion}
    ...     ${deviceName}=${deviceName}

    FOR     ${i}     IN RANGE   1  4
        ${is_app_open}=    BuiltIn.Run keyword and return status        AppiumLibrary.Open Application    ${remote_url}
    ...     platformName=${platformName}
    ...     deviceName=${deviceName}
    ...     app=${app}
    ...     automationName=${automationName}
    ...     platformVersion=${platformVersion}
        BuiltIn.Exit for loop if   ${is_app_open}
    END
    BuiltIn.Run keyword if    not ${is_app_open}    Application failed to open after 4 attempts

Open test with specific platform
    [Arguments]     ${url}=${EMPTY}
    IF      "${platform}" == "web"
        common.Open website with specific option       ${url}
    ELSE IF     "${platform}" == "android"
        common.Open application with specific option
    ELSE
        BuiltIn.Log to console      Invalid platform
    END

Common teardown
    IF      "${platform}" == "web"
        SeleniumLibrary.Close all browsers
    ELSE IF     "${platform}" == "android"
        AppiumLibrary.Close all applications
    ELSE
        BuiltIn.Log to console      Invalid platform
    END

Input text when ready
    [Arguments]     ${locator}      ${text}
    SeleniumLibrary.Wait until element is visible       ${locator}
    SeleniumLibrary.Input text      ${locator}      ${text}