import '../common/Henshin_theme.dart';
import '../common/Henshin_widgets.dart';
import 'package:flutter/material.dart';

class JobPropopsalsPage2Widget extends StatefulWidget {
  const JobPropopsalsPage2Widget({super.key});

  @override
  _JobPropopsalsPage2WidgetState createState() =>
      _JobPropopsalsPage2WidgetState();
}

class _JobPropopsalsPage2WidgetState extends State<JobPropopsalsPage2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: const [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    'Job Proposales',
                    style: HenshinTheme.title2,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16, 45, 16, 45),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Received',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Colors.white,
                      textStyle: HenshinTheme.subtitle2.override(
                        fontFamily: 'NatoSansKhmer',
                        color: Colors.black,
                        useGoogleFonts: false,
                      ),
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 36,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Answered',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
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
                      borderRadius: 36,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0x66757575),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: HenshinTheme.primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://picsum.photos/seed/126/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lead Product Designer',
                                                style: HenshinTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'NatoSansKhmer',
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Behance',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x99303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 8, 0),
                                                    child: Container(
                                                      width: 3,
                                                      height: 3,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xC3313131),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cambodia',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x98303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            '11:29',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color: const Color(0x99303030),
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: const Color(0x4C757575),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            child: Text(
                                              'Resume',
                                              style: HenshinTheme.bodyText1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0x4C757575),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              child: Text(
                                                'Portfolio',
                                                style:
                                                    HenshinTheme.bodyText1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF23AE10),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.check_rounded,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0x66757575),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: HenshinTheme.primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://picsum.photos/seed/126/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lead Product Designer',
                                                style: HenshinTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'NatoSansKhmer',
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Behance',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x99303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 8, 0),
                                                    child: Container(
                                                      width: 3,
                                                      height: 3,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xC3313131),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cambodia',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x98303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            '11:29',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color: const Color(0x99303030),
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: const Color(0x4C757575),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            child: Text(
                                              'Resume',
                                              style: HenshinTheme.bodyText1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0x4C757575),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              child: Text(
                                                'Portfolio',
                                                style:
                                                    HenshinTheme.bodyText1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFE4451C),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.close,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0x66757575),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: HenshinTheme.primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://picsum.photos/seed/126/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lead Product Designer',
                                                style: HenshinTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'NatoSansKhmer',
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Behance',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x99303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 8, 0),
                                                    child: Container(
                                                      width: 3,
                                                      height: 3,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xC3313131),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cambodia',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x98303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            '11:29',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color: const Color(0x99303030),
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: const Color(0x4C757575),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            child: Text(
                                              'Resume',
                                              style: HenshinTheme.bodyText1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0x4C757575),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              child: Text(
                                                'Portfolio',
                                                style:
                                                    HenshinTheme.bodyText1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFE4BB1C),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.keyboard_control,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0x66757575),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: HenshinTheme.primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://picsum.photos/seed/126/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lead Product Designer',
                                                style: HenshinTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'NatoSansKhmer',
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Behance',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x99303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 8, 0),
                                                    child: Container(
                                                      width: 3,
                                                      height: 3,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xC3313131),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cambodia',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x98303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            '11:29',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color: const Color(0x99303030),
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: const Color(0x4C757575),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            child: Text(
                                              'Resume',
                                              style: HenshinTheme.bodyText1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0x4C757575),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              child: Text(
                                                'Portfolio',
                                                style:
                                                    HenshinTheme.bodyText1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF23AE10),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.check_outlined,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0x66757575),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: HenshinTheme.primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://picsum.photos/seed/126/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lead Product Designer',
                                                style: HenshinTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'NatoSansKhmer',
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Behance',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x99303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 8, 0),
                                                    child: Container(
                                                      width: 3,
                                                      height: 3,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xC3313131),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cambodia',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x98303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            '11:29',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color: const Color(0x99303030),
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: const Color(0x4C757575),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            child: Text(
                                              'Resume',
                                              style: HenshinTheme.bodyText1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0x4C757575),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              child: Text(
                                                'Portfolio',
                                                style:
                                                    HenshinTheme.bodyText1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF23AE10),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.check_outlined,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(16, 12, 16, 32),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: const Color(0x66757575),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(16, 16, 0, 16),
                            child: Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                color: HenshinTheme.primaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    'https://picsum.photos/seed/126/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 16, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lead Product Designer',
                                                style: HenshinTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily: 'NatoSansKhmer',
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: false,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Behance',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x99303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 8, 8, 0),
                                                    child: Container(
                                                      width: 3,
                                                      height: 3,
                                                      decoration: const BoxDecoration(
                                                        color:
                                                            Color(0xC3313131),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Cambodia',
                                                    style: HenshinTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'NatoSansKhmer',
                                                      color: const Color(0x98303030),
                                                      useGoogleFonts: false,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            '11:29',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color: const Color(0x99303030),
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 16),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: const Color(0x4C757575),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12, 4, 12, 4),
                                            child: Text(
                                              'Resume',
                                              style: HenshinTheme.bodyText1,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: const Color(0x4C757575),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(12, 4, 12, 4),
                                              child: Text(
                                                'Portfolio',
                                                style:
                                                    HenshinTheme.bodyText1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF23AE10),
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(
                                                Icons.check_outlined,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
