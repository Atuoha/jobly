import 'package:flutter/cupertino.dart';
import 'package:job_apply/models/job_category.dart';

class JobCategoryData extends ChangeNotifier {
  
  JobCategory findByID(id) {
    return jobCategories.firstWhere((jobCat) => jobCat.id == id);
  }

  List jobCategories = [
    JobCategory(id: 1, title: 'Technology'),
    JobCategory(id: 2, title: 'BroadCasting'),
    JobCategory(id: 3, title: 'E-Commerce'),
    JobCategory(id: 4, title: 'Development'),
    JobCategory(id: 5, title: 'Business'),
    JobCategory(id: 6, title: 'Other'),
  ];
}
