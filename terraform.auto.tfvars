common_vm_specs = {
  virt_hypervisor_type = "ESXi"
  vm_adaptor_type      = "vmxnet3"
  vm_template_path     = "/RMLAB/vm/Templates/tf-centos7"
  vc_datacenter        = "RMLAB"
  vc_datastore         = "JOHNNY01_DATASTORE01"
  vc_cluster           = "RMLAB - Workloads"
  vm_folder            = "/RMLAB/vm/sgioia"
  vc_network           = "192.168.130"
}

vms = {
  frontend = {
    quantity   = 2
    vCPU        = 2
    vMEM        = 4096
    vmname      = "frontend"
    datastore   = "JOHNNY01_DATASTORE01"
    network     = "192.168.130"
    hostname    = "frontend"
    domain_name = "rmlab.local"
    ssh_key     = ""
  }
  backend = {
    quantity   = 3
    vCPU        = 4
    vMEM        = 8192
    vmname      = "backend"
    datastore   = "JOHNNY01_DATASTORE01"
    network     = "192.168.130"
    hostname    = "backend"
    domain_name = "rmlab.local"
    ssh_key     = ""
  }
  loadbalancer = {
    quantity   = 1
    vCPU        = 2
    vMEM        = 4096
    vmname      = "loadbalancer"
    datastore   = "JOHNNY01_DATASTORE01"
    network     = "192.168.130"
    hostname    = "loadbalancer"
    domain_name = "rmlab.local"
    ssh_key     = ""
  }
}