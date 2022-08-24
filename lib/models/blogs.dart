class Blog{
  final String _name;
  final String _description;
  final String _imageUrl;
  final int _waterCapacity;
  final int _sunLight;
  final int _temperature;

  Blog(this._name, this._description, this._imageUrl, this._waterCapacity,
      this._sunLight, this._temperature);

  int get temperature => _temperature;

  int get sunLight => _sunLight;

  int get waterCapacity => _waterCapacity;

  String get imageUrl => _imageUrl;

  String get description => _description;

  String get name => _name;
}