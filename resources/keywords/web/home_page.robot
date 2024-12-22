*** Keywords ***
Verify image logo should be displayed
    SeleniumLibrary.Wait until element is visible       ${locator['img_logo']}
    SeleniumLibrary.Element should be visible           ${locator['img_logo']}

Input text in search bar
    [Arguments]     ${text}
    SeleniumLibrary.Wait until element is visible       ${locator['img_logo']}
    common.Input text when ready        ${locator['img_logo']}      ${text}