import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(MaterialApp(

    home: MyApp(),

  ));
}




      class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext ctx) {
          return Scaffold(
              appBar: AppBar(
              backgroundColor: Colors.blueAccent,
                title:Text('Computer Based Test-1',
                style:TextStyle(
                  fontWeight:FontWeight.bold,
                  color:Colors.white,
                  ),
                ),
              ),

            body:SafeArea(
              child:Container(
                color: Colors.blueGrey[50],
              child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[

                SizedBox(width:40.0,height:100.0,),

              CircleAvatar(
              radius:70.0,
              backgroundColor: Colors.red,
              backgroundImage:AssetImage('images/logo.png') ,),
                SizedBox(width:40.0,height:50.0,),
                Text('PES',
                  style:TextStyle(
                    fontSize:40.0,
                    fontWeight:FontWeight.bold,
                    color:Colors.blue[900],
                    ),
                ),
                Text('UNIVERSITY',
                  style:TextStyle(
                    fontSize:40.0,
                    color:Colors.red,
                    fontFamily:'Montserrat',),
                ),


                SizedBox(width:40.0,height:150.0,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget>[RaisedButton(
                  onPressed: (){
                    Navigator.push(ctx,MaterialPageRoute(builder:(ctx) => PageTwo()),);
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                        'Start Quiz',
                        style: TextStyle(fontSize: 20)
                    ),
                  ),
                ),],),
              ],
            ),),),
          );
        }
      }

      class PageTwo extends StatefulWidget {
        @override
        _PageTwoState createState() => _PageTwoState();
      }

      class _PageTwoState extends State<PageTwo> {
        var _list1 = ["select","a)ferromagnetism","b)ferrimagnetism","c)diamagnetism","d)paramagnetism"];
        var m="c)diamagnetism";
        var _currentItemSelected ='select';
        var counter=0;
        var x=0;
        @override
        Widget build(BuildContext ctx) {

          return Scaffold(
            appBar:AppBar(
              backgroundColor: Colors.blueAccent,
              title:Row(children:<Widget>[Text('Computer Based Test-1',
                  style:TextStyle(
                    color:Colors.white,)
              ),
                SizedBox(width:50.0,height:10.0,),
                CircleAvatar(
                  radius:20.0,
                  backgroundColor: Colors.red,
                  backgroundImage:AssetImage('images/logo.png') ,),
              ],),),
            body:Container(
              color: Colors.blueGrey[50],
              child: SafeArea(
              child:Column(
                children:<Widget>[

                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[
                      SizedBox(width:10.0,height:9.0,),
                      Card(
                        margin:EdgeInsets.symmetric(vertical:10.0,horizontal:15.0),
                        color:Colors.green,
                        child:Padding(padding:EdgeInsets.all(9.0), child:
                            Text('Question 1',
                              style:TextStyle(
                                fontSize:19.0,
                                color:Colors.white,),)
                        ),
                      ),],),
                  SizedBox(width:10.0,height:30.0,),
                  Container(
                    padding:EdgeInsets.only(left:10.0),
                    child:
                    Text(' A superconductor exhibits perfect',
                    style:TextStyle(
                      fontSize:25.0,
                      color:Colors.black,
                      fontFamily:'Arimo',),
                  ),),
                  SizedBox(width:double.infinity,height:20.0,child:Divider(color:Colors.grey,),//space between 2 widget
                  ),
                  SizedBox(width:10.0,height:60.0,),
                  Row(children:<Widget>[
                    SizedBox(width:120.0,height:80.0,),
                    Text('Click to select the option',
                      style:TextStyle(
                        fontSize:17.0,
                        color:Colors.black,),
                    ),],),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[

                      SizedBox(width:30.0,height:10.0,),

                      Container(
                        padding: const EdgeInsets.only(left:10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,
                            width: 2.0),
                            color:Colors.white),
                        child:DropdownButton<String>(
                    items: _list1.map((String dropDownStringItem){
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem,
                          style:TextStyle(
                          fontSize:20.0,
                          //fontWeight:FontWeight.bold,
                          color:Colors.black,),),
                          );}).toList(),
                    onChanged: (String newValueSelected){

                      setState(() {
                        this._currentItemSelected = newValueSelected;
                        if(_currentItemSelected==m){
                          this.x=1;
                        }else{
                          this.x=0;
                        }
                      });
                    },
                    value: _currentItemSelected,
                      ),),],),

                  SizedBox(width:30.0,height:120.0,),

                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children:<Widget>[RaisedButton(
                    onPressed: () {
                      Navigator.push(ctx,MaterialPageRoute(builder:(ctx) => PageThree(x)),);
                    },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                            'Next',
                            style: TextStyle(fontSize: 20)
                        ),
                      ),
                  ),],),

            ],),),
            ),
          );
        }
      }



      class PageThree extends StatefulWidget {
        var x;
        var y=10;
        PageThree(this.x,{Key key}) : super(key: key);

        @override
        _PageThreeState createState() => _PageThreeState();
      }

      class _PageThreeState extends State<PageThree> {

        var _list2 = ['select','a)toluene','b)benzoic acid','c)phenol','d)benzene'];
        var _currentItemSelected ='select';
        var m="c)phenol";
        var counter=0;
        var l=0;

        @override
        Widget build(BuildContext ctx) {

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title:Row(children:<Widget>[Text('Computer Based Test-1',
                  style:TextStyle(
                    color:Colors.white,)
              ),
                SizedBox(width:50.0,height:10.0,),
                CircleAvatar(
                  radius:20.0,
                  backgroundColor: Colors.red,
                  backgroundImage:AssetImage('images/logo.png') ,),
            ],),),
            body:Container(
              color: Colors.blueGrey[50],
              child: SafeArea(
                child:Column(
                  children:<Widget>[
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget>[
                    SizedBox(width:10.0,height:9.0,),
                    Card(
                      margin:EdgeInsets.symmetric(vertical:10.0,horizontal:15.0),
                      color:Colors.green,
                      child:Padding(padding:EdgeInsets.all(9.0), child:
                        Text('Question 2',
                        style:TextStyle(
                          fontSize:19.0,
                          color:Colors.white,),)
                      ),
                    ),],),
                  SizedBox(width:10.0,height:30.0,),
                  Container(
                  padding:EdgeInsets.only(left:10.0),
                  child:
                    Text('A compound that undergoes bromination easily is',
                      style:TextStyle(
                        fontSize:25.0,
                        color:Colors.black,
                        fontFamily:'Arimo',),
                    ),),
                    SizedBox(width:double.infinity,height:20.0,child:Divider(color:Colors.grey,),
                    ),
                    SizedBox(width:10.0,height:60.0,),
                    Row(children:<Widget>[
                      SizedBox(width:120.0,height:80.0,),
                      Text('Click to select the option',
                        style:TextStyle(
                          fontSize:17.0,
                          color:Colors.black,),
                      ),],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget>[

                        SizedBox(width:30.0,height:10.0,),

                        Container(
                      padding: const EdgeInsets.only(left:10.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,
                              width: 2.0),
                          color:Colors.white),
                      child:
                          DropdownButton<String>(
                          items: _list2.map((String dropDownStringItem){
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem,
                                style:TextStyle(
                                  fontSize:20.0,
                                  color:Colors.black,), ),
                            );
                    }).toList(),
                    onChanged: (String newValueSelected){
                      setState(() {
                        this._currentItemSelected = newValueSelected;
                        l++;
                        if(_currentItemSelected==m){
                          counter++;
                          if(counter==1 || widget.y==widget.x){
                            widget.y=widget.x+1;
                          }}else{
                          widget.y=widget.x;
                        }

                      });
                    },
                    value: _currentItemSelected,
                  ),),],),

                    SizedBox(width:30.0,height:100.0,),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children:<Widget>[
                        RaisedButton(
                          onPressed: () {
                            if(l==0) {
                              Navigator.push(ctx,
                                MaterialPageRoute(builder: (ctx) => PageFour(widget.x)),);
                            }else{
                              Navigator.push(ctx,
                                MaterialPageRoute(builder: (ctx) => PageFour(widget.y)),);
                                }
                              },
                              textColor: Colors.white,
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF0D47A1),
                                        Color(0xFF1976D2),
                                        Color(0xFF42A5F5),
                                      ],
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: const Text(
                                      'Next',
                                      style: TextStyle(fontSize: 20)
                      ),
                    ),
                  ),],),

                  ],),),
            ),
          );
        }
      }



