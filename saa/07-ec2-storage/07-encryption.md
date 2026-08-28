# EBS Encryption 

When you create an encrypted EBS volume: 
- Data at rest is encrypted 
- All the data in flight is encrypted 
- All snapshots are encrypted 

EBS encryption leverages AES-256 

How to encrypt: 
1. Create snapshot 
2. Encrypt snapshot 
3. Create new EBS volume from snapshot 
4. Attach encrypted volume to original instance 