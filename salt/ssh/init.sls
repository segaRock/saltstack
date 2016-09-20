tighten_ssh:
  file.managed:
    - name: /ets/ssh/sshd_config
    - source: salt://ssh/files/sshd_config

restart_ssh:
  service.running:
    - name: ssh
    - enable: Ture
    - watch:
      - file: /etc/ssh/sshd_config
