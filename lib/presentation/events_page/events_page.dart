import '../events_page/widgets/events_item_widget.dart';
import 'controller/events_controller.dart';
import 'models/events_item_model.dart';
import 'models/events_model.dart';
import 'package:flutter/material.dart';
import 'package:mumshad_s_application5/core/app_export.dart';

class EventsPage extends StatelessWidget {
  EventsController controller = Get.put(EventsController(EventsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 26,
                  right: 28,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          18,
                        ),
                      );
                    },
                    itemCount: controller
                        .eventsModelObj.value.eventsItemList.value.length,
                    itemBuilder: (context, index) {
                      EventsItemModel model = controller
                          .eventsModelObj.value.eventsItemList.value[index];
                      return EventsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
