## how to install jenkins(centos7)  
1 rpm -i jenkins-2.150.2-1.1.noarch.rpm  
2 systemctl start jenkins  
## forget admin password  
1 cd var/lib/jenkins/users/cheng_4894661666055967690;vim config.xml  
2 <passwordHash>#jbcrypt:$2a$10$MiIVR0rr/UhQBqT.bBq0QehTiQVqgNpUGyWW2nJObaVAM/2xSQdSq</passwordHash>  
3 login by cheng/123456  
