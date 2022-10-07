import 'package:adf_album_da_copa/app/core/ui/helpers/loader.dart';
import 'package:adf_album_da_copa/app/core/ui/helpers/messages.dart';
import 'package:adf_album_da_copa/app/core/ui/styles/button_styles.dart';
import 'package:adf_album_da_copa/app/core/ui/styles/text_styles.dart';
import 'package:adf_album_da_copa/app/core/ui/widgets/button.dart';
import 'package:adf_album_da_copa/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.i.yellowButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.i.yellowOutlineButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {
                showSuccess('SUCCEEESSSS');
              },
              style: ButtonStyles.i.primaryButton,
              child: const Text('Sucesso'),
            ),
            OutlinedButton(
              onPressed: () {
                showError('Erro no botão outLine');
              },
              style: ButtonStyles.i.primaryOutlineButton,
              child: const Text('Erro'),
            ),
            const TextField(),
            Button(
              onPressed: () async {
                showLoader();
                await Future.delayed(const Duration(seconds: 4));
                hideLoader();
              },
              style: ButtonStyles.i.primaryButton,
              labelStyle: context.textStyles.textPrimaryFontBold,
              label: 'Show Loader',
            ),
            Button.primary(
              onPressed: () {
                showInfo('infoo info');
              },
              width: MediaQuery.of(context).size.width * .8,
              height: 30,
              label: 'Info',
            ),
            RoundedButton(
              icon: Icons.add,
              onPressed: () async {
                showLoader();
                await Future.delayed(const Duration(seconds: 4));
                hideLoader();
              },
            ),
          ],
        ),
      ),
    );
  }
}