class PageFour extends StatefulWidget {
          var y;
          var z=10;
          PageFour(this.y, {Key key}): super(key: key);
          @override
          _PageFourState createState() => _PageFourState();
        }

          class _PageFourState extends State<PageFour> {

            var _list3 = ['select','a)amphoteric acid','b)aprotic solvent','c)protophobic solvent','d)protophilic solvent'];
            var _currentItemSelected ='select';
            var m='a)amphoteric acid';
            var counter=0;
            var l=0;

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title:Row(children:<Widget>[Text('Computer Based Test-1',
            style:TextStyle(
            color:Colors.white,)
            ),
            SizedBox(width:50.0,height:10.0,),
            CircleAvatar(
                radius:20.0,
                backgroundColor: Colors.red,
                backgroundImage:AssetImage('images/logo.png') ,),
                ],),),
            body:Container(
            color: Colors.blueGrey[50],
              child: SafeArea(
               child:Column(
                children:<Widget>[

               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children:<Widget>[
                   SizedBox(width:10.0,height:9.0,),
                   Card(
                     margin:EdgeInsets.symmetric(vertical:10.0,horizontal:15.0),
                     color:Colors.green,
                     child:Padding(padding:EdgeInsets.all(9.0), child:
                     Text('Question 3',
                       style:TextStyle(
                         fontSize:19.0,
                         color:Colors.white,),)
                     ),
                   ),],),
                SizedBox(width:10.0,height:30.0,),
                Container(
                  padding:EdgeInsets.only(left:10.0),
                  child:
                  Text('Water is a',
                    style:TextStyle(
                      fontSize:25.0,
                      color:Colors.black,
                      fontFamily:'Arimo',),
                  ),),
                  SizedBox(width:double.infinity,height:20.0,child:Divider(color:Colors.grey,),//space between 2 widget
                  ),
                  SizedBox(width:10.0,height:60.0,),
                  Row(children:<Widget>[
                    SizedBox(width:120.0,height:80.0,),
                    Text('Click to select the option',
                      style:TextStyle(
                        fontSize:17.0,
                        color:Colors.black,),
                    ),],),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children:<Widget>[

                      SizedBox(width:30.0,height:10.0,),

                      Container(
                          padding: const EdgeInsets.only(left:10.0),
                          decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,
                          width: 2.0),
                          color:Colors.white),
                          child:
                          DropdownButton<String>(
                            items: _list3.map((String dropDownStringItem){
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem,
                                  style:TextStyle(
                                    fontSize:20.0,
                                    color:Colors.black,),),
                              );
                              }).toList(),

                              onChanged: (String newValueSelected){
                                setState(() {
                                  l++;
                                  this._currentItemSelected = newValueSelected;
                                  if(_currentItemSelected==m){
                                    counter++;
                                    if(counter==1 || widget.z==widget.y){
                                      widget.z=widget.y+1;
                                    }}else{
                                    widget.z=widget.y;
                                  }
                                  });
                                },
                                value: _currentItemSelected,
                      ),),],),

                      SizedBox(width:30.0,height:100.0,),

                      Row(mainAxisAlignment: MainAxisAlignment.end,
                      children:<Widget>[
                        RaisedButton(
                          onPressed: () {
                            if(l==0) {
                              Navigator.push(ctx,
                                MaterialPageRoute(builder: (ctx) => PageFive(widget.y)),);
                            }
                            else{
                              Navigator.push(ctx,
                                MaterialPageRoute(builder: (ctx) => PageFive(widget.z)),);
                            }
                          },
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFF0D47A1),
                                  Color(0xFF1976D2),
                                  Color(0xFF42A5F5),
                                ],
                              ),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                                'Marks',
                                style: TextStyle(fontSize: 20)

                ),
              ),
            ),],),

    ],),),
    ),
    );
  }
}


