*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ValidCredential
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    url=https://www.kohls.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//input[@id='search'] 
    Input Text    xpath=//input[@id='search']    tuxedo   

    #Sleep    8s       
    Switch Window    Online Credit Card Application Form | Citi India
    Click Element    id=fancybox-close    
    Input Text    name="email-email-1598329727016"    warrior   
    Input Text    name="mobile-text-1598329731917"    01232456789    
    Click Element    xpath=//option[text()='Mx.']
    Input Text    name="firstName-text-1598329735386"    Emilia     
    Click Element    xpath=//input[@tabindex="6"]
    Click Element    xpath=//input[@error="Please select your Preferred Mailing Address"]
    Click Element    id=auth_tnc
    Click Element    id=marketing_offers