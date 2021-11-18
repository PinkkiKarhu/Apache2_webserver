/etc/httpd/extra/httpd-vhosts.conf:
  file.managed:
    - source: salt://webserver/httpd-vhosts.conf

apache:
  pkg.installed: []
  service.running:
    - require:
      - pkg: apache

/var/www/index.html:                        
  file:                                     
    - managed                               
    - source: salt://webserver/index.html   
    - require:                             
      - pkg: apache                   
