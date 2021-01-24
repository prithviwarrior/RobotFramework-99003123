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
    
#2. Use "Search" box on top and search for tuxedo 
    Click Element    xpath=//input[@id='search'] 
    Input Text    xpath=//input[@id='search']    mens tuxedos   
    Click Element    //span[text()='mens tuxedos']    
    #Select From List By Index    id="sbSelector_27663141"    5        
    #Sleep    8s       
    
         
    
    #Switch Window    Online Credit Card Application Form | Citi India
    

#3. Sort from highest to lowest price     
    Click Element    //a[@class="sbSelector"]
    Click Element    //a[@href='#Price High-Low']
    
    Sleep    5s    
#4. Choose the first tuxedo item 
    Click Element    //img[@class="pmp-hero-img"]    

#5. Choose a size 40
    Click Element    //a[@class="sbSelector"]
    Click Element    //a[@href="#40R 33"]  
    
#6. Increase the quantity to 2 
    Click Element    //p[text()='+'] 
    

    Click Element    //input[@title="Add To Cart"] 
    Click Element    //a[@title="View Shopping Cart"]   
    
    Click Element    //input[@name="Checkout"]     
    Click Element    //button[@id="LPGuestCheckout"]      
    
    Click Element    //input[@value="Continue to Payment"]   
    
    ${errortxt}    Get Text    //span[@class="errorMsg"]
    Log To Console    ${errortxt}
    
    Close Browser     