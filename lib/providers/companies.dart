import 'package:flutter/cupertino.dart';
import 'package:job_apply/models/companies.dart';

class CompanyData extends ChangeNotifier {
  Company findByID(int id) {
    return companies.firstWhere((company) => company.id == id);
  }

  void checkCompanyCategory(int categoryId) {
    // ignore: prefer_typing_uninitialized_variables
    var company;
    for (company in companies) {
      if (company.companyCategory == categoryId) {
        companyCategory.add(company);
      }
    }
    notifyListeners();
  }

  void removeCategory() {
    companyCategory.clear();
  }

  List companyCategory = [];

  List companies = [
    Company(
      id: 2,
      name: 'Google LLC',
      description:
          'Google LLC is an American multinational technology company that focuses on artificial intelligence, search engine, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics',
      headquaters: 'Mountain View, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/google_logo.png',
      founded: '4 September 1998, Menlo Park, California, United States',
      companyCategory: 1,
    ),
    Company(
      id: 3,
      name: 'LinkedIn Corp',
      description:
          'LinkedIn is an American business and employment-oriented online service that operates via websites and mobile apps. Launched on May 5, 2003, the platform is primarily used for professional networking and career development, and allows job seekers to post their CVs and employers to post jobs',
      headquaters: 'Sunnyvale, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/linkedin_logo.png',
      founded: '2002, Mountain View, California, United States',
      companyCategory: 6,
    ),
    Company(
      id: 4,
      name: 'Airbnb',
      description:
          'Airbnb, Inc. is an American company that operates an online marketplace for lodging, primarily homestays for vacation rentals, and tourism activities. Based in San Francisco, California, the platform is accessible via website and mobile app',
      headquaters: 'San Francisco, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/airbnb_logo.png',
      founded: 'August 2008, San Francisco, California, United States',
      companyCategory: 5,
    ),
    Company(
      id: 1,
      name: 'Facebook',
      description:
          'Meta Platforms, Inc., doing business as Meta and formerly known as Facebook, Inc., and TheFacebook, Inc., is an American multinational technology conglomerate based in Menlo Park, California. The company is the parent organization of Facebook, Instagram, and WhatsApp, among other subsidiaries',
      headquaters: 'Menlo Park, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/fb.jpg',
      founded: 'February 2004, Cambridge, Massachusetts, United States',
      companyCategory: 1,
    ),
    Company(
      id: 5,
      name: 'Amazon',
      description:
          'Amazon, Inc. is an American multinational technology company which focuses on e-commerce, cloud computing, digital streaming, and artificial intelligence. It has been referred to as "one of the most influential economic and cultural forces in the world", and is one of the world\'s most valuable brands',
      headquaters: 'Seattle, Washington, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/amazon.jpg',
      founded: '5 July 1994, Bellevue, Washington, United States',
      companyCategory: 3,
    ),
    Company(
      id: 6,
      name: 'Microsoft Corp',
      description:
          'Microsoft Corporation is an American multinational technology corporation which produces computer software, consumer electronics, personal computers, and related services',
      headquaters: 'Redmond, Washington, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/microsfot.png',
      founded: '4 April 1975, Albuquerque, New Mexico, United States',
      companyCategory: 1,
    ),
    Company(
      id: 7,
      name: 'Andela',
      description:
          'Andela is a global job placement network for software developers. Andela focuses on sustainable careers, connecting technologists with long-term engagements, access to international roles, competitive compensation, and career coaching through the Andela Learning Community',
      headquaters: ' New York, New York, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/andela.png',
      founded: '21 May 2014',
      companyCategory: 4,
    ),
    Company(
      id: 8,
      name: 'Twitter',
      description:
          'Twitter, Inc. is an American communications company based in San Francisco, California. The company operates the microblogging and social networking service Twitter. It previously operated the Vine short video app and Periscope livestreaming service.',
      headquaters: 'San Francisco, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/twitter.png',
      founded: '21 March 2006, San Francisco, California, United States',
      companyCategory: 6,
    ),
    Company(
      id: 9,
      name: 'IBM',
      description:
          'International Business Machines Corporation is an American multinational technology corporation headquartered in Armonk, New York, with operations in over 171 countries.',
      headquaters: 'Armonk, New York, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/ibm.png',
      founded: '16 June 1911, Endicott, New York, United States',
      companyCategory: 1,
    ),
    Company(
      id: 10,
      name: 'BBC',
      description:
          'The BBC is recognised by audiences in the UK and around the world as a provider of news that you can',
      headquaters: 'London, United Kingdom',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/bbc.png',
      founded: '18 October 1922, London, United Kingdom',
      companyCategory: 2,
    ),
    Company(
      id: 11,
      name: 'CNN',
      description:
          'The Cable News Network is a multinational news-based pay television channel headquartered in Atlanta, Georgia, U.S.. It is owned by CNN Global, which is part of Warner Bros. Discovery. It was founded in 1980 by American media proprietor Ted Turner and Reese Schonfeld as a 24-hour cable news channel.',
      headquaters: 'Atlanta, Georgia, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/cnn.png',
      founded: '1 June 1980, Atlanta, Georgia, United States',
      companyCategory: 2,
    ),
    Company(
      id: 12,
      name: 'Apple',
      description:
          'Apple Inc. is an American multinational technology company that specializes in consumer electronics, software and online services headquartered in Cupertino, California, United States',
      headquaters: 'Cupertino, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/apple.png',
      founded: '1 April 1976, Los Altos, California, United States',
      companyCategory: 1,
    ),
    Company(
      id: 13,
      name: 'Alibaba Group',
      description:
          'Alibaba Group Holding Limited, also known as Alibaba, is a Chinese multinational technology company specializing in e-commerce, retail, Internet, and technology.',
      headquaters: 'Hangzhou, China',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/alibaba.png',
      founded: '4 April 1999, Hangzhou, China',
      companyCategory: 3,
    ),
    Company(
      id: 14,
      name: 'Atutechs Corp',
      description:
          'Atutechs Corp has an IT platform is aiding individuals, businesses, organizations to set up Websites, Mobile Apps, Desktop stand alone software. We can only build with you if only we know exactly what you need and we are super ready to have your idea(s) on everyone\'s screen-front before you know it.',
      headquaters: 'Owerri, Port Harcourt, Nigeria',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/atutechs.jpg',
      founded: '22 June 2012, Aba, Abia State Nigeria',
      companyCategory: 4,
    ),
    Company(
      id: 21,
      name: 'freeCodeCamp',
      description:
          'freeCodeCamp is a non-profit organization that consists of an interactive learning web platform, an online community forum, chat rooms, online publications and local organizations that intend to make learning web development accessible to anyone.',
      headquaters: 'San Francisco, California United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/freecodecamp.png',
      founded: 'October 2014 San Francisco, California',
      companyCategory: 4,
    ),
    Company(
      id: 15,
      name: 'Udemy, Inc',
      description:
          'Udemy, Inc. is a for-profit massive open online course provider aimed at professional adults and students. It was founded in May 2010 by Eren Bali, Gagan Biyani, and Oktay Caglar',
      headquaters: 'San Francisco, California United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/udemy.png',
      founded: '20 January 2010 San Francisco, California',
      companyCategory: 5,
    ),
    Company(
      id: 16,
      name: 'Hisense',
      description:
          'Hisense Group is a Chinese multinational white goods and electronics manufacturer headquartered in Qingdao, Shandong Province, China. Televisions are the main products of Hisense, and it is the largest TV manufacturer in China by market share since 2004.',
      headquaters: 'Qingdao, China',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/hisense.png',
      founded: '1969, Qingdao, China',
      companyCategory: 6,
    ),
    Company(
      id: 17,
      name: 'GOtv Africa',
      description:
          'GOtv Africa is a paid TV terrestrial service in Africa owned by broadcaster MultiChoice. It mainly consists of African and international programming',
      headquaters: 'Nigeria, South Africa',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/gotv.jpg',
      founded: '5 September 2011',
      companyCategory: 5,
    ),
    Company(
      id: 18,
      name: 'DStv',
      description:
          'DStv is a Sub-Saharan African direct broadcast satellite service owned by MultiChoice. The service launched in 1995 provides multiple channels and services to their subscribers',
      headquaters: 'Johannesburg, South Africa',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/dstv.png',
      founded: '6 October 1995',
      companyCategory: 5,
    ),
    Company(
      id: 19,
      name: 'GitHub',
      description:
          'GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management functionality of Git, plus its own features.',
      headquaters: 'San Francisco, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/github.png',
      founded: '2008',
      companyCategory: 4,
    ),
    Company(
      id: 20,
      name: 'Zoom',
      description:
          'Zoom Video Communications, Inc. is an American communications technology company headquartered in San Jose, California.',
      headquaters: 'San Jose, California, United States',
      imgUrl:
          'https://atuoha.github.io/project-assets.github.io/job_assets/images/zoom.png',
      founded: '2011, San Jose, California, United States',
      companyCategory: 2,
    ),
  ];
}
