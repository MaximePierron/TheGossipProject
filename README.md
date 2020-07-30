* Ruby version
2.5.1
* Rails version
5.2.4.3



Alors voici la BDD associée à The Gossip Project:
Je te laisse te référer au fichier ./db/seeds.rb pour voir ce que j'ai créé.
Je suis allé jusqu'à la première couche de commentaires.
Les models sont:

* City (name, zip_code)
* Comment (content, gossip_id, user_id)
* Gossip (title, content, user_id)
* JoinTableTagsGossip (gossip_id, tag_id)
* PrivateMessage (content, recipient_id, sender_id)
* Tag (title)
* User (first_name, last_name, description, email, age)

Les seeds ont été créés avec Faker.


A partir de là je te laisse explorer :) !
