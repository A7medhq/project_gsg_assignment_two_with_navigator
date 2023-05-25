import 'package:flutter/material.dart';

Container Search(BuildContext context, Function back) {
  return Container(
    color: Colors.grey[100],
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  back();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 28,
                ),
              ),
              const Stack(
                children: [
                  Icon(
                    Icons.notifications_none,
                    size: 36,
                  ),
                  CircleAvatar(
                    radius: 10,
                    child: Text('3'),
                  )
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '74 results for',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '\'Photographer\'',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.blue.shade900,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(5, 5), blurRadius: 16)
              ],
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(40))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Photographer',
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.3),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Icon(
                      Icons.bookmarks_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Text(
                  '\$120/h',
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                style: TextStyle(
                    fontSize: 24,
                    overflow: TextOverflow.ellipsis,
                    color: Colors.blue.shade200.withOpacity(.5)),
                maxLines: 3,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueAccent.shade200.withOpacity(.4)),
                    child: const Text(
                      'Photography',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueAccent.shade200.withOpacity(.4)),
                    child: const Text(
                      'Photoshop',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.arrow_back,
                size: 80,
                color: Colors.blue.shade900,
              ),
              Icon(
                Icons.arrow_forward,
                size: 80,
                color: Colors.blue.shade900,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16),
          padding: const EdgeInsets.symmetric(horizontal: 44),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dislike',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(
                'Like',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
