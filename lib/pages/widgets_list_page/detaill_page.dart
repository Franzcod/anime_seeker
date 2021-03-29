import 'package:flutter/material.dart';
import 'package:gif_browser/pages/widgets_list_page/card_detail.dart';
import 'package:gif_browser/pages/widgets_list_page/covert_date.dart';
import 'package:gif_browser/pages/widgets_list_page/status_creator.dart';

class DetailPage extends StatefulWidget {
  DetailPage({this.details});
  final dynamic details;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    //print(DetailPage().details['attributes']['canonicalTitle'].toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.details['attributes']['canonicalTitle']),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: DetailList(
        details: widget.details,
      ),
    );
  }
}

class DetailList extends StatelessWidget {
  final details;
  DetailList({this.details});
  ConvertDate convert = ConvertDate();
  CreateStatus cStatus = CreateStatus();
  @override
  Widget build(BuildContext context) {
    //final imagenAbajo = details['attributes']['coverImage'];
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 15),
          child: Text(
            details['attributes']['canonicalTitle'],
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87, fontSize: 30),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          width: double.infinity,
          child: Image(
            image: NetworkImage(details['attributes']['posterImage']['medium']),
          ),
        ),
        Row(
          children: [
            DetailCard(
              title: 'Started On',
              detail: convert.convert(details['attributes']['startDate']),
            ),
            DetailCard(
              title: 'Status',
              detail: cStatus.myStatus(
                  details['attributes']['status'],
                  details['attributes']['endDate'],
                  details['attributes']['nextRelease']),
            ),
          ],
        ),
        Row(
          children: [
            DetailCard(
              title: 'Age Rating',
              detail:
                  '${details['attributes']['ageRating']} : ${details['attributes']['ageRatingGuide']}',
            ),
            DetailCard(
              title: 'Average Rating',
              detail: details['attributes']['averageRating'],
            ),
          ],
        ),
        DetailCard(
          title: 'Story Line',
          detail: details['attributes']['synopsis'],
        ),
      ],
    );
  }
}
