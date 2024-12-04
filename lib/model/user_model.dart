
class UserModel{
  final String name;
  final String userImage;
  final  String bio;
  final String location;
  final List<String> urlImages;
  final int countFollowers;
  final int countFollowing, countPosts;
   bool isFollowing;

   UserModel({
     required this.name,
    required this.bio,
    required this.countFollowers,
    required this.countFollowing,
    required this.countPosts,
    required this.isFollowing,
    required this.location,
    required this.urlImages,
    required this.userImage,

  });


}
final  users=<UserModel>[
  UserModel(
      name: "steve jobs",
      bio: "Steve jobs was an American business manage , industry designer investor"
          ", and media proprietor ",
      countFollowers: 1800,
      countFollowing: 510,
      countPosts: 118,
      isFollowing: false,
      location:"United states",
      urlImages: [
        "assets/images/steve-jobs-apple-tv.webp",
        "assets/images/Steve-Jobs.jpg"
      ],
      userImage: "assets/images/apple-ceo-steve-jobs-speaks-during-an-apple-special-event-news-photo-1683661736.jpg"
  ),

  UserModel(
    name:"Bill Gates",
    bio: "Bill Gates was an American business manage , investor,"
        "software developer, author, He is co-founder of microsoft",

    countFollowers: 1400,
    countFollowing: 100,
    countPosts: 35,
    isFollowing: false,
    location: "United states",
    urlImages:[
      "assets/images/1680813141-GettyImages-850154658copy.webp",
          "assets/images/channels4_profile.jpg"
    ] ,
    userImage:"assets/images/106967046-1635430835800-gettyimages-946971500-99821012.jpeg",
  ),
];