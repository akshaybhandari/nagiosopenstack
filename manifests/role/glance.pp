class nagiosopenstack::role::glance inherits ::nagiosopenstack::role {
  class { 'nagiosopenstack::profile::nrpeserver': } ->
  class { 'nagiosbase': } ->
  class { 'nagiosglance':
    service_list => $::nagiosopenstack::config::openstack_glance_service_list,
  }
}
