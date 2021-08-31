import 'package:avenue_demo/resources/resources.dart';

class FakeApiHelper implements HttpHelper {
  @override
  Future<HttpResponse> get({required String url}) {
    return Future.delayed(Duration(seconds: 5), () {
      return HttpResponse(
        data: [
          {
            "postedTime": "2021-08-15T07:00:00+0000",
            "likes": 2000,
            "comments": 150,
            "engagement": 2.3,
            "photoUrl":
                "https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg"
          },
          {
            "postedTime": "2021-08-15T07:00:00+0000",
            "likes": 100,
            "comments": 10,
            "engagement": 0.1,
            "photoUrl":
                "https://ladefinicion.com/wp-content/uploads/2019/08/paisaje-natural.jpg"
          },
          {
            "postedTime": "2021-08-15T07:00:00+0000",
            "likes": 545,
            "comments": 23,
            "engagement": 1.5,
            "photoUrl":
                "http://s4.thingpic.com/images/Zr/AnBj3tU6qFVqWsezXhEW37xa.jpeg"
          }
        ],
        statusCode: 200,
      );
    });
  }
}
