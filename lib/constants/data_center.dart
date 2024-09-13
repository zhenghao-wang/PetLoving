import 'package:flutter_pet/flutter_pet_img_constant.dart';

class DoctorBean {
  late String avatar;
  late String name;
  late String introduce;

  DoctorBean(
      {required this.name, required this.avatar, required this.introduce});
}

class PetBean {
  late String avatar;
  late String name;
  late String introduce;
  late String likeCount;
  late String desc;
  late String story;
  late String attr;
  late bool isLike;
  late List<PetBean> otherPets;
  late DoctorBean doctor;

  PetBean({
    required this.avatar,
    required this.name,
    required this.introduce,
    required this.likeCount,
    required this.desc,
    required this.story,
    required this.attr,
    this.isLike = false,
    this.otherPets = const [],
    required this.doctor,
  });
}

class PostBean {
  late String id;
  late String avatar;
  late String nickname;
  late String location;
  late String distance;
  late String content;
  late List<String> imgList;
  late String publishTime;
  late String likeCount;
  late String shareCount;
  late String commentCount;
  late bool isLike;

  PostBean({
    required this.id,
    required this.avatar,
    required this.nickname,
    required this.location,
    this.distance = "",
    required this.content,
    required this.imgList,
    required this.publishTime,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
    this.isLike = false,
  });
}

class MessageBean {
  late String icon;
  late String title;
  late String content;

  MessageBean({required this.icon, required this.title, required this.content});
}

class PetActivityBean {
  late String title;
  late String desc;
  late int progress;
  late PetBean petInfo;

  PetActivityBean({
    required this.title,
    required this.desc,
    required this.progress,
    required this.petInfo,
  });
}

class PetScienceBean {
  late String name;
  late String avatar;
  late String url;

  PetScienceBean({required this.name, required this.avatar, required this.url});
}

List<PetBean> petList = [
  PetBean(
      avatar:
          "https://up.sc.enterdesk.com/edpic/b6/7d/96/b67d969148beb378354e2cf070f38852.jpg",
      introduce: "The small Shiba Inu vomits and has no appetite.",
      name: "precisely",
      likeCount: "12",
      attr: "qiqi | 12 months  | 23 kg ",
      story:
          "Qiqi is a gentle dog who likes nothing more than to lie down and rest in a comfortable place. Although she seems lively and active, she actually prefers a quiet environment, enjoying the sun and wind. Qiqi has completed all her vaccinations and has been living in the shelter for four months and is looking forward to finding a warm family. She needs a loving owner to take care of her and give her a forever home",
      desc:
          'Hangzhou Yuhang District Longzhou Road Paiduoge Stray Animal Rescue Station',
      doctor:   DoctorBean(
          name: "Dr. Li Meiling",
          avatar: FlutterPetImgConstant.iconTab3Doctor1,
          introduce: "138-1234-5678"),
      otherPets: [
        PetBean(
          avatar:
              "https://gbres.dfcfw.com/Files/iimage/20240908/B8C563783C15C2FD984E3769BAFE52C4_w1269h952.jpg",
          introduce: "The small Shiba Inu vomits and has no appetite.",
          name: "precisely",
          likeCount: "12",
          attr: "mimi | 6 months  | 5 kg",
          story:
              "Mimi is a lively and cute little cat with a very friendly personality and is always curious about everything around her. She likes to explore around the house, chasing shadows of the sun and occasionally diving for toy balls. Although she is occasionally naughty, she can always win the heart of her master by acting like a spoiled girl. Mimi especially loves to be touched and makes a soft purring sound every time she is picked up, expressing her satisfaction and happiness. She has completed all her vaccinations and is perfectly healthy. Mimi hopes to continue her adventures and her life in a warm home",
          desc:
              'Hangzhou Yuhang District Longzhou Road Paiduoge Stray Animal Rescue Station',
          doctor: DoctorBean(
            name: "Dr. Zhang Wei",
            introduce: "139-8765-4321",
            avatar: "images/doctor_1.jpg",
          ),
        ),
      ]),
  PetBean(
    avatar:
        "https://gbres.dfcfw.com/Files/iimage/20240908/B8C563783C15C2FD984E3769BAFE52C4_w1269h952.jpg",
    introduce: "The small Shiba Inu vomits and has no appetite.",
    name: "precisely",
    likeCount: "12",
    attr: "mimi | 6 months  | 5 kg",
    story:
        "Qiaqia is a Corgi who is gentle in nature and loves to sleep. She is currently 9 months old and has been vaccinated. She has been at the stray animal rescue center for 4 months and urgently needs a loving person to adopt her.",
    desc:
        'Hangzhou Yuhang District Longzhou Road Paiduoge Stray Animal Rescue Station',
    doctor: DoctorBean(
      name: "Dr. Zhang Wei",
      introduce: "139-8765-4321",
      avatar: "images/doctor_2.jpg",
    ),
  ),
  PetBean(
    avatar: FlutterPetImgConstant.petAvatar,
    introduce: "The small Shiba Inu vomits and has no appetite.",
    name: "precisely",
    likeCount: "12",
    attr: "qiqi | 12 months  | 23 kg ",
    story:
        "Qiaqia is a Corgi who is gentle in nature and loves to sleep. She is currently 9 months old and has been vaccinated. She has been at the stray animal rescue center for 4 months and urgently needs a loving person to adopt her.",
    desc:
        'Hangzhou Yuhang District Longzhou Road Paiduoge Stray Animal Rescue Station',
    doctor: DoctorBean(
      name: "Dr. Zhang Wei",
      avatar: "images/doctor_3.jpg",
      introduce: "139-8765-4321",
    ),
  )
];

