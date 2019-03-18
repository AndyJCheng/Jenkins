## how to install jenkins(centos7)  
1 rpm -i jenkins-2.150.2-1.1.noarch.rpm  
2 systemctl start jenkins  
## forget admin password  
1 cd var/lib/jenkins/users/cheng_4894661666055967690;vim config.xml  
2 <passwordHash>#jbcrypt:$2a$10$MiIVR0rr/UhQBqT.bBq0QehTiQVqgNpUGyWW2nJObaVAM/2xSQdSq</passwordHash>  
3 login by cheng/123456  
## what is Jenkins Pipeline  
持续交付（CD）管道是将软件从版本控制直接传递给用户和客户的过程的自动表达，Jenkins Pipeline是一套插件， 
在Jenkins中实现和集成持续交付管道。 
