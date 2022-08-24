

class Forum {
  final String? _title;
  final String? _description;
  final String? _imageUrl;
  final int _ForumLikes;
  final int _ForumComments;

  Forum(this._title, this._description, this._imageUrl, this._ForumLikes, this._ForumComments);

   get imageUrl => _imageUrl;

   get description => _description;

   get title => _title;

   get ForumComments => _ForumComments;

   get ForumLikes => _ForumLikes;


}

class UserForumInfo {
  final String? _firstName;
  final String? _lastName;
  final String? _imageUrl;

  UserForumInfo(this._firstName, this._lastName, this._imageUrl);

    get imageUrl => _imageUrl;

   get lastName => _lastName;

   get firstName => _firstName;
}