List<DoctorBean> doctorList = [
  DoctorBean(
      name: "Dr. Li Meiling",
      avatar: FlutterPetImgConstant.iconTab3Doctor1,
      introduce: "138-1234-5678"),
  DoctorBean(
      name: "Wang Xiaoli",
      avatar: FlutterPetImgConstant.iconTab3Doctor2,
      introduce: "137-9876-5432"),
  DoctorBean(
    name: "Dr. Zhang Wei",
    avatar: FlutterPetImgConstant.iconTab3Doctor3,
    introduce: "139-8765-4321",
  ),
];

List<PostBean> postList = [
  PostBean(
      id: "1",
      avatar: FlutterPetImgConstant.avatarDefault,
      nickname: "Wang Xiaoli",
      location: "Guangzhou | distance 2.4km",
      content:
          "Choose a pet that suits your lifestyle and living environment. Different pets have different characteristics and needs, for example, dogs require more exercise and socialization, while cats are relatively independent.",
      imgList: [
        FlutterPetImgConstant.postDog1,
        FlutterPetImgConstant.postDog2,
        FlutterPetImgConstant.postDog3
      ],
      publishTime: "Published 1 hour ago",
      likeCount: "4550",
      shareCount: "1200",
      commentCount: "2000"),
  PostBean(
    id: "2",
    avatar: FlutterPetImgConstant.avatarDefault,
    nickname: "Li Meiling",
    location: "Guangzhou | distance 2.4km",
    content:
        "Choose a pet that suits your lifestyle and living environment. Different pets have different characteristics and needs, for example, dogs require more exercise and socialization, while cats are relatively independent.",
    imgList: [
      FlutterPetImgConstant.postDog1,
      FlutterPetImgConstant.postDog2,
      FlutterPetImgConstant.postDog3
    ],
    publishTime: "Published 1 hour ago",
    likeCount: "4550",
    shareCount: "1200",
    commentCount: "2000",
  )
];

