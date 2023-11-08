resource "citrixadc_lbvserver" "tfc_lbvserver" {
  ipv46       = "10.10.10.30"
  name        = "tfc_lbvserver"
  port        = 80
  servicetype = "HTTP"
}

resource "citrixadc_service" "tfc_service" {
  name        = "tfc_service"
  ip          = "192.168.43.30"
  servicetype = "HTTP"
  port        = 80
}

resource "citrixadc_lbvserver_service_binding" "tfc_binding" {
  name        = citrixadc_lbvserver.tfc_lbvserver.name
  servicename = citrixadc_service.tfc_service.name
  weight      = 20
}
