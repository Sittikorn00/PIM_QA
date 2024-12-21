*** Settings ***
Resource        ${CURDIR}/../resources/import/import.robot

*** Test Cases ***
TC-00 Open website
    [Tags]      test
    common.Open website with specific option       ${common['url']['google']}
    SeleniumLibrary.Element should be visible       xpath=//img[@alt="Google"]
    debug
    BuiltIn.Log to console      Locator founded: Good Job!!
    SeleniumLibrary.Close browser

# *** Variables ***
# $ =  1 or apple
# @ =  [1,2,3,4,5,6,7,8,9,10] or [apple,banana,mango]
# & =  username:anupong  password:123456     key:value