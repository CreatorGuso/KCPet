class Noticia {
  final int id;
  final String name;
  final String image;
  final String descripcion;

  const Noticia({
    required this.id,
    required this.name,
    required this.image,
    required this.descripcion,
  });

  factory Noticia.fromJson(Map<String, dynamic> json) => Noticia(
      id: json["id"],
      name: json["name"],
      image: json["image"],
      descripcion: json["descripcion"]);

  Map<String, dynamic> toJson() =>
      {"id": id, "name": name, "image": image, "descripcion": descripcion};

  Noticia copy() =>
      Noticia(id: id, name: name, image: image, descripcion: descripcion);
}
