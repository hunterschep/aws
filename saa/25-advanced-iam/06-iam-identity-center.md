# AWS IAM Identity Center

Workforce single sign-on to AWS accounts and supported applications

- Organization instance: Central access across accounts in AWS Organizations
- Identity source: Built-in directory, Microsoft AD, or external IdP
- External federation uses SAML 2.0; SCIM can provision users / groups
- Assign users / groups to accounts with permission sets
- Permission sets provision IAM roles and policies in target accounts
- Users choose authorized account / role access through the portal or CLI
- Uses temporary credentials; not a separate IAM user in every account
