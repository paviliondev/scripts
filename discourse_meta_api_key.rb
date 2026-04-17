#!/usr/bin/env ruby

require 'openssl'
require 'sshkey'
require 'securerandom'
require 'uri'

uri = URI.parse('https://meta.discourse.org/user-api-key/new')
key = SSHKey.generate
localhost = "https://api.discourse.org/api/auth_redirect"

params = {
  public_key: key.public_key,
  nonce: SecureRandom.hex(16),
  client_id: SecureRandom.hex(32),
  auth_redirect: localhost,
  application_name: "Angus",
  scopes: "write"
}

uri.query = URI.encode_www_form( params )

puts uri.to_s
puts key.private_key