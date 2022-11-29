class student {
  String _name;
  String _id;
  String _mark;

  bool fav = false;


  student(this._name, this._id,this._mark );

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
  String get mark => _mark;

  set mark(String value) {
    _mark = value;
  }


  @override
  String toString() {
    return 'Name: $_name\nId: $_id\nmark:$_mark ';
  }


}