class PageFive extends StatefulWidget {
            var z;
            PageFive(this.z, {Key key}): super(key: key);
            @override
            _PageFiveState createState() => _PageFiveState();
          }

class _PageFiveState extends State<PageFive> {


  @override
  Widget build(BuildContext ctx) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:Row(children:<Widget>[Text('Computer Based Test-1',
            style:TextStyle(
              color:Colors.white,)
        ),
          SizedBox(width:50.0,height:10.0,),
          CircleAvatar(
            radius:20.0,
            backgroundColor: Colors.red,
            backgroundImage:AssetImage('images/logo.png') ,),
        ],),),

      body:Container(
        color: Colors.blueGrey[50],
        child:SafeArea(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text('TOTAL MARKS',
                  style:TextStyle(
                    fontSize:40.0,
                    fontWeight:FontWeight.bold,
                    color:Colors.blue[900],
                    fontFamily:'Ultra.ttf',),
                ),
              ],),
            Text('${widget.z}',
              style:TextStyle(
                fontSize:40.0,
                fontWeight:FontWeight.bold,
                color:Colors.blue[900],
                fontFamily:'Ultra.ttf',),
            ),
            SizedBox(width:10.0,height:10.0,),//space between 2 widgets

            RaisedButton(
              onPressed: () {
                Navigator.popUntil(ctx, ModalRoute.withName(Navigator.defaultRouteName));
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: const Text(
                    'FINISH',
                    style: TextStyle(fontSize: 20)

                ),
              ),
            ),
          ],),
      ),), );
  }
}
