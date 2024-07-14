class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;

  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
  });
}

List<Shoe> shoes = [
  Shoe(
    name: "Air Jordan",
    price: "200",
    imagePath: "assets/images/airjordan.webp",
    description:
        "Premium materials, soft cushioning and a padded ankle collar offer total support and celebrate the shoe that started it all.",
  ),
  Shoe(
    name: "Kdtrey",
    price: "210",
    imagePath: "assets/images/kdtrey.webp",
    description:
        "Fresh branding levels up your off-court style, while the forefoot Zoom Air and striated graphic up your cachet. No pressing pause—get 'em while you can.",
  ),
  Shoe(
    name: "Kyrie",
    price: "220",
    imagePath: "assets/images/kyrie.jpg",
    description:
        "The Air Max Dn features our Dynamic Air unit system of dual-pressure tubes, creating a reactive sensation with every step. This results in a futuristic design that’s comfortable enough to wear from day to night. Go ahead—Feel the Unreal.",
  ),
  Shoe(
    name: "Zoom Freak",
    price: "260",
    imagePath: "assets/images/zoomfreak.webp",
    description: "The forward-thinking design of his latest signature shoe.",
  ),
];
