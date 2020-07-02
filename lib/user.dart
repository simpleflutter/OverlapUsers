class User {
  final String name;
  final String image;
  final bool isActive;

  User({this.name, this.image, this.isActive});
}

List<User> getUsersformServer() {
  List<User> users = [
    User(name: 'Shrin', image: 'images/face1.jpg', isActive: true),
    User(name: 'Alex', image: 'images/face2.jpg', isActive: true),
    User(name: 'Arpita', image: 'images/face3.jpg', isActive: false),
    User(name: 'Govind',  isActive: true),
    User(name: 'Nidhi', image: 'images/face4.jpg', isActive: true),
    User(name: 'James', image: 'images/face5.jpg', isActive: false),
    User(name: 'Sachin', image: 'images/face6.jpg' , isActive: false),
    User(name: 'Arvind', isActive: true),
    User(name: 'Pratik', image: 'images/face7.jpg', isActive: false),
    User(name: 'Pranita', image: 'images/face8.jpg', isActive: true),
    User(name: 'Nirarika', image: 'images/face9.jpg', isActive: false),
    User(name: 'Akansha',  isActive: true),
    User(name: 'Abhishekh', image: 'images/face10.jpg', isActive: true),
  ];

  return users;
}
