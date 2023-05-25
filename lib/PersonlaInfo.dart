import 'package:flutter/material.dart';

Container PersonalInfo(BuildContext context) {
  return Container(
    color: Colors.grey[100],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        ),
        //Image Container
        Container(
          margin: EdgeInsets.all(MediaQuery.of(context).size.width / 28),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(4, 4), blurRadius: 16)
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(MediaQuery.of(context).size.width / 12),
              ),
              image: const DecorationImage(
                  image: AssetImage('assets/images/img.jpg'),
                  fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height * 0.45,
          width: double.infinity,
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Walter Roberts',
            style: TextStyle(
                fontSize: 34,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'textexttextextextexteteteteteeeeeeeeeeeeeeeeeeeeeeeeteeeeeeeeeeeeeeeeeeeeeeeeeeeexfsssssssssssssssssssssssssssssssssssssssssseeeexttxt',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(color: Colors.grey[400], fontSize: 20),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(24)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('112',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40)),
              SizedBox(width: MediaQuery.of(context).size.width / 50),
              Text(
                'works',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800]),
              ),
              Stack(
                fit: StackFit.passthrough,
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 120),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 4, color: Colors.grey.shade200),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/im1.jpg'),
                            fit: BoxFit.fitHeight)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 92),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.grey.shade200),
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/im2.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(left: 60),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 4, color: Colors.grey.shade200),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/im3.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height / 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              width: MediaQuery.of(context).size.width * .45,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(20)),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Applications',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              width: MediaQuery.of(context).size.width * .45,
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '25',
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Views today',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
