import 'package:flutter/material.dart';
class AnimacoesExplicitasConstruidas extends StatefulWidget {
  const AnimacoesExplicitasConstruidas({super.key});

  @override
  State<AnimacoesExplicitasConstruidas> createState() => _AnimacoesExplicitasConstruidasState();
}

class _AnimacoesExplicitasConstruidasState extends State<AnimacoesExplicitasConstruidas> with SingleTickerProviderStateMixin{

 late AnimationController _animationController;

  AnimationStatus? _animationStatus;

 late Animation<double>  _animation;

 @override
 void initState() {
   super.initState();
   _animationController = AnimationController(
     duration: Duration(seconds: 10),
     vsync: this
   )..repeat()..addStatusListener((status) { 
       _animationStatus = status;
   });

   _animation = CurvedAnimation(
      parent: _animationController, 
      curve: Curves.easeInOut);
   
 }

 @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) { 
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 500,
            height: 400,
            child: RotationTransition(
              alignment: Alignment.center,
              child: Image.asset("imagem/unitel.webp"),
              turns: _animation
              ),
          ),
          TextButton(
            onPressed: (){
              
              if( _animationStatus == AnimationStatus.dismissed){
                 
                 _animationController.forward();

              }
              else{

                _animationController.reverse();

              }
              

            }, 
            child: Text("Presione", 
              style: TextStyle(
                color: Colors.black
              ),
            )
          )
        ],
      ),
    );
  }
}