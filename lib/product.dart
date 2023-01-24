class Product {
  final int id, price;
  final String title, description ;
  final List imageList;
  Product(
      {required this.id,
      required this.price,
      required this.description,
      required this.imageList,
      required this.title});
}

List<Product> products = [
  Product(
      description: 'Black & Red Sports Bike hgigifir fhhfurfh  fhourfh uhv vhoehoivvbvho vheuhvoeuvh vheovhioevv iuhvohvh vhfviuvhovh ',
      title: 'KTM RC 390',
      price: 100000,
      id: 1,
      imageList: ['assets/bike.jpg', 'assets/car.jpg']),
      Product(
      description: 'Autocar',
      title: 'Hyundai Grand i10 Nios',
      price: 700000,
      id: 2,
      imageList: ['assets/car.jpg']),
      Product(
      description: 'Electric Scooter',
      title: 'Ola electric scooter',
      price: 129999,
      id: 3,
      imageList: ['assets/Electric _Scooter.jpg']),
      Product(
      description: 'Black & Red Sports Bike',
      title: 'Bike',
      price: 100000,
      id: 4,
      imageList: ['assets/bike.jpg']),
      Product(
      description: 'Black & Red Sports Bike',
      title: 'Bike',
      price: 100000,
      id: 5,
      imageList: ['assets/bike.jpg']),
      Product(
      description: 'Black & Red Sports Bike',
      title: 'Bike',
      price: 100000,
      id: 6,
      imageList: ['assets/bike.jpg']),
      Product(
      description: 'Black & Red Sports Bike',
      title: 'Bike',
      price: 100000,
      id: 7,
      imageList: ['assets/bike.jpg']),
      Product(
      description: 'Black & Red Sports Bike',
      title: 'Bike',
      price: 100000,
      id: 8,
      imageList: ['assets/bike.jpg']),
      Product(
      description: 'Black & Red Sports Bike',
      title: 'Bike',
      price: 100000,
      id: 9,
      imageList: ['assets/bike.jpg'])

];
