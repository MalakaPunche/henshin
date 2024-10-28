import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../common/Henshin_theme.dart';
import '../common/Henshin_widgets.dart';
import '../request_summary/request_summary_widget.dart';
import '../home_page.dart';
class RequestServicePage1Widget extends StatefulWidget {
  const RequestServicePage1Widget({Key? key}) : super(key: key);

  @override
  RequestServicePage1WidgetState createState() => RequestServicePage1WidgetState();
}

class RequestServicePage1WidgetState extends State<RequestServicePage1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _requirementsController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future<String?> uploadImage(File image) async {
    try {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference storageReference = FirebaseStorage.instance.ref().child('images/$fileName');
      UploadTask uploadTask = storageReference.putFile(image);
      await uploadTask;
      return await storageReference.getDownloadURL();
    } catch (e) {
      print('Error uploading image: $e');
      return null;
    }
  }

  void navigateToSummary() async {
    double price = double.tryParse(_priceController.text) ?? 0;
    List<String> requirements = _requirementsController.text.split('\n');
    String description = _descriptionController.text; // Retrieve description
    String? imageUrl;
    if (_image != null) {
      imageUrl = await uploadImage(_image!);
    }

    try {
      // Save data to Firestore
      await FirebaseFirestore.instance.collection('service_requests').add({
        'price': price,
        'requirements': requirements,
        'description': description, // Use description here
        'timestamp': FieldValue.serverTimestamp(),
        'imageUrl': imageUrl,
      });

      // Navigate to summary page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RequestSummaryWidget(
            price: price,
            requirements: requirements,
            description: description, // Pass description to summary page
            imageUrl: imageUrl ?? '', // Provide a default empty string if imageUrl is null
          ),
        ),
      );
    } catch (e) {
      print('Error saving to Firestore: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save data: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: HenshinTheme.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        // title: const Text('Request Service'),
        // elevation: 0,
      ),
      // Add gradient background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: HenshinTheme.primaryGradient,
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Anything You EverNeed',
                    style: HenshinTheme.title2.copyWith(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'We Help With What You Need',
                    style: HenshinTheme.bodyText1.override(
                      fontFamily: 'NatoSansKhmer',
                      color: Colors.white.withOpacity(0.8),
                      useGoogleFonts: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F7FE),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: HenshinTheme.bodyText1.override(
                              fontFamily: 'NatoSansKhmer',
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _descriptionController,
                            maxLines: 3,
                            decoration: InputDecoration(
                              hintText: 'Briefly describe what you need',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Price',
                            style: HenshinTheme.bodyText1.override(
                              fontFamily: 'NatoSansKhmer',
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _priceController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter your desired price',
                              prefixText: '\$',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Requirements',
                            style: HenshinTheme.bodyText1.override(
                              fontFamily: 'NatoSansKhmer',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: false,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextField(
                            controller: _requirementsController,
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: 'List your requirements (one per line)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Reference Image',
                                  style: HenshinTheme.bodyText1.override(
                                    fontFamily: 'NatoSansKhmer',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                GestureDetector(
                                  onTap: getImage,
                                  child: Container(
                                    height: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(
                                        color: const Color(0x65757575),
                                        width: 1,
                                      ),
                                    ),
                                    child: _image == null
                                        ? Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.add_photo_alternate, size: 50, color: Colors.grey),
                                              Text('Upload Image'),
                                              Text('PNG, JPEG, WEBP (10Mb max)', style: TextStyle(color: Colors.grey)),
                                            ],
                                          )
                                        : Image.file(_image!, fit: BoxFit.cover),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: FFButtonWidget(
                    onPressed: navigateToSummary,
                    text: 'Proceed to Summary',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 50,
                      color: HenshinTheme.primaryColor,
                      textStyle: HenshinTheme.subtitle2.override(
                        fontFamily: 'NatoSansKhmer',
                        color: Colors.white,
                        useGoogleFonts: false,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 18,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'You won\'t be charged now',
                    style: HenshinTheme.bodyText1.override(
                      fontFamily: 'NatoSansKhmer',
                      color: const Color(0xCF303030),
                      useGoogleFonts: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
