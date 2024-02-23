# 
# Welcome to GDB Online.


# appel à l'API de modération
def filtrer_contenu(contenu)
  # Appel à l'API ici (vous devez obtenir une clé d'accès)
api_url = "https://moderation.logora.fr"

# Requête HTTP POST
uri = URI(api_url)
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Post.new(uri.path, { 'Content-Type' => 'application/json' })


request.body = { text: "Contenu à modérer" }.to_json

# La requête à l'API
response = http.request(request)
api_resultat = result["clé API"]

  if api_resultat == "rejeté"
    puts "Contenu inapproprié !"
    # Faites quelque chose pour filtrer ou supprimer le contenu
  else
    puts "Contenu approprié"
  end
end

# Utilisation de la méthode
filtrer_contenu("Ce message contient des insultes !")
