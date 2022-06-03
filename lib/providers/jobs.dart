import 'package:flutter/cupertino.dart';
import 'package:job_apply/models/jobs.dart';

class JobData extends ChangeNotifier {
  void toggleSelected(int jobID) {
    var job = jobs.firstWhere((job) => job.id == jobID);
    switch (isSelected(jobID)) {
      case true:
        selectedJobs.remove(job);
        break;
      case false:
        selectedJobs.add(job);
        break;
      default:
    }
    notifyListeners();
  }

  bool isSelected(int jobID) {
    return selectedJobs.any((job) => job.id == jobID);
  }

  List selectedJobs = [];

  Job findbyID(int jobID) {
    return jobs.firstWhere((job) => job.id == jobID);
  }


  List jobs = [
    Job(
      companyID: 1,
      jobID: 1,
      title: 'Lead Designer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 2,
      jobID: 2,
      title: 'Junior Developer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 2,
      jobID: 25,
      title: 'Database Manager',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
      ],
    ),
    Job(
      companyID: 2,
      jobID: 26,
      title: 'SEO Engineer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
      ],
    ),
    Job(
      companyID: 2,
      jobID: 27,
      title: 'Junior Developer',
      jobType: 'Internship',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 2,
      jobID: 28,
      title: 'UI/UX Designer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
      ],
    ),
    Job(
      companyID: 2,
      jobID: 29,
      title: 'Lead Developer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 3,
      jobID: 3,
      title: 'Designer',
      jobType: 'Remote',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
      ],
    ),
    Job(
      companyID: 4,
      jobID: 4,
      title: 'Lead Designer',
      jobType: 'Remote',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 5,
      jobID: 5,
      title: 'Lead Marketer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 6,
      jobID: 6,
      title: 'Ad Personnel',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 7,
      jobID: 7,
      title: 'Lead Designer',
      jobType: 'Remote',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 8,
      jobID: 8,
      title: 'Lead Marketer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 9,
      jobID: 9,
      title: 'Junior Designer',
      jobType: 'Internship',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 10,
      jobID: 10,
      title: 'Lead Designer',
      jobType: 'Part Timer',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 11,
      jobID: 11,
      title: 'Front Desk',
      jobType: 'Internship',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 12,
      jobID: 12,
      title: 'Human Resource Manager',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 13,
      jobID: 13,
      title: 'Junior Designer',
      jobType: 'Internship',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 14,
      jobID: 14,
      title: 'UI/UX Developer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 14,
      jobID: 21,
      title: 'Associate Developer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 14,
      jobID: 22,
      title: 'Graphical Designer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 14,
      jobID: 23,
      title: 'SEO Engineer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 14,
      jobID: 24,
      title: 'Data Engineer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 15,
      jobID: 15,
      title: 'Lead Marketer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 16,
      jobID: 16,
      title: 'Database Engineer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 18,
      jobID: 18,
      title: 'SEO Manager',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 17,
      jobID: 17,
      title: 'Animation Creator',
      jobType: 'Remote',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 19,
      jobID: 19,
      title: 'Lead Designer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 19,
      jobID: 29,
      title: 'Lead Designer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 19,
      jobID: 30,
      title: 'Junior Developr',
      jobType: 'Internship',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 19,
      jobID: 31,
      title: 'SEO Manager',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 19,
      jobID: 32,
      title: 'Lead Marketer',
      jobType: 'FullTime',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
    Job(
      companyID: 20,
      jobID: 20,
      title: 'SEO Engineer',
      jobType: 'Part Time',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Understanding of RSpec, Capybara, and Selenium WebDriver.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
        'Proficient understanding of SQL and writing SQL queries to validate data.',
        'Ability to monitor log files and troubleshoot based on stack traces before escalating.',
      ],
    ),
  ];
}