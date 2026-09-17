# AWS Directory Service

Microsoft Active Directory (AD): Central identities, authentication, and group policies

- Stores users, computers, groups, and other directory objects
- Domain controllers authenticate users / computers
- Domains form trees; related trees form a forest

## AWS Managed Microsoft AD

- Actual Microsoft AD managed by AWS
- Create / manage directory users with standard AD tools
- Trust relationships can connect to an existing on-premises AD
- Use for Windows workloads needing full AD features

## AD Connector

- Proxy authentication requests to existing on-premises AD
- Users remain managed on-premises; no user directory replication into AWS
- Requires connectivity to the on-premises domain controllers

## Simple AD

- Standalone, Samba-based directory with basic AD compatibility
- Lower-cost option for simple directory needs
- No trust relationships with on-premises AD
