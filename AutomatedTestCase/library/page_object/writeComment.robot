*** Settings ***
Documentation       Example Gherkin Style Test
Library             SeleniumLibrary
Library             Collections
Library             String
Library             ${EXECDIR}/settings.py



*** Variables ***
${Sign_In_TAB}          //a[text()="Sign in"]
${Username_Field}       //input[@type="text"]
${Password_Field}       //input[@type="password"]
${Sign_In_BTN}          //button[text()=" Sign in "]
${Global_Feed}          //a[text()="Global Feed"]
${Article}              //h1[text()="New Article"]
${Write_Comment_TXT}    //textarea
${Post_Comment_BTN}     //button[text()=" Post Comment "]
${Comment_Checking}     //p[@class="card-text"][1]

*** Keywords ***
Teardown Actions
    Run Keyword clear

I logged into BBlog website as a user
    [Arguments]  ${username}  ${password}
    Open Browser    https://candidatex:qa-is-cool@qa-task.backbasecloud.com    googlechrome
    Set Selenium Implicit Wait  20
    Set Selenium Implicit Wait  20
    Wait Until Element Is Visible       xpath:${Sign_In_TAB}        20
    Click Element                       xpath:${Sign_In_TAB}
    Wait Until Element Is Visible       xpath:${Username_Field}     20
    Input Text                          xpath:${Username_Field}     ${username}
    Input Text                          xpath:${Password_Field}     ${password}
    wait_for    1
    Click Element                       xpath:${Sign_In_BTN}

I choose a specific article
    Wait Until Element Is Visible       xpath:${Global_Feed}        20
    Click Element                       xpath:${Global_Feed}
    Wait Until Element Is Visible       xpath:${Article}     20
    Click Element                       xpath:${Article}

I wrote a comment
    [Arguments]  ${Global_random_comment}
    Click Element                       xpath:${Write_Comment_TXT}
    Input Text                          xpath:${Write_Comment_TXT}  ${Global_random_comment}

I click the Post Comment button
    Wait Until Element Is Visible       xpath:${Post_Comment_BTN}        20
    wait_for    1
    Click Element                       xpath:${Post_Comment_BTN}

I’m able to see my comment posted
    Wait Until Element Is Visible       xpath:${Comment_Checking}        20
    wait_for    1
    ${Get_Comment}=    Get Text         xpath:${Comment_Checking}
    should be equal as strings          ${Get_Comment}       ${Global_random_comment}
    [Teardown]    Close All Browsers


