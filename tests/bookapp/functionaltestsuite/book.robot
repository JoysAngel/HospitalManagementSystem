*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${admin_page}   http://127.0.0.1:5000
${admin}    admin
${pass}     9875



*** Test Cases ***
Admin login page
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        close Browser

Admin Add books
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        Add Book
        sleep  1s
        Add Author
        sleep  1s
        Add Category
        sleep  1s
        Add price
        sleep  1s
        Add publisher
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        sleep  1s
        close Browser

Admin View all
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[2]/a
        sleep  1s
        close Browser

Admin Search book
    open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[3]/a
        sleep  1s
        Search book
        sleep  1s
        Click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        Close Browser
#
Admin Edit book
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[4]/a
        sleep  1s
        Edit book
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        edit newBook
        sleep  1s
        edit newAuthor
        sleep  1s
        edit newCategory
        sleep  1s
        edit newprice
        sleep  1s
        edit newpublisher
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        sleep  1s
        close Browser

Admin Delete book
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[5]/a
        sleep  1s
        delete book
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        close Browser

Admin logout
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[6]/a
        sleep  1s
        Close Browser

User Registration
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[4]/td[2]/a
        sleep  1s
        user Add name
        sleep  1s
        user add address
        sleep  1s
        user Add email
        sleep  1s
        user add phone
        sleep  1s
        user Add pass
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        sleep  1s
        close Browser

user login
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[5]/td[2]/a
        sleep  1s
        user log in email
        sleep  1s
        user log in pass
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        Close Browser


Admin Add books
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        admin login
        sleep  1s
        admin pass
        sleep  1s
        click Button    xpath://html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        Add Book
        sleep  1s
        Add Author
        sleep  1s
        Add Category
        sleep  1s
        Add price
        sleep  1s
        Add publisher
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[6]/td[2]/button
        sleep  1s
        close Browser


user view all
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[5]/td[2]/a
        sleep  1s
        user log in email
        sleep  1s
        user log in pass
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[1]/a
        sleep  2s
        Close Browser

user search book
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[5]/td[2]/a
        sleep  1s
        user log in email
        sleep  1s
        user log in pass
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[2]/a
        sleep  1s
        user Search book
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[2]/td[2]/button
        sleep  1s
        close Browser

user log out
        open Browser    ${admin_page}  chrome
        Maximize Browser Window
        click Element  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[5]/td[2]/a
        sleep  1s
        user log in email
        sleep  1s
        user log in pass
        sleep  1s
        click Button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[3]/td[2]/button
        sleep  1s
        click Element  xpath=//html/body/nav[2]/div/div/ul/li[3]/a
        sleep  1s
        close Browser



















*** Keywords ***
admin login
    Input Text  name:uname   ${admin}

admin pass
    Input Text  name:pass   ${pass}

Add Book
    Input Text  name:bname  wheel of time

Add Author
    Input Text  name:author  Robert Jordan

Add Category
    Input Text  name:category  Thriller

Add price
    Input Text  name:price  800

Add publisher
    Input Text  name:publisher  Tor Books

Search book
    Input Text  name:bname  wheel of time

Edit book
    Input Text  name:bname  wheel of time

edit newBook
    Input Text  name:bname  Lord of Rings

edit newAuthor
    Input Text  name:author  J.R.R Tolkien

edit newCategory
    Input Text  name:category  Fantasy

edit newprice
    Input Text  name:price  900

edit newpublisher
    Input Text  name:publisher  Alien

delete book
    Input Text  name:bname  Lord of Rings

user Add name
    Input Text  name:name  Joys Angel M

user add address
    Input Text  name:add  Bangalore

user Add email
    Input Text  name:email  joysangelm@gmail.com

User Add phone
    Input Text  name:phone  345346

user Add pass
    Input Text  name:pass  1234

user log in email
    Input Text  name:email  joysangelm@gmail.com

user log in pass
    Input Text  name:pass   1234

user Search book
    Input Text  name:bname  wheel of time
