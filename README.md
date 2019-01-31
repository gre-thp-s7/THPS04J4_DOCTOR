![La montagne](http://informations-documents.com/coloriages.dessins/coloriages/coloriage_montagne4.jpg)
   ## Team Grenoble

### Clone notre repo et c'est parti !

- Postionne toi dans le dossier,
- Bundle install
- rails db:migrate:status # Tu verras que les tables sont créées,
- rails db:migrate # Ça migre au calme,
- rails db:migrate:status # Check de la migration,
- rails db:seed
- rails console,
- Balade toi dans la BDD !

- Quelques idées de tests :
• Doctor.all.sample.first_name # prénom d'un toubib pris au hasard
• tp Patient.all # la liste de tous les patients
• tp Patient.all.sample.appointments # la liste des rdv pour un patient pris au hazard
• tp City.all # liste des villes
• tp City.all.sample.doctors.sample.patients # liste des patients d'un docteur dans une ville (peut retourner une erreur si le docteur en question n'a pas de patients !)
• tp Doctor.all.sample.city # Ville d'un docteur
• tp Speciality.all.sample.doctors # Tous les docteurs d'une spécialité
• tp Doctor.all.sample.patients # tous les patients d'un docteur

### La TEAM !

- Maxime
- Quentin
- Yannis
- Charles
- Guillaume
