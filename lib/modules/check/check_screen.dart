import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check Page'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Predict Your Heart Disease',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  _buildDropdownField('Gender', ['Male', 'Female']),
                  _buildTextField('Age', TextEditingController()),
                  _buildDropdownField('CP', ['Type 1', 'Type 2', 'Type 3']),
                  _buildTextField('REST ECG', TextEditingController()),
                  _buildDropdownField('TREST BPS', ['Normal', 'High']),
                  _buildTextField('Max. Heart Rate', TextEditingController()),
                  _buildDropdownField('Exercise Induced Angina', ['Yes', 'No']),
                  _buildTextField('ST Depression Induced by Exercise',
                      TextEditingController()),
                  _buildDropdownField(
                      'ST Slope', ['Upsloping', 'Flat', 'Downsloping']),
                  _buildTextField('CA', TextEditingController()),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement your logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                child: Text(
                  'Check Now',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orangeAccent),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              items: options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle change
              },
              hint: Text(
                'Select',
                style: TextStyle(fontSize: 14.sp),
              ),
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.orangeAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black87,
              fontWeight: FontWeight.bold),
        ),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.orangeAccent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Colors.orangeAccent),
            ),
          ),
        ),
      ],
    );
  }
}
