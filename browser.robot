*** Settings ***
Library    Browser

*** Variables ***
${LOGIN URL}    https://www.selenium.dev/selenium/web/web-form.html
${BROWSER}    chromium


*** Test Cases ***
Test form
    [Setup]    Setup Actions
    Get Title    ==    Web form
    Type Text    [name="my-text"]    Selenium
    Click    button
    Get Text    id=message    ==    Received!
    [Teardown]    Teardown Actions


*** Keywords ***
Setup Actions
    New Browser    ${BROWSER}    headless=No    channel=msedge
    New Page    ${LOGIN URL}

Teardown Actions
    Close Browser
