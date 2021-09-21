// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:provider/provider.dart';

// import '../../../../config/localization/localization.dart';
// import '../../../bloc/auth_store.dart';
// import '../../widget/button/label_button_widget.dart';
// import '../../widget/button/primary_button_widget.dart';
// import '../../widget/card/form_card_widget.dart';
// import '../../widget/form/form_input_field_with_icon_widget.dart';
// import '../../widget/layout/auth_layout.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({
//     Key? key,
//   }) : super(key: key);
//   static const String $PATH = '/LoginPage';
//   @override
//   Widget build(BuildContext context) {
//     return AuthLayout(
//       child: LoginForm(),
//     );
//   }
// }

// class LoginForm extends StatelessWidget {
//   LoginForm({Key? key}) : super(key: key);

//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     final AuthStore authStore = context.read<AuthStore>();
//     final _tr = context.localizations;
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Align(
//           alignment: AlignmentDirectional.topStart,
//           child: Observer(
//             builder: (context) => Text(
//               _tr.auth.signInButton,
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 24),
//         FormCard(
//           children: <Widget>[
//             //  const LanguageIconDropDownPickerWidget(),
//             Form(
//               key: formKey,
//               child: Column(
//                 children: <Widget>[
//                   Observer(
//                     builder: (_) => FormInputFieldWithIconWidget(
//                       iconPrefix: Icons.email_outlined,
//                       labelText: _tr.auth.emailFormField,
//                       errorText: authStore.isEmailVAlid,
//                       keyboardType: TextInputType.emailAddress,
//                       next: TextInputAction.next,
//                       onChanged: authStore.setEmail,
//                     ),
//                   ),
//                   Observer(
//                     builder: (_) => FormInputFieldWithIconWidget(
//                       obscureText: authStore.isPassObsecure,
//                       iconPrefix: Icons.password,
//                       iconSuffix: authStore.isPassObsecure
//                           ? Icons.visibility_off
//                           : Icons.visibility,
//                       labelText: 'Password',
//                       onSuffixTap: authStore.togglePassword,
//                       next: TextInputAction.next,
//                       errorText: authStore.isPsswordValid,
//                       //  validator: ValidatorUtil.email,
//                       keyboardType: TextInputType.number,
//                       onChanged: authStore.setPassword,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Observer(
//               builder: (context) => PrimaryButtonWidget(
//                 color: Colors.amber,
//                 labelText: _tr.auth.signInButton,
//                 onPressed: () {},
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 24),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             LabelButtonWidget(
//               labelText: "Reset Password",
//               color: Colors.red,
//               onPressed: () {},
//             ),
//             LabelButtonWidget(
//               color: Colors.blue,
//               labelText: "SignUp",
//               onPressed: () {
//                 // Navigator.pushNamedAndRemoveUntil(
//                 //     context, RegisterPage.$PATH, (_) => false);
//                 Navigator.pushNamed(context, RegisterPage.$PATH);
//               },
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
