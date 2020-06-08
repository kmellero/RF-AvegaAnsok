*** Settings ***
Documentation  Direct Job Application Functionality
Resource  ../Resources/PageObjects/HomePage.robot
Resource  ../Resources/CommonFunctionality.robot


Test Setup  CommonFunctionality.Start testCase
#Test Teardown  CommonFunctionality.Finish

*** Variables ***


*** Test Cases ***
Verify direct job applying functionality at Avega
    [Documentation]  This case verifies the direct application
    [Tags]  Functional

    HomePage.Click on Jobba har
    HomePage.Click on Spontanansok and Ansok nu
    HomePage.Fill the form

