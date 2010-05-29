# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_reports_session',
  :secret      => 'bcb27e49015fb6c36c88e9a375e3cc86eb3516b53958ee1ea96c081c29272f5de03dcae4b9940ac3bb96acd5fe5d745d64f3bb5676dad9126d5fe4836c3d82bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
