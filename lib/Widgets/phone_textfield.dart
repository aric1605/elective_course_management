import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class PhoneTextfield extends StatefulWidget {
  const PhoneTextfield({super.key});

  @override
  State<PhoneTextfield> createState() => _PhoneTextfieldState();
}

class _PhoneTextfieldState extends State<PhoneTextfield> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? _selectedCountryCode;
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () async {
            final picked = await countryPicker.showPicker(context: context);
            if (picked != null) {
              setState(() {
                _selectedCountryCode = picked;
              });
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF999EA1), width: 1.5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Text(
                  _selectedCountryCode?.code ?? "IN",
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(width: 8),
                Text(
                  _selectedCountryCode?.dialCode ?? "+91",
                  style: const TextStyle(fontSize: 16),
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Enter phone number',
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFF999EA1),
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xFF4E0189),
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
