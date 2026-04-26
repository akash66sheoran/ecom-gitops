{{/*
Chart name
*/}}
{{- define "ecom.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Chart fullname
*/}}
{{- define "ecom.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Chart label
*/}}
{{- define "ecom.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "ecom.labels" -}}
helm.sh/chart: {{ include "ecom.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: ecom
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Frontend fullname
*/}}
{{- define "ecom.frontend.fullname" -}}
{{- printf "%s-frontend" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Backend fullname
*/}}
{{- define "ecom.backend.fullname" -}}
{{- printf "%s-backend" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Frontend service
*/}}
{{- define "ecom.frontend.service" -}}
{{- printf "%s-frontend-svc" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Backend service
*/}}
{{- define "ecom.backend.service" -}}
{{- printf "%s-backend-svc" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}