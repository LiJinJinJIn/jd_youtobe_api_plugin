import 'package:flutter/material.dart';
import 'package:jd_youtobe_api_plugin/youtube_api.dart';
import 'package:jd_youtobe_api_plugin/yt_video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 请求api
  YoutubeAPI ytApi = YoutubeAPI(YOUTUBE_API_KEY);

  @override
  void initState() {
    super.initState();
  }

  void getList() async {
    List<YT_API> ytResult = await ytApi.getTrends(regionCode: "id");
    ytResult.forEach((youToBe) {
      print("title  >>>>           ${youToBe.title}");
    });
  }

  void getNextList() async {
    List<YT_API> ytResult = await ytApi.nextPage();
    ytResult.forEach((youToBe) {
      print("title  >>>>           ${youToBe.title}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              InkWell(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text('获取数据'),
                  ),
                ),
                onTap: () {
                  getList();
                },
              ),
              SizedBox(height: 50),
              InkWell(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text('下一页'),
                  ),
                ),
                onTap: () {
                  getNextList();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const YOUTUBE_API_KEY = '';
