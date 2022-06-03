class Job {
  final int companyID;
  final int jobID;
  final String title;
  final String jobType;
  final List<String> requirements;

  Job({
    required this.companyID,
    required this.jobID,
    required this.title,
    required this.jobType,
    required this.requirements,
  });
}
