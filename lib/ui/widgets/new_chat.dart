part of 'widget.dart';

class NewChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF111111),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailChat()));
        },
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset('assets/user_chat.png'),
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mr Jhonson Pattrick Ash..',
                  maxLines: 1,
                  style: whiteTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'jhonsonDoeDummy@gmail.com',
                  maxLines: 1,
                  style: whiteTextStyle.copyWith(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
              ],
            ),
            Spacer(),
            IconButton(
                icon: Container(
                    width: 15,
                    height: 15,
                    child: Image.asset('assets/icon_others.png')),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
