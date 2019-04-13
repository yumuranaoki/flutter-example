import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  final _lists = [
    'Hoge',
    'Fuga',
    'Hoge',
    'Hoge',
    'Fuga',
    'Hoge',
    'Hoge',
    'Fuga',
    'Hoge',
    'Hoge',
    'Fuga',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
    'Hoge',
  ];

  Widget _buildPosts() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: _lists.length,
      itemBuilder: (context, i) {
        return _buildPostRow(i);
      },
    );
  }

  Widget _buildPostRow(int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(7.0),
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 5.0
                  ),
                  Icon(Icons.person),
                  Container(
                    width: 5.0
                  ),
                  Text('nichole')
                ],
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
          Container(
            height: 7.0,
          ),
          Image.network(
            'https://www.sponichi.co.jp/entertainment/news/2018/02/28/jpeg/20180228s00041000109000p_view.jpg'
          ),
          Container(
            height: 7.0,
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.favorite_border),
                  Icon(Icons.comment),
                  Icon(Icons.mail_outline)
                ],
              ),
              Icon(Icons.bookmark)
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
          Container(
            height: 7.0,
          ),
          Text('1,000 likes'),
          Text('nichole 誕生日会でした')
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: _buildPosts(),
    );
  }
}