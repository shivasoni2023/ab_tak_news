import 'package:flutter/material.dart';
import 'package:ab_tak_news/view/detail_View.dart';
// api key = cf5adfbab2ce47d49bfcbf7ec50a6990

class NewsContainer extends StatelessWidget {
  String imgUrl = "";
  String newsHead = "";
  String newsDes = "";
  String newsUrl = "";
  String newsCnt = "";

  NewsContainer({
    Key? key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl,
    required this.newsCnt,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        FadeInImage.assetNetwork(
            height: 250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            placeholder: "assets/img/placeholder.jfif",
            image: imgUrl),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 30,
            ),
            Text(
              newsHead.length > 90
                  ? "${newsHead.substring(0, 90)}..."
                  : newsHead,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              newsDes,
              style: TextStyle(fontSize: 12, color: Colors.black38),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              newsCnt != "--"
                  ? newsCnt.length > 250
                  ? newsCnt.substring(0, 250)
                  : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                  : newsCnt,
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailViewScreen(newsUrl: newsUrl)));
                  },
                  child: Text("Read More"),style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.red),
              ),),
            ),
          ],
        ),
        Center(
            child: TextButton(
                onPressed: () async {
                  await (Uri.parse("https://newsapi.org/"));
                },
                child: Text(
                  "News Provided By NewsAPI.org",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ))),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
