import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/boleto_info/boleto_info_widget.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class MeusBoletosPage extends StatefulWidget {
  const MeusBoletosPage({Key? key}) : super(key: key);

  @override
  State<MeusBoletosPage> createState() => _MeusBoletosPageState();
}

class _MeusBoletosPageState extends State<MeusBoletosPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          child: Stack(
            children: [
              Container(
                color: AppColors.primary,
                height: 40,
                width: double.maxFinite,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: BoletoInfoWidget(size: 14),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Row(
            children: [
              Text(
                "Meus Boletos",
                style: TextStyles.titleBoldHeading,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Divider(
            thickness: 1,
            height: 1,
            color: AppColors.stroke,
          ),
        ),
        //BoletoListWidget()
      ],
    );
  }
}
