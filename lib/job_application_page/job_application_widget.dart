import '../common/Henshin_theme.dart';
import '../common/Henshin_widgets.dart';
import '../job_application_page2/job_application_page2_widget.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
// import '../common/Henshin_theme.dart';

class JobApplicationPageWidget extends StatefulWidget {
  const JobApplicationPageWidget({super.key});

  @override
  JobApplicationPageWidgetState createState() =>
      JobApplicationPageWidgetState();
}

class JobApplicationPageWidgetState extends State<JobApplicationPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: HenshinTheme.primaryColor.withOpacity(0.5), // Added opacity
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
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
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: HenshinTheme.primaryGradient.map((color) => color.withOpacity(0.5)).toList(),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              //       child: Text(
              //         'Kerja Tersedia',
              //         style: HenshinTheme.title2,
              //       ),
              //     ),
              //   ],
              // ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 45, 16, 45),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Dijawab',
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
                    FFButtonWidget(
                      onPressed: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JobApplicationPage2Widget(),
                          ),
                        );
                      },
                      text: 'Dihantar',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Colors.white,
                        textStyle: HenshinTheme.subtitle2.override(
                          fontFamily: 'NatoSansKhmer',
                          color: Colors.black,
                          useGoogleFonts: false,
                        ),
                        elevation: 0,
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Jahit Pakaian',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Robiah Khalid',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Sabak Bernam',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Cuci Rumah',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Muthusamy',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Pulau Melaka',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Jaga Kucing',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Tan Cheng Hoe',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Pulau Indah',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Siram Kebun',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Khadijah Mamat',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Losong',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Pindah Rumah',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Husin Hero',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Seberang Perai',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Pindah Rumah',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Khuda',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Sungai Petani',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
                      padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 32),
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
                                    child: Image.asset(
                                      'assets/images/HensinLogo_removebg_preview.png',
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
                                                  'Beli Barang di Pasar',
                                                  style: HenshinTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'NatoSansKhmer',
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Usop Welcha',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x99303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                                    Flexible(
                                                      child: Text(
                                                        'Sungai Siput',
                                                        style: HenshinTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'NatoSansKhmer',
                                                          color: const Color(0x98303030),
                                                          useGoogleFonts: false,
                                                        ),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
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
                                          0, 0, 0, 16),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lihat langkah seterusnya',
                                            style: HenshinTheme.bodyText1
                                                .override(
                                              fontFamily: 'NatoSansKhmer',
                                              color:
                                                  HenshinTheme.primaryColor,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
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
      ),
    );
  }
}
