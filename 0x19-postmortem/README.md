https://medium.com/@nginikaugochukwu/post-mortem-issue-with-nginx-47623be9662d
ISSUE SUMMARY
Duration of outage: 3rd of April, 2023. 6:00am WAT till 6th of April, 2023. 4:32pm 
Impact: The web server was down and not receiving requests. All requests were sent to the other servers.
Root cause: Nginx was not listening on port 80
Resolution: edited the nginx configuration file correctly to listen on port 80.
TIMELINE
3rd of April,2023. 6:00am – Issue detected. A monitoring alert was received.
5th of April, 2023. 3:39pm – using netstat tool to check if nginx was listening on port 80, checking permissions of the firewall.
5th of April, 2023. 2:58pm – disabled firewall and re-enabled it. Restart nginx
6th of April, 2023. 3:08pm – discovered nginx was not listening on port 80
6th of April, 2023. 4:02pm – edited nginx.conf file and corrected the listening port.
6th of April, 2023. 4:20pm – restarted nginx. Incident was resolved.
PREVENTIVE MEASURE
Make the config file a read only file except with super user privileges
CORRECTIVE MEASURE
Created a bash script to correct the error once run on the nginx server.
