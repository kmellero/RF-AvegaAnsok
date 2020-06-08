*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${JobbaHere}  xpath://a[@class='button icon-arrow-right icon--after button--ghost']
${SpontanAnsok}  xpath://a[@class='button icon-arrow-right icon--after button--ghost']
${AnsokNu}  xpath://a[@class='btn btn-huge btn-success btn-embossed btn-block mbl']//span[@class='placeholder'][contains(text(),'Ansök nu')]
${FristNameBox}  xpath://input[@id='id_first_name']
${LastNameBox}  xpath://input[@id='id_last_name']
${EPostBox}  xpath://input[@id='id_email']
${TelefonnummerBox}  xpath://*[@id="div_id_phone_number"]/div/div/input   #xpath://input[@placeholder='70 123 45 67']
${MeddelandeBox}  xpath://textarea[@id='id_message']
${CVUppload}  xpath://input[@id='id_cv']
${JobLocCheckBox}  xpath://*[@id="id_job_question_1660_1_1"]  #xpath://label[contains(text(),'Stockholm')]
${IntegrityBox}  xpath://*[@id="id_terms"]  #xpath://input[@id='id_terms']
${Skicka}  xpath://input[@id='submit-id-submit']
${filePath}  C:\\Users\\kajetanmellerowicz\\package.json

${Spontanansokanheader}  //p[@class='lead']
&{Form}  fn=Jan  ln=Havel  ep=abc@yahoo.com  tn=778990979  ms=Thanks for considering

*** Keywords ***
Click on Jobba har
    Click Element  ${JobbaHere}
    Sleep  5s
    Page Should Contain  Vill du bli en av oss

Click on Spontanansok and Ansok nu
    Click Element  ${SpontanAnsok}
    Sleep  5s
    Click Element  ${AnsokNu}
    Sleep  5s

Fill the form
    Page Should Contain  Spontanansökan - Stockholm, Göteborg och Malmö
    Input Text  ${FristNameBox}  ${Form.fn}
    Input Text  ${LastNameBox}  ${Form.ln}
    Input Text  ${EPostBox}  ${Form.ep}
    Input Text  ${TelefonnummerBox}  ${Form.tn}
    Input Text  ${MeddelandeBox}  ${Form.ms}
    Scroll Element Into View  ${JobLocCheckBox}
    Select Checkbox  ${JobLocCheckBox}
#    Mouse Over  ${JobLocCheckBox}
#    Click element  ${JobLocCheckBox}
    Scroll Element Into View  ${IntegrityBox}
    Select Checkbox  ${IntegrityBox}
#    Mouse Over  ${IntegrityBox}
#    Click element  ${IntegrityBox}
    Mouse Over  ${CVUppload}
    Choose File  ${CVUppload}  ${filePath}
Send the form
    Mouse Over  ${Skicka}  [Return]