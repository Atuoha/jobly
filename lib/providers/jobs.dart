import 'package:flutter/cupertino.dart';
import 'package:job_apply/models/jobs.dart';

class JobData extends ChangeNotifier {
  void checkJobCategory(int categoryId) {
    // ignore: prefer_typing_uninitialized_variables
    var job;
    for (job in jobs) {
      if (job.categoryId == categoryId) {
        jobCategories.add(job);
      }
    }
  }

  void removeJobCategories() {
    jobCategories.clear();
  }

  List companyJobs(companyId) {
    return jobs.where((job) => job.companyID == companyId).toList();
  }

  List jobCategories = [];

  void toggleSelected(int id) {
    var job = jobs.firstWhere((job) => job.id == id);
    switch (isSelected(id)) {
      case true:
        selectedJobs.remove(job);
        print('Removing....');
        break;
      case false:
        selectedJobs.add(job);
        print('Adding....');
        break;
      default:
    }
    notifyListeners();
  }

  bool isSelected(int id) {
    return selectedJobs.any((job) => job.id == id);
  }

  List selectedJobs = [];

  Job findbyID(int id) {
    return jobs.firstWhere((job) => job.id == id);
  }

  List popularJobs = [];
  List featuredJobs = [];

  List jobs = [
    Job(
      companyID: 1,
      id: 1,
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
      categoryId: 1,
    ),
    Job(
      companyID: 2,
      id: 2,
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
      categoryId: 1,
    ),
    Job(
      companyID: 3,
      id: 3,
      title: 'Designer',
      jobType: 'Remote',
      requirements: [
        'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
        'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
        'Love to make a difference at your place of work, and want to help move the company toward our goals.',
        'Ability to set up and maintain local testing environments with minimal assistance.',
        'Experience creating actionable bug reports and effectively communicate to development.',
      ],
      categoryId: 6,
    ),
    Job(
        companyID: 4,
        id: 4,
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
        categoryId: 5),
    Job(
        companyID: 5,
        id: 5,
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
        categoryId: 3),
    Job(
        companyID: 6,
        id: 6,
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
        categoryId: 1),
    Job(
        companyID: 7,
        id: 7,
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
        categoryId: 4),
    Job(
        companyID: 8,
        id: 8,
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
        categoryId: 6),
    Job(
        companyID: 2,
        id: 25,
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
        categoryId: 1),
    Job(
        companyID: 9,
        id: 9,
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
        categoryId: 1),
    Job(
        companyID: 10,
        id: 10,
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
        categoryId: 2),
    Job(
        companyID: 11,
        id: 11,
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
        categoryId: 2),
    Job(
        companyID: 12,
        id: 12,
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
        categoryId: 1),
    Job(
        companyID: 13,
        id: 13,
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
        categoryId: 3),
    Job(
        companyID: 14,
        id: 14,
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
        categoryId: 4),
    Job(
        companyID: 2,
        id: 26,
        title: 'SEO Engineer',
        jobType: 'Part Time',
        requirements: [
          'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
          'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
          'Love to make a difference at your place of work, and want to help move the company toward our goals.',
          'Ability to set up and maintain local testing environments with minimal assistance.',
          'Experience creating actionable bug reports and effectively communicate to development.',
        ],
        categoryId: 1),
    Job(
        companyID: 2,
        id: 27,
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
        categoryId: 1),
    Job(
        companyID: 21,
        id: 21,
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
        categoryId: 4),
    Job(
        companyID: 14,
        id: 24,
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
        categoryId: 4),
    Job(
        companyID: 15,
        id: 15,
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
        categoryId: 5),
    Job(
        companyID: 16,
        id: 16,
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
        categoryId: 6),
    Job(
        companyID: 2,
        id: 28,
        title: 'UI/UX Designer',
        jobType: 'FullTime',
        requirements: [
          'Have some experience in marketing or sales, or are willing to dive head first into those worlds to help make our recruitment even better.',
          'Dream about data and numbers, and how it can improve recruitment. Your decisions are well-calculated and you\'re a stickler for measuring results.',
          'Love to make a difference at your place of work, and want to help move the company toward our goals.',
          'Ability to set up and maintain local testing environments with minimal assistance.',
          'Experience creating actionable bug reports and effectively communicate to development.',
        ],
        categoryId: 1),
    Job(
        companyID: 2,
        id: 29,
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
        categoryId: 1),
    Job(
        companyID: 19,
        id: 30,
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
        categoryId: 4),
    Job(
        companyID: 19,
        id: 31,
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
        categoryId: 4),
    Job(
        companyID: 18,
        id: 18,
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
        categoryId: 5),
    Job(
        companyID: 14,
        id: 22,
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
        categoryId: 4),
    Job(
        companyID: 14,
        id: 23,
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
        categoryId: 4),
    Job(
        companyID: 17,
        id: 17,
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
        categoryId: 5),
    Job(
        companyID: 19,
        id: 19,
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
        categoryId: 4),
    Job(
        companyID: 19,
        id: 29,
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
        categoryId: 4),
    Job(
        companyID: 19,
        id: 32,
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
        categoryId: 4),
    Job(
        companyID: 20,
        id: 20,
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
        categoryId: 2),
  ];
}
