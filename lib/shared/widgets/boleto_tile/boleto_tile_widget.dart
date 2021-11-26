import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel data;
  const BoletoTileWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BoletoListController controller;
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          data.name!,
          style: TextStyles.titleListTile,
        ),
        subtitle: Text(
          "Vence em ${data.dueDate}",
          style: TextStyles.captionBody,
        ),
        trailing: Text.rich(
          TextSpan(
            text: "R\$",
            style: TextStyles.trailingRegular,
            children: [
              TextSpan(
                text: "${data.value!.toStringAsFixed(2)}",
                style: TextStyles.trailingBold,
              )
            ],
          ),
        ),
        onLongPress: () {
          showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 150,
                  color: AppColors.stroke,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Column(
                        children: [
                          ElevatedButton(
                              child: const Text('Sair'),
                              onPressed: () => Navigator.pop(context)),
                          ElevatedButton(
                              child: const Text('Apagar'),
                              onPressed: () {
                                //controller.deleteBoleto()
                              }),
                        ],
                      ),
                    ],
                  )),
                );
              });
        },
      ),
    );
  }
}
