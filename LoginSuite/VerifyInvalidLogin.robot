*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

TC1_ValidateOrder
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    
#1. Launch the website - https://www.kohls.com/
    Open Browser    url=https://www.kohls.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
#2. Click on Account
    Click Element    //a[@title="Account"]
    
#3. Click on My Kohls card    
    Click Element    //a[text()="My Kohl's Card"]    
    Click Element    //button[text()="OK"]    
    
#4. Provide username and password
    Input Text    //inp`ut[@id='user']    text    
    Input Text    //input[@id='pass']    text
    Click Element     //button[@id='loginAction']
    
#5. Validate the error message
    ${errortxt}    Get Text    //span[@class="alerttext"]
    Log To Console    ${errortxt}
