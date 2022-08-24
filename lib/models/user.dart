
class User {
  final String? _firstName;
  final String? _lastName;
  final String? _imageUrl;
  final String? _userPoints;


  User(this._firstName, this._lastName, this._imageUrl, this._userPoints);

   get imageUrl => _imageUrl;

   get lastName => _lastName;

   get firstName => _firstName;

   get userPoints => _userPoints;
}