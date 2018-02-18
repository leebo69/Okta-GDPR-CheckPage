# Okta-GDPR-CheckPage
Intermediate page after login to check and allow users to Opt-In to GDPR.
You will need a OktaPreview org for this code.
You will need to add a custom Okta UD profile object called optin setup as a boolean value. This needs to be a UD mastered with Read/Write for users.
This code will check the status of the optin profile object and if true will login or if false, prompt user to accept GDPR.
You need to update the <> entries in the login, postlogin, saveoptin files.
THis is a rough project to serve as a base level solution for user GDPR opt-in.
