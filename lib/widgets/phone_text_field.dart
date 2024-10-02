// import 'package:flutter/material.dart';
// import 'package:country_picker/country_picker.dart';

// class PhoneNumberField extends StatefulWidget {
//   @override
//   _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
// }

// class _PhoneNumberFieldState extends State<PhoneNumberField> {
//   Country _selectedCountry = Country(
//       phoneCode: '1',
//       countryCode: 'US',
//       e164Sc: 0,
//       geographic: true,
//       level: 1,
//       name: 'United States',
//       example: '2012345678',
//       displayName: 'United States',
//       fullExampleWithPlusSign: '+12012345678',
//       displayNameNoCountryCode: 'United States',
//       e164Key: '1-US-0');
//   TextEditingController _phoneNumberController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         InkWell(
//           onTap: () {
//             showCountryPicker(
//               context: context,
//               showPhoneCode: true,
//               onSelect: (Country country) {
//                 setState(() {
//                   _selectedCountry = country;
//                 });
//               },
//             );
//           },
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.circular(5.0),
//             ),
//             child: Text('+${_selectedCountry.phoneCode}'),
//           ),
//         ),
//         SizedBox(width: 8.0),
//         Expanded(
//           child: TextField(
//             controller: _phoneNumberController,
//             keyboardType: TextInputType.phone,
//             decoration: InputDecoration(
//               hintText: 'Phone Number',
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5.0),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
