class ntp::service(
  String $service_name        = $ntp::service_name,
  String $service_ensure      = $ntp::service_ensure,
  Boolean $service_enable     = $ntp::service_enable,
  Boolean $service_hasstatus  = $ntp::service_hasstatus,
  Boolean $servcie_hasrestart = $ntp::service_hasrestart,
) {
  service { 'ntp':
    ensure  => $service_ensure,
    enable  => $service_enable,
    name    => $service_name,
    status  => $service_hasstatus,
    restart => $service_hasrestart,
  }
}
