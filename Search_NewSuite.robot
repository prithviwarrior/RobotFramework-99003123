*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidateOrder
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    

    Open Browser    url=https://www.kohls.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//input[@id='search'] 
    Input Text    xpath=//input[@id='search']    mens tuxedos   
    Click Element    //span[text()='mens tuxedos']       
    Click Element    //a[@class="sbSelector"]
    Click Element    //a[@href='#Price High-Low']
    
    Sleep    5s    
    Click Element    //img[@class="pmp-hero-img"]    

    Click Element    //a[@class="sbSelector"]
    Click Element    //a[@href="#40R 33"]  
    
    Click Element    //p[text()='+'] 
    
    
    Click Element    //input[@title="Add To Cart"] 
    Click Element    //a[@title="View Shopping Cart"]   
    
   
    Click Element    //input[@name="Checkout"]   
#10. click on guest checkout  
    Click Element    //button[@id="LPGuestCheckout"]      
    
#11. Click on Continue to payment
    Click Element    //input[@value="Continue to Payment"]   
    
#12. validate all the error messages 
    ${errortxt}    Get Text    //span[@class="errorMsg"]
    Log To Console    ${errortxt}
    
#13. Close the browser 
    Close Browser     