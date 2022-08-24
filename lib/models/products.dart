

class Products{
  late String? _name;
  late int _price ;
  late String? _imageUrl;


  Products(this._name,  this._imageUrl,this._price);

  get price => _price;
  get imageUrl => _imageUrl;
   get name => _name;
}

