import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 16, top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          NetworkImage('img=$name'),
                          // NetworkImage('https://i.pravatar.cc/150?img=$name'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                    ),
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Icon(Icons.more_vert))
              ],
            )),
        const SizedBox(height: 5),
        SizedBox(
          width: double.infinity,
          height: 240,
          child: Image.network(
            'https://picsum.photos/200/300?random=$name',
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.chat_bubble_outline_outlined),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.send_outlined),
              ],
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(children: [
            Text('Liked by '),
            Text(
              'adi ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(' and '),
            Text(
              'others ',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                TextSpan(
                  text: 'kepala_sekolah ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'Ayo anak-anak sudah waktunya belajar...')
              ])),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            'View all comments',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Text(
            '17 hours ago',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
