import 'package:flutter/material.dart';
import 'package:need_of_blood/app/widgets/custom_list_widget.dart';
import 'package:need_of_blood/common/app_colors/appColors.dart';
class ViewAllDonorPage extends StatefulWidget {
  const ViewAllDonorPage({super.key});

  @override
  State<ViewAllDonorPage> createState() => _ViewAllDonorPageState();
}

class _ViewAllDonorPageState extends State<ViewAllDonorPage> {
  List<bool> isSelected = List.generate(10, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,toolbarHeight: 80,
        backgroundColor: AppColros.maincolor,
        title: Text("All Donor List",style: TextStyle(fontSize: 25,color: AppColros.black, fontWeight: FontWeight.w500),),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/6,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: AppColros.maincolor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75)),
            ),
          ),
          SingleChildScrollView(
            child: Positioned(child:  ListView.builder(padding: EdgeInsets.only(left: 10,right: 10,top: 5),
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    isSelected[index] = !isSelected[index];

                  },
                  child: const CustomListWidget(),
                );
              },
            ),),
          )
        ],
      ),
    );
  }
}
