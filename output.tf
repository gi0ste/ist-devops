output "loadbalancer" {
  value = [module.loadbalancers.*.server_name,module.loadbalancers.*.server_ip]
}
output "frontend" {
  value = [module.frontend.*.server_name,module.frontend.*.server_ip]
}
output "backend" {
  value = [module.backend.*.server_name, module.backend.*.server_ip]
}

output servers {
    value = tomap({
        for k, v in module.loadbalancers.*.server_name : k => module.loadbalancers.*.server_name})
}