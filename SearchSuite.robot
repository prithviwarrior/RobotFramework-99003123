*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidateOrder
    Append To Environment Variable    Path    ${OUTPUT_DIR}//driver
    

    Open Browser    url=https://www.kohls.com/    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    
    Comment    Use "Search" box on top and search for tuxedo 
    Click Element    xpath=//input[@id='search'] 
    Input Text    xpath=//input[@id='search']    mens tuxedos   
    Click Element    //span[text()='mens tuxedos']    
    Comment   Select From List By Index    id="sbSelector_27663141"    5        
    Comment   Sleep    8s       
    
         
    
    Comment   Switch Window    Online Credit Card Application Form | Citi India
    

    Comment    Sort from highest to lowest price     
    Click Element    //a[@class="sbSelector"]
    Click Element    //a[@href='#Price High-Low']
    
    Sleep    5s    
    Comment   Choose the first tuxedo item 
    Click Element    //img[@class="pmp-hero-img"]    

    Comment   Choose a size 40
    Click Element    //a[@class="sbSelector"]
    Click Element    //a[@href="#40R 33"]  
    
    Comment   Increase the quantity to 2 
    Click Element    //p[text()='+'] 
    
    Comment    Click on Add to Cart and goto cart 
    Click Element    //input[@title="Add To Cart"] 
    Click Element    //a[@title="View Shopping Cart"]   
    
    Comment    Assert to true if the Cart on top menu displays 2



    Comment   Click on checkout 
    # Click Element    //input[@name="Checkout"]   
# #10. click on guest checkout  
    # Click Element    //button[@id="LPGuestCheckout"]      
    
# #11. Click on Continue to payment
    # Click Element    //input[@value="Continue to Payment"]   
    
# #12. validate all the error messages 
    # ${errortxt}    Get Text    //span[@class="errorMsg"]
    # Log To Console    ${errortxt}
    
# #13. Close the browser 
    # Close Browser     