*** Settings ***
Library         SeleniumLibrary
Library         DebugLibrary

Resource        ${CURDIR}/../keywords/pages/common.robot
Resource        ${CURDIR}/../keywords/pages/home_page.robot
Resource        ${CURDIR}/../locators/pages/locator_home_page.robot

Variables       ${CURDIR}/../testdata/testdata.yaml