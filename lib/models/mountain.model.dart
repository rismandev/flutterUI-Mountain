/*
 * Model Mountain
 * Dummy List Data Mountain
 * 
 * Date Created                Date Updated
 * 22 June 2020                19 October 2020
 * 
 * Created by                  Updated by
 * Risman Abdilah              Risman Abdilah
 */

class Mountain {
  int id;
  double rating;
  double price;
  String title;
  String image;
  String location;
  String description;
  bool isSaved;

  Mountain({
    this.id,
    this.title,
    this.price,
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
    price: 80,
    description:
        "Gunung Tangkuban Parahu adalah salah satu gunung yang terletak di Provinsi Jawa Barat, Indonesia. Sekitar 20 km ke arah utara Kota Bandung, dengan rimbun pohon pinus dan hamparan kebun teh di sekitarnya, Gunung Tangkuban Parahu mempunyai ketinggian setinggi 2.084 meter.",
  ),
  Mountain(
    id: 2,
    title: "Gunung Ciremai",
    image: "assets/images/images-2.png",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: true,
    price: 50,
    description:
        "Gunung Ceremai adalah gunung berapi kerucut yang secara administratif termasuk dalam wilayah dua kabupaten, yakni Kabupaten Kuningan dan Kabupaten Majalengka, Provinsi Jawa Barat. Posisi geografis puncaknya terletak pada 6° 53' 30' LS dan 108° 24' 00' BT, dengan ketinggian 3.078 m di atas permukaan laut.",
  ),
  Mountain(
    id: 3,
    title: "Gunung Guntur",
    image: "assets/images/images-3.jpg",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: false,
    price: 45,
    description:
        "Gunung Guntur adalah sebuah gunung berapi bertipe stratovolcano yang terdapat di Kelurahan Pananjung dan Desa Pasawahan, Tarogong Kaler, Kabupaten Garut, Jawa Barat, dan memiliki ketinggian 2.249 meter dpl. Gunung Guntur pernah menjadi gunung berapi paling aktif di pulau Jawa pada dekade 1800 an.",
  ),
  Mountain(
    id: 4,
    title: "Gunung Bromo",
    image: "assets/images/images-4.png",
    location: "Jawa Barat, Indonesia",
    rating: 4.5,
    isSaved: false,
    price: 200,
    description:
        "Gunung Bromo atau dalam bahasa Tengger dieja 'Brama', adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang.",
  ),
];
