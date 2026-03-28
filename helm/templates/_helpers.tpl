{{/*
Chart name
*/}}
{{- define "ecom.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Full release name
*/}}
{{- define "ecom.fullname" -}}
{{- .Release.Name }}-{{ .Chart.Name }}
{{- end -}}

{{/*
Frontend fullname
*/}}
{{- define "ecom.frontend.fullname" -}}
{{- .Release.Name }}-frontend
{{- end -}}

{{/*
Backend fullname
*/}}
{{- define "ecom.backend.fullname" -}}
{{- .Release.Name }}-backend
{{- end -}}

{{/*
Frontend service
*/}}
{{- define "ecom.frontend.service" -}}
{{- .Release.Name }}-frontend-svc
{{- end -}}

{{/*
Backend service
*/}}
{{- define "ecom.backend.service" -}}
{{- .Release.Name }}-backend-svc
{{- end -}}