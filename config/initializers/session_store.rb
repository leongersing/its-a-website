# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_precomp_session',
  :secret      => 'a4d3fafa2df2b36d6f06faf0c0cc4086ec9aa72e0267c8887fc00bcdb1fc267c4dd5cdf96b8d32ad9946df8765a441ea151c54bbe31114459a87cf89f68f1f19'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
