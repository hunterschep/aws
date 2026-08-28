# Accessing AWS

1. Management Console: Password and MFA
2. AWS CLI: Access keys or temporary credentials
3. AWS SDKs: Access keys or temporary credentials

## Access Keys

- Access key ID + secret access key
- Secret access key is shown only when created
- Never share access keys or commit them to source control
- Prefer temporary role credentials over long-lived access keys

## AWS CloudShell

- Browser-based shell authenticated by the current console session
- AWS CLI and common tools are preinstalled
- No need to configure personal access keys in the shell
- Home-directory storage is persistent within each supported Region
