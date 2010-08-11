# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_daibatsu_session',
  :secret      => '0d189aa3f64829727744cf4fa3c86833b04865ecf3cf9156ad38df007f8af94f8f67d524e70df6692994077670f938a573f0a9e60d15eaee7602fcbdedfc078f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
