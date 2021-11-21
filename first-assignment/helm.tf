resource "helm_release" "this" {
  name       = "airflow-test"

  namespace  = "default"

  repository = "https://airflow.apache.org"
  chart      = "airflow"
  version    = "1.3.0"
}
