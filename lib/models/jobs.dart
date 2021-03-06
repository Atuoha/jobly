class Job {
  final int companyID;
  final int id;
  final String title;
  final String jobType;
  final List<String> requirements;
  final int categoryId;

  Job({
    required this.companyID,
    required this.id,
    required this.title,
    required this.jobType,
    required this.requirements,
    required this.categoryId,
  });
}
