import 'package:camera/camera.dart';
import 'package:exercise_app/exercise.dart';
import 'package:exercise_app/exercise_data.dart';
import 'package:exercise_app/scale_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AbsWorkout extends StatelessWidget {

  final List<CameraDescription> cameras;
  const AbsWorkout({
    this.cameras,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Color(0xff31873f),
        title: Text('WorkPlus'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff31873f),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: "History",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24.0),
            Text(
              "Abs Workout",
              style: TextStyle(
                fontSize: 30.0,
                color: Color(0xff31873f),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _onPoseSelect(context, 'Plank', exerciseList,'B296mZDhrP4'),
                  child: new Container(
                    width: 160.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/plank.png',
                            height: 150.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 24.0,
                          color: Color(0xff31873f),
                          alignment: Alignment.center,
                          child: Text(
                            'Plank',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _onPoseSelect(context, 'Push ups', exerciseList,'t0s5FHbdBmA'),
                  child: new Container(
                    width: 160.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/push_ups.png',
                            height: 150.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 24.0,
                          color: Color(0xff31873f),
                          alignment: Alignment.center,
                          child: Text(
                            'Push ups',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _onPoseSelect(context, 'Oblique crunches', exerciseList,'QxaKQG-gmPY'),
                  child: new Container(
                    width: 160.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.all(5.0),
                          child: Image.asset(
                            'assets/images/oblique_crunches.png',
                            height: 150.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          height: 24.0,
                          color: Color(0xff31873f),
                          alignment: Alignment.center,
                          child: Text(
                            'Oblique crunches',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onPoseSelect(
      BuildContext context,
      String title,
      List<String> asanas,
      String videoId,
      ) async {
    Navigator.push(
      context,
      ScaleRoute(
        page: Exercise(
          cameras: cameras,
          title: title,
          model: "assets/models/posenet_mv1_075_float_from_checkpoints.tflite",
          exerciseList: asanas,
          videoId: videoId,
        ),
      ),
    );
  }
}
