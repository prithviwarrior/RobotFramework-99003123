*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary      screenshot_root_directory=${OUTPUT_DIR}//ScreenShots 

*** Test Cases ***
TC1_ValidateOrder
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    Open Browser    url=https://www.kohls.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Click Element    xpath=//input[@id='search'] 
    Input Text    xpath=//input[@id='search']    mens tuxedos 
    Click Element    //input[@type='submit']    
    #Press Keys    button    RETURN 
    #Click Element    //span[text()='mens tuxedos'] 
    # Page Should Contain Element    //a[contains(text(),'Featured')]    
    Sleep    10s
    Click Element    //a[contains(text(),'Featured')]
    Click Element    //a[@href='#Price High-Low']
    
    Sleep    5s    
    Click Element    //img[@class="pmp-hero-img"]    

    Click Element    (//a[@class="sbSelector"])[1]
    Click Element    //a[@href="#40R 33"]  
    
    Click Element    //p[text()='+'] 
    
    
    Click Element    //input[@title="Add To Cart"] 
    Click Element    //a[@title="View Shopping Cart"]   
    
    Click Element    //input[@name="Checkout"]   
    
    Click Element    //button[@id="LPGuestCheckout"]

    Click Element    //input[@value="Continue to Payment"]
    
     ${errortxt}    Get Text    //span[@class="errorMsg"]
     Log To Console    ${errortxt}
     
    Close Browser

