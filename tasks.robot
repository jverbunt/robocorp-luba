*** Settings ***
Library     RPA.Browser.Selenium
Library    RPA.Robocorp.Vault
Library    Screenshot




*** Tasks ***
Inloggen
    ${secret}=    Get Secret    Luba
    Open Available Browser    https://luba.helloflex.com/user/login    maximized=${TRUE}
    Input Text When Element Is Visible    alias:Email    rjansen@luba.nl
    Input Text When Element Is Visible    alias:Password    ${secret}[password]
    Click Element If Visible    css:[type="submit"]
    Screenshot    filename="/Users/jasper/Documents/Robots/robocorp-luba/output/tets.png"