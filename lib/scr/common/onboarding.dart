class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your work and get the result",
    image: "assets/image/scale_1200.jpg",
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnboardingContents(
    title: "Stay organized with team",
    image: "assets/image/istockphoto-1052199106-170667a.jpg",
    desc: "But understanding the contributions our colleagues",
  ),
  OnboardingContents(
    title: "Get notified when work happens",
    image: "assets/image/elephant-image-hd-free-photo.jpg",
    desc: "Take control of notifications, collaborate live or your time.",
  ),
];


