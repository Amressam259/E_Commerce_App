class HomeModel
{
  String name;
  String image;

  HomeModel({
    this.name,
    this.image,
});

  HomeModel.fromJson(Map<String, dynamic> map)
  {
    name = map['name'];
    name = map['image'];
  }

  toMap()
  {
    return {
      'name' : name,
      'image' : image
    };
  }
}