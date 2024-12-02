// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
import 'package:need_of_blood/utils/app_images/app_images.dart';
import 'package:need_of_blood/utils/app_strings/app_strings.dart';
import 'package:need_of_blood/view/components/custom_royel_appbar/custom_royel_appbar.dart';
class NeedOfBloodScreen extends StatelessWidget {
  const NeedOfBloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: CustomRoyelAppbar(titleName: AppStrings.needOfBloodInfo),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              //color: AppColros.maincolor,
              gradient: LinearGradient(colors:
              [AppColros.l1,
                AppColros.l2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)
              ),
            ),child: CustomRoyelAppbar(titleName: AppStrings.needOfBloodInfo),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
                  child: Column(
                    children: [
                      Text("Materials:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      Text("- Reloj con segundero o cronómetro\n- Termómetro digital (rectal o de oído)", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),),
                      SizedBox(height: 20,),
                      Center(child: Text("Comprueba el ritmo cardíaco:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                      Center(child: Image(image: AssetImage(AppImages.sliderimage1))),
                      SizedBox(height: 5,),
                      Text("Perros:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      Text("1. Ubica la mano en el pecho del animal, cerca del corazón.\n2. Cuenta las pulsaciones durante 15 segundos\n3. Multiplica el número por 4 para obtener las pulsaciones por minuto\n4. Valores normales: 60 a 140 latidos por minuto.", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
                      SizedBox(height: 10,),
                      Text("Gatos:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      Text("1. Sujeta la pata delantera del gato con suavidad.\n2. Presiona con el dedo pulgar la almohadilla plantar.\n3. Cuenta las pulsaciones durante 15 segundos.\n4. Multiplica el número por 4 para obtener las pulsaciones por minuto.\n5. Valores normales: 110 a 200 latidos por minuto.", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
                      SizedBox(height: 20,),
                      Center(child: Text("Comprueba la frecuencia respiratoria:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                      SizedBox(height: 20,),
                      Center(child: Image(image: AssetImage(AppImages.sliderimage1))),
                      SizedBox(height: 20,),
                      Text("1. Observa al animal en reposo durante un minuto\n2. Cuenta las veces que se expande el pecho.\n3. Valores normales: \n   ° Perros: 12 a 24 respiraciones por minuto\n   ° Gatos: 15 a 30 respiraciones por minuto.", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
                      Center(child: Text("Comprueba la temperatura corporal", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                      Center(child: Image(image: AssetImage(AppImages.sliderimage1))),
                      SizedBox(height: 5,),
                      Text("1.Vía rectal:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      Text("- Introduce el termómetro suavemente en el ano del animal a una profundidad de 1-2 cm.\n- Espera 1 minuto.\n- Retira el termómetro y lee la temperatura\n", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
                      SizedBox(height: 5,),
                      Text("2.Vía auditiva (solo gatos):", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      Text("- Introduce el termómetro suavemente en el ano del animal a una profundidad de 1-2 cm.\n- Espera 1 minuto.\n- Retira el termómetro y lee la temperatura\n", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
                      SizedBox(height: 5,),
                      Text("3. Valores normales:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                      Text("- Introduce el termómetro suavemente en el ano del animal a una profundidad de 1-2 cm.\n- Espera 1 minuto.\n- Retira el termómetro y lee la temperatura\n", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,),),
            
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
