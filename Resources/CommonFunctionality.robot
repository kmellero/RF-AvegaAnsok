*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${env}  qa
${browser}  chrome
&{url}  qa=https://www.avegagroup.se

*** Keywords ***
Start testCase
    OpenBrowser  ${url.${env}}  ${browser}
    Maximize Browser Window

Finish testCase
    Close Browser
