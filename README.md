# terraform-consul-base

This module is a collection of base policies that are useful for your
Consul deployment.  The module contains a mechanism to enable
capabilities on the anonymous token which should allow you to ease
into Consul ACLs gently, rather than needing to ensure that every
service works with ACLs in your initial deployment.
