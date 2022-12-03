import 'package:flutter/material.dart';
class MaisSobreAnimacoesExplicutasConstruidas extends StatefulWidget {
  const MaisSobreAnimacoesExplicutasConstruidas({super.key});

  @override
  State<MaisSobreAnimacoesExplicutasConstruidas> createState() => _MaisSobreAnimacoesExplicutasConstruidasState();
}

class _MaisSobreAnimacoesExplicutasConstruidasState extends State<MaisSobreAnimacoesExplicutasConstruidas>  with SingleTickerProviderStateMixin {

 late AnimationController _animationController;

late Animation _animation;

@override
void initState() {
  super.initState();

  _animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3)
  );

_animation = Tween<Offset>(
  begin: Offset(0, 0), 
  end: Offset(180, 180)
  ).animate(_animationController);

}

  @override
  Widget build(BuildContext context) {
   
   _animationController.forward();
    
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: AnimatedBuilder(
         animation: _animation,
         child: Stack(
          children: [
            Positioned(
              child: Image.asset("imagem/unitel.webp"),
              top: 0,
              left: 0,
              width: 150,
              height: 150,
              )
          ],
         ),
         builder: (context, widget){

          //Metodo para movimentar
           return Transform.translate(
             offset: _animation.value,
             child: widget,  
          );

          /*
          Metodo para alargar
           return Transform.scale(
             scale: _animation.value,
             child: widget,
           );
           
          */

           /*
           Metodo para rodar
            return Transform.rotate(
              angle: _animation.value,
              child: widget,
              );
            */
         },
      ),
    );
  }
}