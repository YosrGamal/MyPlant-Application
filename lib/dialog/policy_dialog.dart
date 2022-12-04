import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        Dialog,
        Key,
        RoundedRectangleBorder,
        StatelessWidget,
        Widget,
        required;

// class PolicyDialog extends StatelessWidget {
//   const PolicyDialog({
//     Key? key,
//     this.raduis = 8,
//     required this.mdFileName, required this.radius ,
//   }) :assert(mdFileName.contains('.md'),'the file must contain the .md extension'),
//      super(key: key);

//     final double radius;
//     final String mdFileName;
    
    
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
//     );
//   }
// }