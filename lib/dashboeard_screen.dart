import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreeen extends StatefulWidget {
  const DashboardScreeen({Key? key}) : super(key: key);

  @override
  State<DashboardScreeen> createState() => _DashboardScreeenState();
}

class _DashboardScreeenState extends State<DashboardScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashBoard"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          builddashBoard(
              "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRnhUzpr1n8HcJr4O8p2Qs-VV7mmuL87JsFBFf5fETQ-6yBaB59DsYpMUAM8JEGHm87ASydKKusjA&usqp=CAc",
              "Samsung Galaxy M32 | 4GB RAM | 64GB | Blue  | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone Samsung Galaxy M32 | 4GB RAM | 64GB |/n Blue | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone /n ₹11,749 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQgeuYMByOIeAwiW9eMa9TzqfBFB6gBZxHiXhRA1zzOxmTPzmRNhcAojjNnD0DNvYANB7kzGZRb-7g&usqp=CAc",
              "Samsung Galaxy M12 |4GB RAM |64GB |White |/n 8nm Exynos Processor | 90Hz Refresh Rate | Smartphone/n ₹11,499 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS4uc8OWh1Xn6WkcRQNq7jYZTMW3ktj1ZIBxITHM_BWfcdPojVhNMQ4txyFjrLc9hGn4mu9vZTrqaA&usqp=CAc",
              "Samsung Galaxy F23 5G | 6GB |128GB |16.72cm /n (6.6 inch) Aqua Blue | FHD+ Infinity-U Display |/n Snapdragon 750G Processor | Voice Focus|5000mAh Battery/n ₹16,999 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRnhUzpr1n8HcJr4O8p2Qs-VV7mmuL87JsFBFf5fETQ-6yBaB59DsYpMUAM8JEGHm87ASydKKusjA&usqp=CAc",
              "Samsung Galaxy M32 | 4GB RAM | 64GB | Blue  | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone Samsung Galaxy M32 | 4GB RAM | 64GB |/n Blue | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone /n ₹11,749 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQgeuYMByOIeAwiW9eMa9TzqfBFB6gBZxHiXhRA1zzOxmTPzmRNhcAojjNnD0DNvYANB7kzGZRb-7g&usqp=CAc",
              "Samsung Galaxy M12 |4GB RAM |64GB |White |/n 8nm Exynos Processor | 90Hz Refresh Rate | Smartphone/n ₹11,499 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS4uc8OWh1Xn6WkcRQNq7jYZTMW3ktj1ZIBxITHM_BWfcdPojVhNMQ4txyFjrLc9hGn4mu9vZTrqaA&usqp=CAc",
              "Samsung Galaxy F23 5G | 6GB |128GB |16.72cm /n (6.6 inch) Aqua Blue | FHD+ Infinity-U Display |/n Snapdragon 750G Processor | Voice Focus|5000mAh Battery/n ₹16,999 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRnhUzpr1n8HcJr4O8p2Qs-VV7mmuL87JsFBFf5fETQ-6yBaB59DsYpMUAM8JEGHm87ASydKKusjA&usqp=CAc",
              "Samsung Galaxy M32 | 4GB RAM | 64GB | Blue  | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone Samsung Galaxy M32 | 4GB RAM | 64GB |/n Blue | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone /n ₹11,749 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQgeuYMByOIeAwiW9eMa9TzqfBFB6gBZxHiXhRA1zzOxmTPzmRNhcAojjNnD0DNvYANB7kzGZRb-7g&usqp=CAc",
              "Samsung Galaxy M12 |4GB RAM |64GB |White |/n 8nm Exynos Processor | 90Hz Refresh Rate | Smartphone/n ₹11,499 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS4uc8OWh1Xn6WkcRQNq7jYZTMW3ktj1ZIBxITHM_BWfcdPojVhNMQ4txyFjrLc9hGn4mu9vZTrqaA&usqp=CAc",
              "Samsung Galaxy F23 5G | 6GB |128GB |16.72cm /n (6.6 inch) Aqua Blue | FHD+ Infinity-U Display |/n Snapdragon 750G Processor | Voice Focus|5000mAh Battery/n ₹16,999 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRnhUzpr1n8HcJr4O8p2Qs-VV7mmuL87JsFBFf5fETQ-6yBaB59DsYpMUAM8JEGHm87ASydKKusjA&usqp=CAc",
              "Samsung Galaxy M32 | 4GB RAM | 64GB | Blue  | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone Samsung Galaxy M32 | 4GB RAM | 64GB |/n Blue | 2GHz Octa-Core Processor | 6000mAh Battery |/n Smartphone /n ₹11,749 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQgeuYMByOIeAwiW9eMa9TzqfBFB6gBZxHiXhRA1zzOxmTPzmRNhcAojjNnD0DNvYANB7kzGZRb-7g&usqp=CAc",
              "Samsung Galaxy M12 |4GB RAM |64GB |White |/n 8nm Exynos Processor | 90Hz Refresh Rate | Smartphone/n ₹11,499 Samsung.com"),
          builddashBoard(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS4uc8OWh1Xn6WkcRQNq7jYZTMW3ktj1ZIBxITHM_BWfcdPojVhNMQ4txyFjrLc9hGn4mu9vZTrqaA&usqp=CAc",
              "Samsung Galaxy F23 5G | 6GB |128GB |16.72cm /n (6.6 inch) Aqua Blue | FHD+ Infinity-U Display |/n Snapdragon 750G Processor | Voice Focus|5000mAh Battery/n ₹16,999 Samsung.com"),
        ],
      ),
    );
  }

  Widget builddashBoard(String url, String content) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.network(url),
        ),
        //  "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSRnhUzpr1n8HcJr4O8p2Qs-VV7mmuL87JsFBFf5fETQ-6yBaB59DsYpMUAM8JEGHm87ASydKKusjA&usqp=CAc"),
        Expanded(child: Text(content))
        //   "Samsung Galaxy M32 | 4GB RAM | 64GB | Blue | 2GHz Octa-Core Processor | 6000mAh Battery | Smartphone Samsung Galaxy M32 | 4GB RAM | 64GB | Blue | 2GHz Octa-Core Processor | 6000mAh Battery | Smartphone /n ₹11,749 Samsung.com"),
      ],
    );
  }
}
