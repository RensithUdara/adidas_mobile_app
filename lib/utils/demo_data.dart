import 'package:adidas_mobile_app/models/sneaker_model.dart';

class DemoData {
  static List<SneakerModel> sneakers = [
    SneakerModel(
      id: 1,
      title: "Running Shoe",
      description: "A comfortable shoe for running.",
      image:
          "https://assets.adidas.com/images/w_450,f_auto,q_auto/b3372b6d33f64a8a89a64d693aee19b3_9366/IG8174_15_hover_standard.jpg",
      price: 79.99,
    ),
    SneakerModel(
      id: 2,
      title: "Play Sneaker",
      description: "High-performance basketball sneaker.",
      image:
          "https://assets.adidas.com/images/w_450,f_auto,q_auto/bd5eb10cb2ca46d380bad32ab36866a3_9366/IG8453_15_hover_standard.jpg",
      price: 129.99,
    ),
    SneakerModel(
      id: 3,
      title: "Casual Sneaker",
      description: "Stylish and comfortable for everyday wear.",
      image:
          "https://assets.adidas.com/images/w_450,f_auto,q_auto/9eadfe4ed58f4962941cc77355beeeaf_9366/IG7397_02_standard_hover.jpg",
      price: 59.99,
    ),
    SneakerModel(
      id: 4,
      title: "Running Shoe",
      description: "Designed for off-road running adventures.",
      image:
          "https://assets.adidas.com/images/w_450,f_auto,q_auto/8c0373df5ecb4667926992add7916352_9366/IF5738_15_hover_standard.jpg",
      price: 89.99,
    ),
    SneakerModel(
      id: 5,
      title: "Skate Sneaker",
      description: "Durable and supportive for skateboarding.",
      image:
          "https://assets.adidas.com/images/w_450,f_auto,q_auto/64bb71477cf8473fab37e622422bafc4_9366/ID0354_02_standard_hover.jpg",
      price: 74.99,
    ),
    SneakerModel(
      id: 6,
      title: "Fashion Sneaker",
      description: "Trendy and fashionable sneaker.",
      image:
          "https://assets.adidas.com/images/w_450,f_auto,q_auto/da73ac9347bf4618a42f02b9ca4fcfb1_9366/IE4588_02_standard_hover.jpg",
      price: 99.99,
    ),
  ];

  static List<String> images = [
    "https://i.pinimg.com/736x/27/52/d7/2752d7e9b1de20834ebd12b61ff33569.jpg",
    "https://cdn.shopify.com/s/files/1/0644/8496/6653/files/unnamed_2_c1946778-2a95-45d1-82af-c1a0f6704294_480x480.jpg?v=1699343923",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWOlKvQvc3EL1tXqZQBIsYGn-kX4nyBB-5tBYAAX1yd1OgnwlAhbsNderrTI_xo9lm4S0&usqp=CAU"
  ];
}
