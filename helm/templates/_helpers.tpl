{{/*
Return the chart name
*/}}
{{- define "ecom.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Return the full release name
*/}}
{{- define "ecom.fullname" -}}
{{- .Release.Name -}}-{{ .Chart.Name }}
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
{{- end -}}
{{- .Release.Name }}-backend
{{- end -}}

{{/*
Frontend service name
*/}}
{{- define "ecom.frontend.service" -}}
{{- .Release.Name }}-frontend-svc
{{- end -}}

{{/*
Backend service name
*/}}
{{- define "ecom.backend.service" -}}
{{- .Release.Name }}-backend-svc
{{- end -}}