import 'package:flutter/material.dart';

class DiscoverOptions extends StatefulWidget {
  const DiscoverOptions({super.key});

  @override
  State<DiscoverOptions> createState() => DiscoverOptionsState();
}

class DiscoverOptionsState extends State<DiscoverOptions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),  
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/homepage/all.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  "All",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
              ],
            ),
            onTap: () {
              print("All");
            },
          ),                 

          InkWell(
            child: Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/homepage/blog.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  "Blog",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
              ],
            ),
            onTap: () {
              print("Blog");
            },
          ),                  

          InkWell(
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/homepage/hacks.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  "Hacks",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
              ],
            ),
            onTap: () {
              print("Hacks");                    
            },
          ),                  

          InkWell(
            child: Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/homepage/q&a.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  "Q&A",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
              ],
            ),
            onTap: () {
              print("Faq");
            },
          ),                  

          InkWell(
            child: Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/homepage/vedio.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  "Vedio",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),          
                ),
              ],
            ),
            onTap: () {
              print("Vedio");
            },
          ),
        ],
      ),
    );
  }
}