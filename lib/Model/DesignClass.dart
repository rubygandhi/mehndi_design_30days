import 'package:mehndi_design/Screen/HomeScreen.dart';

class MehndiDesign {
  String name;
  String image;
  String ingredients;
  String artist;

  MehndiDesign({this.image, this.name, this.ingredients, this.artist});
}
//List<int> inList=[1,2,3,4];
//Design d1,d2,d3;

List<MehndiDesign> DesignList = [
  MehndiDesign(
    name: "Bridal Design",
    image:
        "https://www.mehndidesigner.com/wp-content/uploads/2019/08/full-hands-and-feet.jpg",
    ingredients: "organic Henna, Palm oil",
    artist:
        '''The best trait of our artists lies in their experience. Each artist possesses an experience of over 28 years. their strength lies in the capability to make latest mehandi designs. Expertise in bridal mehandi is our
USP. The designs are promised to be new and in sync with latest fashion, as they are not copied from any reference book.''',
  ),
  MehndiDesign(
    name: "Festival Design",
    image:
        "https://i.pinimg.com/originals/62/66/19/626619688629726e79c66c12d0b70f2f.jpg",
    ingredients: "organic Henna, oil",
    artist:
        '''The best trait of our artists lies in their experience. Each artist possesses an experience of over 28 years. their strength lies in the capability to make latest mehandi designs. Expertise in bridal mehandi is our
USP. The designs are promised to be new and in sync with latest fashion, as they are not copied from any reference book.''',
  ),
  MehndiDesign(
    name: "Stylish Mehndi",
    image:
        "https://thehandmadecraft.in/wp-content/uploads/2020/01/14-5-780x450.jpg",
    ingredients: "organic Henna, oil",
    artist:
        '''The best trait of our artists lies in their experience. Each artist possesses an experience of over 28 years. their strength lies in the capability to make latest mehandi designs. Expertise in bridal mehandi is our
USP. The designs are promised to be new and in sync with latest fashion, as they are not copied from any reference book.''',
  ),
  MehndiDesign(
    name: "Feet Mehndi",
    image:
        "https://www.k4fashion.com/wp-content/uploads/2020/02/Unique-Mehndi-Designs-for-Feet-9.jpg",
    ingredients: "organic Henna, oil",
    artist:
        '''The best trait of our artists lies in their experience. Each artist possesses an experience of over 28 years. their strength lies in the capability to make latest mehandi designs. Expertise in bridal mehandi is our
USP. The designs are promised to be new and in sync with latest fashion, as they are not copied from any reference book.''',
  )
];

class Category {
  String name;
  Category({this.name});
}

List<Category> categoryList = [
  Category(name: "Bridal Mehndi"),
  Category(name: "Festival Mehndi"),
  Category(name: "Stylish Mehndi"),
  Category(name: "Feet Mehndi"),
];
