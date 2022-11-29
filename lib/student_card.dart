import 'package:flutter/material.dart';
import 'student.dart';
class studentCard extends StatefulWidget {
  final student students;
  const studentCard(this.students, {Key? key}) : super(key: key);

  @override
  State<studentCard> createState() => _studentCardState();
}

class _studentCardState extends State<studentCard> {
  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('student Details',
          style: const TextStyle(fontSize: 30,color: Colors.blue,backgroundColor: Colors.black12),),
          content: Text(widget.students.toString(),
          style: const TextStyle(fontSize: 25),),
          actions: [
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              label: const Text('Close'),
            ),
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                       const Text(' ',style: TextStyle(fontSize: 30,color: Colors.blue),),
                       Text(widget.students.name,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text('Id: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(widget.students.id,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                  Row(
                    children: [
                      const Text('mark is ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(widget.students.id,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: (){
                      widget.students.fav=!(widget.students.fav);
                      setState(() {

                      });
                    },
                    icon: widget.students.fav? Icon(Icons.delete):Icon(Icons.delete),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}