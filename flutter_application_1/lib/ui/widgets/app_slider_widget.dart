import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/app_colors.dart';
import 'package:flutter_application_1/models/slider_item_model.dart';
import 'package:flutter_application_1/ui/widgets/app_slider_item.dart';

class AppSliderWidget extends StatefulWidget {
  const AppSliderWidget({super.key, required this.list});
  final List<SliderItemModel> list;

  @override
  State<AppSliderWidget> createState() => _AppSliderWidgetState();
}

class _AppSliderWidgetState extends State<AppSliderWidget> {
  int _index = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:Column(
        mainAxisSize: MainAxisSize.min,
  
        children: [
          SizedBox(
            height:135,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.5,initialPage: 1),
              onPageChanged: (value) {
                setState(() {
                _index = value;
                });
              },
              itemCount: widget.list.length,
              itemBuilder: (context, index){
              return Padding(
                padding:  EdgeInsets.only(left: 19, right: widget.list.length==(index+1)?19:0,top: 39,bottom: 19),
                child: AppSliderItem(title: widget.list[index].title, subTitle: widget.list[index].subTitle),
              );
            }),
          ),
          SizedBox(
            height: 10,
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: widget.list.length,
                itemBuilder: (context, index){
                return Icon( Icons.lens, color:_index==index? AppColors.darkBlue.withOpacity(0.66): AppColors.darkBlue,size: _index==index?10:5,);
              }),
            ),
          )
        ],
      ),
    );
  }
}