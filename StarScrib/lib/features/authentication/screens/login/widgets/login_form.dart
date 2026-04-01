import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:starscrib/common/widgets/button/elevated_button.dart';
import 'package:starscrib/utils/constants/sizes.dart';
import 'package:starscrib/utils/constants/texts.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.user),
            labelText: UTexts.email
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),
        
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.lock),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye)
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                Text(UTexts.rememberMe)
              ],
            ),
            TextButton(
              onPressed: (){},
              child: Text(UTexts.forgotPassword),
            )
          ],
        ),
        SizedBox(height: USizes.spaceBtwSections),
    
        UElevatedButton(onPressed: (){}, child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwItems / 2),
    
        UElevatedButton(onPressed: (){}, child: Text(UTexts.createAccount)),
      ],
    );
  }
}