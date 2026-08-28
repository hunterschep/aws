# Amazon Machine Image 

A custom software configuration of an EC2 instance. User configured or Amazon configured. 
* Public AMI: Amazon Linux 2023 for example 
* You own AMI: Make and maintain yourself 


### AMI Process 
1. Start an EC2 instance
2. Customize it 
3. Stop instance 
4. Build an AMI and create EBS snapshots 
5. Launch instances from other AMIs 

Power of AMIs: Do one big install then package it as an AMI -> Makes spinning up new instances much faster! 