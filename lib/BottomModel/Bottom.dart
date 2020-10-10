import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
import 'package:bottom/BottomModel/Radio.dart';




class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        backgroundColor: Colors.blue,
      ),
      home: BottomModel(
      ),
    );
  }
}
class BottomModel extends StatefulWidget {
  @override
  _BottomModelState createState() => new _BottomModelState();
}
 

class _BottomModelState extends State<BottomModel> {
 
 var rating = 3.0;


SfRangeValues _values = const SfRangeValues(4.0, 6.0);
SfRangeValues _values1 = SfRangeValues(DateTime(2000, 01, 01, 07, 00, 00), DateTime(2000, 01, 01, 17, 00, 00));
  
  void _showModelSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 1200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Qualifications', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                MyStatefulWidget(),
                Divider(),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Price', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                ),
               
              SfRangeSlider(
                     min: 0.0,
                     max: 8.0,
                     values: _values,
                     interval: 2,
                     showTicks: true,
                     showLabels: true,
                     numberFormat: NumberFormat("\$"),
                     onChanged: (SfRangeValues newValues) {
                        setState(() {
                            _values = newValues;
                        });
                   },
              ),
         Divider(),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Timing', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                ),
                SfRangeSlider(
                  min: DateTime(2000, 01, 01, 02, 00, 00),
                  max: DateTime(2000, 01, 01, 22, 00, 00),
                  values: _values1,
                  interval: 5,
                  showLabels: true,
                  showTicks: true,
                  dateFormat: DateFormat('h:mm a'),
                  dateIntervalType: DateIntervalType.hours,
                  onChanged: (SfRangeValues newValues) {
                       setState(() {
                            _values = newValues;
                       });
                  },
              ),
               Divider(),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Ratings', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
               ),
               SmoothStarRating(
          rating: rating,
          isReadOnly: false,
          size: 25,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_half,
          defaultIconData: Icons.star_border,
          starCount: 5,
          allowHalfRating: true,
          spacing: 2.0,
          onRated: (value) {
            print("rating value -> $value");
            // print("rating value dd -> ${value.truncate()}");
          },
        )

                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: Color.fromARGB(2, 255, 255, 255),
        onPressed: _showModelSheet,
        child: Icon(
          Icons.filter_list,
          size: 30,
        ));
  }
}
