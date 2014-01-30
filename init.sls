td-agent-pkgrepo:
     pkgrepo.managed:
        - humanname: FluentD treasure PPA
        - name: deb http://packages.treasure-data.com/precise/ precise contrib
        - key_url: http://packages.treasure-data.com/debian/RPM-GPG-KEY-td-agent
        - file: /etc/apt/sources.list.d/treasure-data.list
        - refresh: True
        - require_in:
            - pkg: td-agent

td-agent:
     pkg:
        - installed
        - refresh: True
        - require:
            - pkgrepo: 
                td-agent-pkgrepo
    
