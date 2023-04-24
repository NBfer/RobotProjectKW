*** Settings ***
Library    ../testData/readdata.py    

*** Keywords ***
lire nombre ligne
    [Arguments]    ${sheetname}
    ${max_row}=    recuperer_max_ligne    ${sheetname}
    [Return]    ${max_row}
    
lire nombre colonne
    [Arguments]    ${sheetname}
    ${max_col}=    recuperer_max_colonne    ${sheetname}
    [Return]    ${max_col}

lire donnees cellule
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${cell_data}=    recuperer_donnees_cellules    ${sheetname}    ${row}    ${cell}
    [Return]    ${cell_data}