List<PostBean> postList2 = [
  PostBean(
      id: "1",
      avatar: FlutterPetImgConstant.avatarDefault,
      nickname: "kezi",
      location: "Guangzhou | distance 2.4km",
      content:
          "Choose a pet that suits your lifestyle and living environment. Different pets have different characteristics and needs, for example, dogs require more exercise and socialization, while cats are relatively independent.",
      imgList: ["images/dog_1.jpg", "images/dog_2.jpg", "images/dog_3.jpg"],
      publishTime: "Published 1 hour ago",
      likeCount: "4550",
      shareCount: "1200",
      commentCount: "2000"),
  PostBean(
    id: "2",
    avatar: FlutterPetImgConstant.avatarDefault,
    nickname: "Wang Xiaoli",
    location: "Guangzhou | distance 2.4km",
    content:
        "Choose a pet that suits your lifestyle and living environment. Different pets have different characteristics and needs, for example, dogs require more exercise and socialization, while cats are relatively independent.",
    imgList: ["images/dog_4.jpg", "images/dog_5.jpg", "images/dog_6.jpg"],
    publishTime: "Published 1 hour ago",
    likeCount: "4550",
    shareCount: "1200",
    commentCount: "2000",
  )
];

List<MessageBean> messageList = [
  MessageBean(
    icon: "images/icon_message_1.png",
    title: "Pet Interaction",
    content: "No new interactive messages at the moment.",
  ),
  MessageBean(
    icon: "images/icon_message_2.png",
    title: "Inquiry Message",
    content: "No new inquiries yet",
  ),
  MessageBean(
    icon: "images/icon_message_3.png",
    title: "System message",
    content: "No new system messages available",
  ),
  MessageBean(
    icon: "images/icon_message_4.png",
    title: "Pet care reminder",
    content: "There are no new reminder messages at the moment.",
  ),
];

List<PetActivityBean> petActivityList = [
  PetActivityBean(
    title: "Collection|Rescue Stories of Stray Animals",
    desc: "There are already 1000 loving people involved.",
    progress: 20,
    petInfo: PetBean(
      attr: "qiqi | 12 months  | 23 kg ",
      avatar: "images/pet_avatar.png",
      introduce: "The small Shiba Inu vomits and has no appetite.",
      name: "precisely",
      likeCount: "12",
      story:
          "Qiaqia is a Corgi who is gentle in nature and loves to sleep. She is currently 9 months old and has been vaccinated. She has been at the stray animal rescue center for 4 months and urgently needs a loving person to adopt her.",
      desc:
          'Hangzhou Yuhang District Longzhou Road Paiduoge Stray Animal Rescue Station',
      doctor: DoctorBean(
        name: "111",
        avatar: FlutterPetImgConstant.iconTab3Doctor3,
        introduce: "xxxxxxxx",
      ),
    ),
  ),
  PetActivityBean(
    title: "boycott pet blind boxes",
    desc: "Already 1000 kind-hearted people have participated.",
    progress: 80,
    petInfo: PetBean(
      attr: "qiqi | 12 months  | 23 kg ",
      avatar: "images/pet_avatar.png",
      introduce: "The small Shiba Inu vomits and has no appetite.",
      name: "precisely",
      likeCount: "12",
      story:
          "Qiaqia is a Corgi who is gentle in nature and loves to sleep. She is currently 9 months old and has been vaccinated. She has been at the stray animal rescue center for 4 months and urgently needs a loving person to adopt her.",
      desc:
          'Hangzhou Yuhang District Longzhou Road Paiduoge Stray Animal Rescue Station',
      doctor: DoctorBean(
        name: "111",
        avatar: FlutterPetImgConstant.iconTab3Doctor3,
        introduce: "xxxxxxxx",
      ),
    ),
  ),
];

List<PetScienceBean> petScienceList = [
  PetScienceBean(
    name: "Husky",
    avatar:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Huskiesatrest.jpg/800px-Huskiesatrest.jpg",
    url: "https://en.m.wikipedia.org/wiki/Husky",
  ),
  PetScienceBean(
    name: "Beagle",
    avatar:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Beagle_600.jpg/440px-Beagle_600.jpg",
    url: "https://en.m.wikipedia.org/wiki/Beagle",
  ),
];
