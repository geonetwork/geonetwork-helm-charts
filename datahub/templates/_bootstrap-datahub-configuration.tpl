{{- define "datahub.bootstrap_datahub_configuration" -}}
- name: bootstrap-datahub-configuration
  image: bitnami/git
  command:
  - /bin/sh
  - -c
  - {{- if .Values.configuration.git.ssh_secret }}
    mkdir -p /root/.ssh ;
    cp /ssh-secret/ssh-privatekey /root/.ssh/id_rsa ;
    chmod 0600 /root/.ssh/id_rsa ;
    {{- end }}
    if [ ! -f /etc/datahub/default.properties ] ; then
      git clone --depth 1 --single-branch {{ .Values.configuration.git.url }} -b {{ .Values.configuration.git.ref }} /etc/datahub ;
    fi ;
  {{- if .Values.configuration.git.ssh_secret }}
  env:
    - name: GIT_SSH_COMMAND
      value: ssh -o "IdentitiesOnly=yes" -o "StrictHostKeyChecking no"
  {{- end }}
  volumeMounts:
  - mountPath: /etc/datahub
    name: datahub-configuration
  {{- if .Values.configuration.git.ssh_secret }}
  - mountPath: /ssh-secret
    name: ssh-secret
  {{- end }}
{{- end -}}
