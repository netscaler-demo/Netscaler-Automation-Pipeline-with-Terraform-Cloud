# resource "citrixadc_nsfeature" "tf_nsfeature" {
#     cs = true
#     lb = true
# }

# resource "citrixadc_nsip" "snip" {
#   ipaddress = "10.11.2.4"
#   type      = "SNIP"
#   netmask   = "255.255.255.0"
# }

# resource "citrixadc_lbvserver" "tf_lbvserver1" {
#   name        = "tf_lbvserver1"
#   servicetype = "HTTP"
# }

# resource "citrixadc_service" "web-server-red" {
#   name        = "web-server-red"
#   port        = 80
#   ip          = "20.118.26.84"
#   servicetype = "HTTP"
# }

# resource "citrixadc_lbvserver_service_binding" "lb_binding1" {
#   name        = citrixadc_lbvserver.tf_lbvserver1.name
#   servicename = citrixadc_service.web-server-red.name
# }

# resource "citrixadc_csaction" "tf_csaction1" {
#   name            = "tf_csaction1"
#   targetlbvserver = citrixadc_lbvserver.tf_lbvserver1.name
# }
# resource "citrixadc_cspolicy" "tf_policy_red" {
#   policyname = "tf_policy_red"
#   rule       = "HTTP.REQ.URL.SET_TEXT_MODE(IGNORECASE).STARTSWITH(\"/red\")"
#   action     = citrixadc_csaction.tf_csaction1.name
# }


# resource "citrixadc_csvserver" "tf_csvserver" {
#   ipv46       = "10.11.1.4"
#   name        = "tf_csvserver"
#   port        = 80
#   servicetype = "HTTP"
# }

# resource "citrixadc_csvserver_cspolicy_binding" "tf_csvscspolbind_red" {
#   name       = citrixadc_csvserver.tf_csvserver.name
#   policyname = citrixadc_cspolicy.tf_policy_red.policyname
#   priority   = 100
# }




# resource "citrixadc_lbvserver" "tf_lbvserver2" {
#   name        = "tf_lbvserver2"
#   servicetype = "HTTP"
# }

# resource "citrixadc_service" "web-server-green" {
#   name        = "web-server-green"
#   port        = 80
#   ip          = "20.118.26.73"
#   servicetype = "HTTP"
# }

# resource "citrixadc_lbvserver_service_binding" "lb_binding2" {
#   name        = citrixadc_lbvserver.tf_lbvserver2.name
#   servicename = citrixadc_service.web-server-green.name
# }


# resource "citrixadc_csaction" "tf_csaction2" {
#   name            = "tf_csaction2"
#   targetlbvserver = citrixadc_lbvserver.tf_lbvserver2.name
# }
# resource "citrixadc_cspolicy" "tf_policy_green" {
#   policyname = "tf_policy_green"
#   rule       = "HTTP.REQ.URL.SET_TEXT_MODE(IGNORECASE).STARTSWITH(\"/green\")"
#   action     = citrixadc_csaction.tf_csaction2.name
# }

# resource "citrixadc_csvserver_cspolicy_binding" "tf_csvscspolbind_green" {
#   name       = citrixadc_csvserver.tf_csvserver.name
#   policyname = citrixadc_cspolicy.tf_policy_green.policyname
#   priority   = 110
# }