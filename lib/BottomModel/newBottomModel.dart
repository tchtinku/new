import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_sliders/sliders.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:bottom/BottomModel/Radio.dart';

class NewBottomModel extends StatefulWidget {
  @override
  _NewBottomModelState createState() => _NewBottomModelState();
}

class _NewBottomModelState extends State<NewBottomModel> {
  var rating = 3.0;

// SfRangeValues _values = const SfRangeValues(4.0, 6.0);
// SfRangeValues _values1 = SfRangeValues(DateTime(2000, 01, 01, 07, 00, 00), DateTime(2000, 01, 01, 17, 00, 00));
  RangeValues _currentRangeValues = const RangeValues(4, 6);
  RangeValues _currentRangeValuesForTime = const RangeValues(8, 12);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.width * 1.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Qualifications',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            MyStatefulWidget(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Price',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 8,
              divisions: 4,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$0"),
                  Text("\$2"),
                  Text("\$4"),
                  Text("\$6"),
                  Text("\$8"),
                ],
              ),
            ),
            // SfRangeSlider(
            //        min: 0.0,
            //        max: 8.0,
            //        values: _values,
            //        interval: 2,
            //        showTicks: true,
            //        showLabels: true,
            //        numberFormat: NumberFormat("\$"),
            //        onChanged: (SfRangeValues newValues) {
            //           setState(() {
            //               _values = newValues;
            //           });
            //      },
            // ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Timing',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            RangeSlider(
              values: _currentRangeValuesForTime,
              min: 8,
              max: 19,
              divisions: 10,
              labels: RangeLabels(
                _currentRangeValuesForTime.start.round().toString(),
                _currentRangeValuesForTime.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValuesForTime = values;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("8 am"),
                  Text("12 pm"),
                  Text("7pm"),
                ],
              ),
            ),
            //   SfRangeSlider(
            //     min: DateTime(2000, 01, 01, 02, 00, 00),
            //     max: DateTime(2000, 01, 01, 22, 00, 00),
            //     values: _values1,
            //     interval: 5,
            //     showLabels: true,
            //     showTicks: true,
            //     dateFormat: DateFormat('h:mm a'),
            //     dateIntervalType: DateIntervalType.hours,
            //     onChanged: (SfRangeValues newValues) {
            //          setState(() {
            //               _values = newValues;
            //          });
            //     },
            // ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ratings',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:12.0, vertical: 8),
              child: SmoothStarRating(
                rating: rating,
                isReadOnly: false,
                size: 35,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: true,
                spacing: 5.0,
                onRated: (value) {
                  print("rating value -> $value");
                  // print("rating value dd -> ${value.truncate()}");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
