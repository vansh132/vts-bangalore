import 'package:flutter/material.dart';
import 'package:vts/constants/colors.dart';
import 'package:vts/pages/desktop/widgets/footer.dart';
import 'package:vts/pages/desktop/widgets/nav_bar.dart';
import 'package:vts/pages/mobile/model/Excom.dart';

class DesktopExComScreen extends StatefulWidget {
  const DesktopExComScreen({super.key});

  @override
  State<DesktopExComScreen> createState() => _DesktopExComScreenState();
}

class _DesktopExComScreenState extends State<DesktopExComScreen> {
  List<Excom> excom = [
    Excom(
        name: "Dr Navin Kumar",
        excomPosition: "Chair",
        university: "Amrita Vishwa Vidyapeetham",
        designation: "Chairperson & Prof., Dept. of ECE",
        photoAsset: "assets/images/Navin-kumarAmrita.jpg"),
    Excom(
        name: "Dr Anish Cheriyan",
        excomPosition: "Vice Chair",
        university: "Harman International",
        designation: "Vice President- Test",
        photoAsset: "assets/images/Anish.jpg"),
    Excom(
        name: "Ms Divya MG",
        excomPosition: "Secretary",
        university: "C-DAC",
        designation: "Scientist F",
        photoAsset: "assets/images/DivyaPhoto-Green.jpg"),
    Excom(
        name: "Dr Ambar Bajpai",
        excomPosition: "Treasurer",
        university: "GITAM University",
        designation: "Associate Professor",
        photoAsset: "assets/images/Ambar.jpg"),
    Excom(
        name: "Dr Amar Choudhary",
        excomPosition: "Member",
        university: "Alliance University",
        designation: "Assistant Professor",
        photoAsset: "assets/images/AmarCh.jpg"),
    Excom(
        name: "Ms Ananya Banik",
        excomPosition: "Memberr",
        university: "Harman International",
        designation: "Senior Manager",
        photoAsset: "assets/images/ananya-pic.jpg"),
    Excom(
        name: "Mr Binu John",
        excomPosition: "Member",
        university: "Embitel technologies",
        designation: "Principal Architect",
        photoAsset: "assets/images/binuJhon.jpg"),
    Excom(
        name: "Dr. Kavitha Kommuri",
        excomPosition: "Member",
        university: "TVS Motor Company Ltd ",
        designation: "Principal Engineer",
        photoAsset: "assets/images/Kavitha_passport.jpg"),
    Excom(
        name: "Mr  Lokesh Babu Sarode",
        excomPosition: "Member",
        university: "Western Digital",
        designation: "Technologist, QA Engineering",
        photoAsset: "assets/images/Lokesh.jpg"),
    Excom(
        name: "Dr Nayana Hegde",
        excomPosition: "Member",
        university: "REVA University",
        designation: "Assistant Professor",
        photoAsset: "assets/images/Nayana-Reva.jpg"),
    // Excom(
    //     name: "Mr Padmesh Sewda",
    //     excomPosition: "Member",
    //     university: "TVS Motors Company Ltd",
    //     designation: "Program Manager",
    //     photoAsset: "assets/images/Padmesh-Sewda.jpg"),
    Excom(
        name: "Mr Ravishankar Holla",
        excomPosition: "Member",
        university: "RV College of Engineering",
        designation: "Assistant Professor",
        photoAsset: "assets/images/Ravishankar.jpg"),
    Excom(
        name: "Dr. Ramesh N",
        excomPosition: "Member",
        university: "Atria Institute of Technology",
        designation: "Associate Professor, Dept of ECE",
        photoAsset: "assets/images/Ramesh.jpg"),
    Excom(
        name: "Dr. Sanjeevakumar M. Hatture",
        excomPosition: "Member",
        university: "NCET",
        designation: "Professor and Head, Dept. of ISE",
        photoAsset: "assets/images/SanjeevKumar.jpg"),
    Excom(
        name: "Mr Srikumar Aravinda Krishnan",
        excomPosition: "Member",
        university: "TVS Motor Company Ltd",
        designation: "Sr. Lead Engineer",
        photoAsset: "assets/images/SriKumarTVSM.jpg"),
    Excom(
        name: "Mr Subhra Prakash Giri",
        excomPosition: "Member",
        university: "Entrepreneur",
        designation: "Founder and CEO",
        photoAsset: "assets/images/SubhraPrakashGiri.jpg"),
    Excom(
        name: "Mr. Suresh Babu Sathiyakunar",
        excomPosition: "Member",
        university: "Harman International ",
        designation: "Senior Principal Engineer",
        photoAsset: "assets/images/SureshHarman.jpg"),
    Excom(
        name: "Mr. Thiyagu Gopal",
        excomPosition: "Member",
        university: "SoftwareAG",
        designation: "Senior Director",
        photoAsset: "assets/images/Thiyagu-photo.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: CustomColors.bgLight,
          width: double.maxFinite,
          // height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const NavBar(
                selectedPage: 2,
              ),
              Container(
                // color: Colors.yellow,
                // height: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      color: CustomColors
                          .primaryColor, // Background color for the header
                      child: const Text(
                        'ExCom 2024 Committee', // Your header text
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      height: 800,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: width >= 1440
                              ? 4
                              : 3, // Adjust based on screen width
                          crossAxisSpacing:
                              20, // Add spacing between grid items
                          mainAxisSpacing: 20, // Add spacing between rows
                          childAspectRatio:
                              2 / 2.3, // Adjust aspect ratio for grid items
                        ),
                        itemCount: excom.length,
                        itemBuilder: (context, index) {
                          return _buildExcomCard(excom[index]);
                        },
                      ),
                    ),
                    const CustomFooter(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExcomCard(Excom excomMember) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  excomMember.photoAsset,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 16),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: "Name: ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: excomMember.name,
                    style: const TextStyle(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Affiliation: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: excomMember.university,
                    style: const TextStyle(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Designation: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: excomMember.designation,
                    style: const TextStyle(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: CustomColors.primaryDarkColor, // Change color as needed
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              child: Text(
                excomMember.excomPosition,
                style: TextStyle(
                  color: CustomColors.lightGrey.withOpacity(.9),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
