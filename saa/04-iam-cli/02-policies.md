# Policies 

- Group with group policy: Applied to every member of group 
- Inline policies: Only attached to a user 


## Policy structure 

1. Version: Policy language version 
2. Id: An identifier for the policy 
3. Statement: One or multiple 
* Sid: Statement ID 
* Effect: Whether it allows odenies 
* Principal: Which account/group/role does this apply to 
* Action: List of API calls allowed or denied 
* Resource: List of resources this applies to 


## Overview 
- Policies define:
* WHO can do WHAT and on WHAT resource 
- Policies can be managed by AWS OR created by you 
- Policies can be applied directly to a user OR to a group 
- Users inherit any policies in their group(s)
