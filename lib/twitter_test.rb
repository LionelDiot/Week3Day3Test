require 'pry'
require 'twitter'
require 'dotenv'# Appelle la gem Dotenv
Dotenv.load('.env') # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)

def login_twitter    # quelques lignes qui appellent les clés d'API de ton fichier .env
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end
#require 'pry'
# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet automatisé en Ruby ?!')

