*** Settings ***
Resource            ${CURDIR}/../resources/import/import.robot
Test setup         common.Open website with specific option       ${web['url']['google']}
Test teardown      SeleniumLibrary.Close all browsers

*** Test Cases ***
TC-00-1 Open website
    [Tags]      test-1
    SeleniumLibrary.Element should be visible       xpath=//img[@alt="Google"]
    BuiltIn.Log to console      Locator founded: Good Job!!

TC-00-2 Open website and input text to search_bar
    [Tags]      test-2
    common.Open website with specific option       ${web['url']['google']}
    SeleniumLibrary.Element should be visible       xpath=//img[@alt="Google"]
    common.Input text when ready
    