import 'package:flutter/material.dart';

class DeliveryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DeliveryAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(145);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey.shade200,
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/appbar.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/appbar_profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'David Morgan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 165),
                    SizedBox(
                      width: 30,
                      height: 40,
                      child: Image.asset(
                        'assets/appbar_detail_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Bring order to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'NY, 201-279 W 42nd St',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 250,
            child: SizedBox(
              height: 75,
              child: Container(
                width: 1,
                height: 60,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
          const Positioned(
            top: 120,
            left: 290,
            child: SizedBox(
              height: 30,
              child: Text(
                'When?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 145,
            left: 290,
            child: SizedBox(
              height: 30,
              child: Text(
                '10-11 pm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
