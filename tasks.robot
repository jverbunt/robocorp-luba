*** Settings ***
Library     RPA.Browser.Selenium
Library     RPA.Robocorp.Vault



*** Tasks ***
Inloggen
    ${secret}=    Get Secret    Luba
    Open Available Browser    https://luba.helloflex.com/user/login    maximized=${TRUE}
    Input Text When Element Is Visible    alias:Password    ${secret}[password]
    i
    ${return_value}=    Execute Javascript
    FOR    ${io}
        Input Text When Element Is Visible    alias:Email    rjansen@luba.nl
    END
