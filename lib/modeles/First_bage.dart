import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';
import '../cubit/state.dart';

class FirstBage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CountCubit(),

      child: BlocConsumer<CountCubit,CounterState>(
        listener: (context,state){},
        builder: (context,state){
         var Cubit = CountCubit.get(context);
          return Scaffold(appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text('By use the Bloc ',
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        CircleAvatar(
                          radius: 40,
                          child: IconButton(icon:Icon(Icons.add,size: 35,),
                            onPressed: (){
                            Cubit.add();
                            },alignment: Alignment.center,),
                        ),
                      SizedBox(width: 20,),
                      Text('${Cubit.counter}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20,),
                        CircleAvatar(
                          radius: 40,
                          child: IconButton(icon:Icon(Icons.remove,size: 35,),
                            onPressed: (){Cubit.minece();},alignment: Alignment.center,),
                        ),
                      ]),
                ],
              ),
            ),

          );
        },


      ),
    );
  }
}
