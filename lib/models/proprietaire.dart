class Proprietaire {
  final int id;
  final String nom;
  final String prenom;
  final String telephone;
  final bool disposeIfu;
  
  Proprietaire({
    required this.id,
    required this.nom,
    required this.prenom,
    required this.telephone,
    required this.disposeIfu,
  });

  factory Proprietaire.fromJson(Map<String, dynamic> json) => Proprietaire(
    id: json['id'],
    nom: json['nom'],
    prenom: json['prenom'],
    telephone: json['telephone'],
    disposeIfu: json['disposeIfu'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'nom': nom,
    'prenom': prenom,
    'telephone': telephone,
    'disposeIfu': disposeIfu,
  };

}


        // this.id,
        // this.nom,
        // this.prenom,
        // this.telephone,
        // this.disposeIfu,
        // this.maison,

