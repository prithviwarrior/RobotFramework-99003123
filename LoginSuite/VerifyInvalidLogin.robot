*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    screenshot_root_directory=${OUTPUT_DIR}//ScreenShots

*** Test Cases ***

TC1_ValidateOrder
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    
    Open Browser    url=https://www.kohls.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    #Page Should Contain    Account   
    # Mouse Over    //span[text()="Account"] 
    # Click Element    //span[text()="Account"]
    ${ele}    Get WebElement    //*[text()='Account']
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    
    Click Element    //a[text()="My Kohl's Card"]    
    Click Element    //button[text()="OK"]    
    
    Switch Window    locator=NEW

    Input Text    //input[@id='user']    abc    
    Input Text    //input[@id='pass']    def
    Click Element     //button[@id='loginAction']
    
    ${errortxt}    Get Text    //span[@class="alerttext"]
    Log To Console    ${errortxt}
