use DBProject
CREATE LOGIN tarun WITH PASSWORD = 'tarun';
 GO
CREATE USER tarun FOR LOGIN tarun
 
 GRANT Select ON Earthquake To tarun

 GRANT ALL ON earthquake to tarun

 revoke select on earthquake from tarun

