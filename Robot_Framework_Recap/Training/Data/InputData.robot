
*** Variables ***
# Configuration
${BROWSER} =  gc
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV}    D:\\Git\\github\\Robot_Framework_Recap\\Robot_Framework_Recap\\Data\\Users.csv

# Input Data
#&{UNREGISTERED_USER}  Email=admin@robotframeworktutorial.com  Password=TestPassword!  ExpectedErrorMessage=You haven't signed up yet. Try a different email address or
#&{INVALID_PASSWORD_USER}  Email=demo@demo.com  Password=TestPassword!  ExpectedErrorMessage=Please double check your password. It should be 6 or more characters with no spaces. If you don't remember it, you can
#&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Please enter your email address and password.