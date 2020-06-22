class Mountain {
  final int id;
  final double rating;
  final String title, image, location, description;
  final bool isSaved;

  Mountain({
    this.id,
    this.title,
    this.rating,
    this.image,
    this.location,
    this.isSaved,
    this.description,
  });
}

List<Mountain> recents = [
  Mountain(
    id: 1,
    title: "Gunung Tangkuban perahu",
    image: "assets/images/images-1.jpg",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: false,
    description: descriptionText,
  ),
  Mountain(
    id: 2,
    title: "Gunung Ciremai",
    image: "assets/images/images-2.png",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: true,
    description: descriptionText,
  ),
  Mountain(
    id: 3,
    title: "Gunung Guntur",
    image: "assets/images/images-3.jpg",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: false,
    description: descriptionText,
  ),
  Mountain(
    id: 4,
    title: "Gunung Bromo",
    image: "assets/images/images-4.png",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: false,
    description: descriptionText,
  ),
];

String descriptionText = "Gunung Ceremai adalah gunung berapi kerucut yang secara administratif termasuk dalam wilayah dua kabupaten, yakni Kabupaten Kuningan dan Kabupaten Majalengka, Provinsi Jawa Barat.";
