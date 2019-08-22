class Posts{
  // Image directory
  static const String imageDir = 'assets/images';

  // Images
  static const String child = '$imageDir/child.jpg';
  static const String child1 = '$imageDir/child1.jpg';
  static const String child2 = '$imageDir/child2.jpg';
  static const String child3 = '$imageDir/child3.jpg';
  static const String child4 = '$imageDir/child4.jpeg';

  static const String man = '$imageDir/man.jpg';
  static const String man1 = '$imageDir/man1.jpg';
  static const String man2 = '$imageDir/man2.jpg';
  static const String man3 = '$imageDir/man3.jpeg';
  static const String man4 = '$imageDir/man5.jpg';

  static const String model = '$imageDir/model.jpg';
  static const String model1 = '$imageDir/model1.jpg';
  static const String model2 = '$imageDir/model2.jpg';
  static const String model3 = '$imageDir/model3.jpg';
  static const String model4 = '$imageDir/model4.jpg';
  static const String model5 = '$imageDir/model5.jpg';

  // DIFFERENT POST. Single post can contain list of images/videos
  static const List<String> post1 = ['Music.3h','name the Tune',man2];
  static const List<String> post2 = ['Funny.2h','Video Games dont cause violence',man3];
  static const List<String> post3 = ['Awesome.4h','Post',child1];
  static const List<String> post4 = ['Music.3h','name the Tune',man2];
  static const List<String> post5 = ['Funny.2h','Post title',man];
  static const List<String> post6 = ['Funny.2h','Post title',man2];
  static const List<String> post7 = ['Music.3h','name the Tune',child1];
  static const List<String> post8 = ['Funny.2h','Post title',child2];
  static const List<String> post9 = ['Funny.2h','Post title',man2];
  static const List<String> post10 = ['Music.3h','name the Tune',man3];
  static const List<String> post11 = ['Funny.2h','Post title',model3];

  // TOTAL POST. Total posts should be list
  static List<List<String>> postList = [
    post1,
    post2,
    post3,
    post4,
    post5,
    post6,
    post7,
    post8,
    post9,
    post10,
    post11,
  ];
 

  static const List<String> tagList= [
    'Lion King',
    'Once Upon a Time in Hollywood',
    'Margot Robie',
    'Hello'
  ];
}

