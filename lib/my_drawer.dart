// ignore_for_file: prefer_const_constructors

import 'package:admin_console/core/constants/c.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: Colors.grey[300],

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: c.h(context) * 0.05,
                  child: Image.asset("assets/images/logo.png")),
              SizedBox(
                height: 20,
              ),
              _buildInfo(),
              SizedBox(
                height: 25,
              ),
              _buildNavigation(),
            ],
          ),
        ),
      ),
    );
  }

  _buildInfo() => Container(
        width: c.w(context) * 0.8,
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(13, 71, 71, 71)),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[100],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Center(
                  child: Icon(Icons.person),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Smith",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Administrator",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.mediation_outlined,
                    color: Colors.black54,
                  ))
            ],
          ),
        ),
      );
  int? _selectedExpansionTileIndex;
  int? _selectedChildIndex;

  _buildNavigation() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "NAVIGATION",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomExpansionTile(
            title: "Dashboard",
            icon: Icons.dashboard,
            children: ["Default", "Analytics", "Finance"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 0,
          ),
          CustomExpansionTile(
            title: "Layouts",
            icon: Icons.layers_outlined,
            children: ["Vertical", "Horizontal", "Layouts 2", "Compact", "Tab"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "WIDGET",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          NormalTile(
            icon: Icons.stacked_line_chart,
            title: "Statistics",
            expansionTileIndex: 2,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),

          NormalTile(
            icon: Icons.data_array,
            title: "Data",
            expansionTileIndex: 3,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),

          NormalTile(
            icon: Icons.bar_chart,
            title: "Chart",
            expansionTileIndex: 4,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),

          // =================ADMIN PANEL ==============================
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "ADMIN PANEL",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomExpansionTile(
            title: "Online Course",
            icon: Icons.golf_course,
            children: [
              "Dashboard",
              "Teacher",
              "Student",
              "Courses",
              "Pricing",
              "Site",
              "Setting"
            ],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 5,
          ),
          CustomExpansionTile(
            title: "Membership",
            icon: Icons.card_membership,
            children: ["Dashboard", "List", "Pricing", "Setting"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 6,
          ),
          CustomExpansionTile(
            title: "Helpdesk",
            icon: Icons.help_center,
            children: ["Dashboard", "Ticket", "Customer"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 7,
          ),
          CustomExpansionTile(
            title: "Invoice",
            icon: Icons.inventory_sharp,
            children: ["Dashboard", "Create", "Details", "List", "Edit"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 8,
          ),

          //===================UI COMPONENTS ==============================
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "UI COMPONENTS",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          NormalTile(
            icon: Icons.compost,
            title: "Components",
            expansionTileIndex: 9,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),

          NormalTile(
            icon: Icons.animation,
            title: "Animation",
            expansionTileIndex: 10,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),
          CustomExpansionTile(
            title: "Icons",
            icon: Icons.import_contacts_rounded,
            children: [
              "Feather",
              "Font Awesome 5",
              "Material",
              "Tabler",
              "Phosphor",
              "Custom"
            ],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 11,
          ),

          _buildForms(),
        ],
      );

  _buildForms() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "FORMS",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomExpansionTile(
            title: "Forms Elements",
            icon: Icons.eleven_mp,
            children: [
              "Form Basics",
              "Form Floating",
              "Form Options",
              "Input Groups",
              "Checkbox",
              "Radio",
              "Switch",
              "Mega Option"
            ],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 12,
          ),
          CustomExpansionTile(
            title: "Forms Plugins",
            icon: Icons.plumbing_sharp,
            children: ["Date", "Select", "Rating", "Google reCaptcha" , "Input Masks" , "Clipboard" , "Nouislider",  "Bootstrap Switch" , "Typehead"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 13,
          ),
          CustomExpansionTile(
            title: "Text Editors",
            icon: Icons.text_decrease,
            children: ["Tinymce", "Quill", "CK Editor" , "Markdown"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 14,
          ),


          CustomExpansionTile(
            title: "Forms Layouts",
            icon: Icons.layers,
            children: ["Layouts", "MUlticolumn", "Actionbars", "Sticky Action Bars",],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 15,
          ),

           CustomExpansionTile(
            title: "File Upload",
            icon: Icons.inventory_sharp,
            children: ["Dropzone", "Uppy"],
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            selectedChildIndex: _selectedChildIndex,
            onExpansionTileSelected: (expansionTileIndex, childIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
                _selectedChildIndex = childIndex;
              });
            },
            expansionTileIndex: 16,
          ),
          NormalTile(
            icon: Icons.width_full,
            title: "Wizard",
            expansionTileIndex: 17,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),
          NormalTile(
            icon: Icons.error,
            title: "Form Validation",
            expansionTileIndex: 18,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),
          NormalTile(
            icon: Icons.crop,
            title: "Image Cropper",
            expansionTileIndex: 19,
            selectedExpansionTileIndex: _selectedExpansionTileIndex,
            onExpansionTileSelected: (expansionTileIndex) {
              setState(() {
                _selectedExpansionTileIndex = expansionTileIndex;
              });
            },
          ),
           
        ],
      );
}

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final List<String> children;
  final int expansionTileIndex;
  final int? selectedExpansionTileIndex;
  final int? selectedChildIndex;
  final Function(int, int) onExpansionTileSelected;

  CustomExpansionTile({
    required this.title,
    required this.icon,
    required this.children,
    required this.expansionTileIndex,
    required this.selectedExpansionTileIndex,
    required this.selectedChildIndex,
    required this.onExpansionTileSelected,
  });

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  int? _hoveredIndex;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    bool isSelected =
        widget.selectedExpansionTileIndex == widget.expansionTileIndex;
    return Theme(
      data: ThemeData(dividerColor: Colors.transparent),
      child: ExpansionTile(
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: isSelected ? Colors.blue : Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: isSelected ? Colors.blue : Color.fromARGB(223, 0, 0, 0),
              ),
            ),
          ],
        ),
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: 200.0,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.children.length,
              itemBuilder: (context, index) {
                bool isChildSelected =
                    isSelected && widget.selectedChildIndex == index;
                return MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _hoveredIndex = index;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _hoveredIndex = null;
                    });
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.circle,
                      size: 8,
                      color: _hoveredIndex == index || isChildSelected
                          ? Colors.blue
                          : Colors.grey,
                    ),
                    title: Text(
                      widget.children[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45,
                      ),
                    ),
                    onTap: () {
                      widget.onExpansionTileSelected(
                          widget.expansionTileIndex, index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NormalTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final int expansionTileIndex;
  final int? selectedExpansionTileIndex;
  final Function(int) onExpansionTileSelected;
  NormalTile(
      {super.key,
      required this.onExpansionTileSelected,
      required this.icon,
      required this.title,
      required this.expansionTileIndex,
      required this.selectedExpansionTileIndex});

  @override
  State<NormalTile> createState() => _NormalTileState();
}

class _NormalTileState extends State<NormalTile> {
  @override
  Widget build(BuildContext context) {
    bool isSelected =
        widget.selectedExpansionTileIndex == widget.expansionTileIndex;
    return GestureDetector(
      onTap: () {
        widget.onExpansionTileSelected(widget.expansionTileIndex);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          height: 40,
          width: 400,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: isSelected ? Colors.blue : Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color:
                      isSelected ? Colors.blue : Color.fromARGB(223, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
