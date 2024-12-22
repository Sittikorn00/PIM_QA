*** Settings ***
Resource    ${CURDIR}/../../resources/import/import.robot
# Test Setup      common.Open test with specific environment
Test Teardown       common.Common teardown


*** Test Cases ***
Open App on Emulator
    [Tags]      android
    common.Open test with specific platform