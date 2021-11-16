class Casa {
  String imagenUrl;
  String direccion;
  String descripcion;
  double precio;
  int dormitorios;
  int banios;
  double m2;
  int parqueos;
  int tiempo;
  List<String> carrucelImagenesUrl;
  bool esfavorito;

  Casa({
    this.imagenUrl,
    this.direccion,
    this.descripcion,
    this.precio,
    this.banios,
    this.dormitorios,
    this.m2,
    this.parqueos,
    this.tiempo,
    this.carrucelImagenesUrl,
    this.esfavorito,
  });
}
