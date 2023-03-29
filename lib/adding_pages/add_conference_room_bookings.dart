import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class AddConferenceRoomBookings extends StatefulWidget {
  const AddConferenceRoomBookings({Key? key}) : super(key: key);

  @override
  State<AddConferenceRoomBookings> createState() => _AddConferenceRoomBookingsState();
}

class _AddConferenceRoomBookingsState extends State<AddConferenceRoomBookings> {
  DateTime startDateTime=DateTime(2023,03,29,5,30);
  DateTime endDateTime = DateTime(2023,03,29,5,30);

  @override
  Widget build(BuildContext context) {
    final hours=startDateTime.hour.toString().padLeft(2,'0');
    final minutes=startDateTime.minute.toString().padLeft(2,'0');
    return Scaffold(
       appBar: AppBar(title: Text('conference room booking'),centerTitle: true,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.all(25.0),
          child: Column(

            children: <Widget> [

              const TextField(
               autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Booking Id",
                    labelText: 'Booking Id',
                    labelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    ),
              ),SizedBox(height: 20.0,),
              TextField(
                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Company Id",
                  labelText: 'Company Id',
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),SizedBox(height: 20.0,),
              TextField(
                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Conference room  Id",
                  labelText: 'conference room Id',
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),SizedBox(height: 20.0,),
              Row(

                children: [
                 Text("select start date and time: ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Container(
                      margin: EdgeInsets.all(10),
                      child:

                      ElevatedButton(onPressed: pickStartDateTime

                          , child: Text('${startDateTime.day}/${startDateTime.month}/${startDateTime.year}  ${startDateTime.hour}:${startDateTime.minute}'))
                  ),
                ],
              ),SizedBox(height: 20.0,),Row(
                children: [

                  Text("select End date and time: ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Container(
                    margin: EdgeInsets.all(10),
                    child:

                    ElevatedButton(onPressed: pickEndDateTime

                        , child: Text('${endDateTime.day}/${endDateTime.month}/${endDateTime.year}  ${endDateTime.hour}:${endDateTime.minute}'))
                  )],
              ),SizedBox(height: 20.0,),
              const TextField(
                autocorrect: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Invoice Amount",
                  labelText: 'Enter Invoice Amount',
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.currency_rupee)
                ),
              ),const SizedBox(height: 20,),
              const TextField(

                autocorrect: true,
                maxLines: 5,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write Problem Description",
                    labelText: 'Describe your problem',
                    labelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    prefix: Icon(Icons.comment)),
              ),Container(margin:EdgeInsets.all(20.0),child: ElevatedButton(onPressed: null, child: Text("Add")))

            ],
          ),
        ),
      ),
    );
  }
  Future pickStartDateTime()async{
    DateTime? date = await pickStartDate();
    if (date== null) return;
    TimeOfDay? time= await pickStartTime();
    if (time==null) return;

    final dateTime= DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute
    );
    setState(() {
      startDateTime=dateTime;
    });
  }
   Future<DateTime?>pickStartDate() => showDatePicker(
      context: context, initialDate: startDateTime, firstDate: DateTime(2014), lastDate: DateTime(2500));
   Future<TimeOfDay?>pickStartTime() => showTimePicker(context: context, initialTime: TimeOfDay(hour: startDateTime.hour, minute: startDateTime.minute));
   Future pickEndDateTime()async{
    DateTime? date = await pickStartDate();
    if (date== null) return;
    TimeOfDay? time= await pickStartTime();
    if (time==null) return;

    final dateTime= DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute
    );
    setState(() {
      endDateTime=dateTime;
    });
  }
  Future<DateTime?>pickEndDate() => showDatePicker(
      context: context, initialDate: endDateTime, firstDate: DateTime(2014), lastDate: DateTime(2500));
  Future<TimeOfDay?>pickEndTime() => showTimePicker(context: context, initialTime: TimeOfDay(hour: endDateTime.hour, minute: endDateTime.minute));
}
