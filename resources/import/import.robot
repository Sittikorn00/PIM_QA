*** Settings ***
Library         AppiumLibrary
Library         SeleniumLibrary
Library         DebugLibrary

Resource        ${CURDIR}/../keywords/common.robot
Resource        ${CURDIR}/../keywords/${platform}/home_page.robot
Resource        ${CURDIR}/../locators/${platform}/locator_home_page.robot        

Variables       ${CURDIR}/../testdata/${platform}/testdata.yaml
Variables       ${CURDIR}/../settings/settings.yaml