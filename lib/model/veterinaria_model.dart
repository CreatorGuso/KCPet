class Veterinaria {
  final int id;
  final String name;
  final String image;
  final String descripcion;

  const Veterinaria({
    required this.id,
    required this.name,
    required this.image,
    required this.descripcion,
  });

  factory Veterinaria.fromJson(Map<String, dynamic> json) => Veterinaria(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      descripcion: json["descripcion"]);

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "image": image, "descripcion": descripcion};

  Veterinaria copy() =>
      Veterinaria(id: id, name: name, image: image, descripcion: descripcion);
}
