*** Settings ***
Library    SeleniumLibrary    
Resource    ../resources/resource01.robot

*** Test cases ***
tc01
   # Open Browser    https://www.google.ca/    gc  
   ${ligne}    lire nombre ligne    data
   ${colonne}    lire nombre colonne    data
   ${cellule}    lire donnees cellule    data    3    2
   Log    le max de ligne est : ${ligne}
   Log    le max de colonne est : ${colonne}
   Log    la cellule est : ${cellule}  

tc02
    ${url}    lire donnees cellule    opencart    2    1
    ${username}    lire donnees cellule    opencart    2    2
    ${password}    lire donnees cellule    opencart    2    3
    Open Browser    ${url}    gc     
    Maximize Browser Window
    Input Text    id:input-username    ${username}
    Input Password    id:input-password    ${password}
    Sleep    2
    Click Button    xpath://button 
    Sleep    5
    Close Browser

tc03
    ${url}    lire donnees cellule    opencart    2    1
    ${lignes}    lire nombre ligne    opencart    
    FOR    ${i}    IN RANGE    3    ${lignes}+1
      ${username}    lire donnees cellule    opencart    ${i}    2
      ${password}    lire donnees cellule    opencart    ${i}    3
      Open Browser    ${url}    gc     
      Maximize Browser Window
      Input Text    id:input-username    ${username}
      Input Password    id:input-password    ${password}
      Sleep    2
      Click Button    xpath://button 
      Element Should Be Visible    id:alert
      Sleep    5
      Close Browser   
    END
       