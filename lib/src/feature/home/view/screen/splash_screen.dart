import 'package:electronic_rosary/src/feature/home/view/screen/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
    void initState(){
        super.initState();
        Future.delayed(const Duration(seconds: 10),(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyHomePage()));
        });
        }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 156, 156),
        body: Center(
          child: Column(
            children: [
             const SizedBox(height: 200,),
              Image.asset('img/pngtree-muslims-pray-with-tasbih-png-image_6293310.png', fit: BoxFit.fill , errorBuilder: (context, error, stackTrace){
                return const Icon(
                    Icons.error_outline,
                    size: 100,
                    color: Colors.red,
                );
              },),
              const SizedBox(height: 20,),
              const Text('مسبحه الكترونيه', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,)),
              const SizedBox(height: 20,),
              const CircularProgressIndicator(color:Colors.white,),
            ],
          ),
        ),
    );
  }
}