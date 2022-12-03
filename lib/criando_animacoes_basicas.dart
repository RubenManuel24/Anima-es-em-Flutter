import 'package:flutter/material.dart';
class CriandoAnimacoesBasicas extends StatefulWidget {
  const CriandoAnimacoesBasicas({super.key});

  @override
  State<CriandoAnimacoesBasicas> createState() => _CriandoAnimacoesBasicasState();
}

class _CriandoAnimacoesBasicasState extends State<CriandoAnimacoesBasicas> {
  
  bool _estado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meu App"),
      ),
      
      /*
      body: AnimatedContainer(
        duration: Duration(
          seconds: 2),
          color: Colors.green,
          padding: EdgeInsets.all(10),
          height: _estado ? 0 : 600,
        ),
        */

        
        /*
        body: AnimatedContainer(
        duration: Duration(
          seconds: 2 ),
          color: Colors.green,
          padding: EdgeInsets.only(top: 10, bottom: 100),
          alignment: _estado ? Alignment.bottomCenter : Alignment.topCenter,
          child: AnimatedOpacity(
            opacity: _estado ? 1 : 0, 
            duration: Duration(seconds: 10),
            curve: Curves.easeOutBack,
            child:Container(
                      height: 50,
                      child: Icon(Icons.airplanemode_active,
                      size: 50,
                      color: Color.fromARGB(255, 250, 227, 23),
                         ) ,
                     ),
            )
      ),
      */

      body: GestureDetector(
        onTap: (){
          setState(() {
            _estado = !_estado;
          });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
          alignment: Alignment.center,
          width: _estado ? 60 : 170,
          height: 60,
          decoration: BoxDecoration(
             color: _estado ? Colors.blue : Color.fromARGB(255, 216, 111, 245),
             borderRadius: BorderRadius.circular(30)
          ) ,
          child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 200),
                      opacity: _estado ? 1 : 0, 
                      child: Icon(Icons.person_add, color: Colors.white)
                      ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 200),
                      opacity: _estado ? 0 : 1, 
                      child: Text("Enviar mensagem", style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue 
                          ),) ,
                      ),
                  )
                ],
              )

          )
          
          
          /*_estado ? Icon(Icons.person_add, color: Colors.white)
                         : Text("Enviar", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue 
                          ),)*/
      ),

       
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(       
        backgroundColor: Colors.brown,
        elevation: 10,
        child: Icon(Icons.add_box),
        onPressed:
          (){
            setState(() {
              _estado = !_estado;
            });
          }
        ),

    );
  }
}