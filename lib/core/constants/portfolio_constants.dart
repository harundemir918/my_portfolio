/*
Author: Harun Demir
Date: 25.12.2022
*/

import '../models/portfolio_model.dart';

List<Map<String, dynamic>> portfolioTypeList = [
  {
    "title": "ALL",
    "type": PortfolioType.all,
  },
  {
    "title": "OWN",
    "type": PortfolioType.own,
  },
  {
    "title": "FREELANCE",
    "type": PortfolioType.freelance,
  },
];

List<PortfolioModel> portfolioList = [
  PortfolioModel(
    type: PortfolioType.own,
    title: "Deutsch Lesen",
    description:
        "Deutsch Lesen is a language learning application designed for beginners and intermediate German learners. This app offers a wide range of German texts to enhance your German reading skills and assist you in learning German online. The app interface is user-friendly and clear, with German language levels listed on the initial screen, allowing you to select an appropriate level for your online language education."
        "\n\nWith this app, reading German becomes easier; you can choose the stories you want to read, translate them, listen to them, and start learning German right away. Reading German texts online can improve your German knowledge and take you to higher levels in your online German learning journey."
        "\n\nThe best part of this app is that you don't need to purchase any packages to use it. If you find the app useful, you can support us by giving it a 5-star rating. Additionally, you can always send your questions or ideas to our email address."
        "\n\nStart your German reading and online language education journey today with Deutsch Lesen!"
        "\n\nEnjoy reading and learning!",
    url:
        "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/RSoyKS2-rc_h1D8qaoS2nsUR6BTc_r2EZjmIvnLsyOpNnEHA3m39f6oJ6euuNN0hSjaT=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/yBEM8QuVGzYMZ6vaq2L31OTGEBbufoG6AV2JrSVpGgPULIQJZgop9pfS7L0OhEYMjSU=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/HP70FQaWIXxaof_D_HJ0BbD4ZKd310NlCe9F7QgAPCNyM1fY32QxYSdHs6guEsmWWbo=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/UC3Nm01wKACDJbkaAF9SGqENrqfIu6eVVn6oNy4VczBc3tG40w4rGThJTA5wCYR8KR1z=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/yiCBrSkvwG9oGAhAgBpsKwcVzb8bSvEQT8-sWEP7J34Kkeeo4PBZpROII8uHdS8__0c=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/fcMTij5ylTRJqz8K5VpjDM4HGg3q1FJw986TYslohJqlk599kbn6Sd8BqFVCbhMAuFM=w1080-h1920-rw",
    ],
    date: "March 13, 2022",
    techStack: ["Flutter", "Dart", "Laravel"],
  ),
  PortfolioModel(
    type: PortfolioType.own,
    title: "English Reading",
    description:
        "English Reading is a language learning application designed for beginners, intermediate, and advanced English learners. This app offers a wide range of English texts to improve your reading skills and assist you in learning English online. The app's interface is user-friendly and straightforward, with English language levels listed on the initial screen, allowing you to choose the appropriate level for your online language education."
        "\n\nWith this app, reading English becomes easy; you can select, translate, listen to the stories you want to read, and start learning English right away. Reading online English texts can enhance your English knowledge and take you to higher levels on your online English learning journey."
        "\n\nThe best thing about this app is that you don't need to purchase any packages to use it. If you find the app helpful, you can support us by giving it a 5-star rating. Additionally, you can always send your questions or ideas to our email address."
        "\n\nStart your English reading and online language education journey today with English Reading!"
        "\n\nEnjoy your reading and learning!",
    url:
        "https://play.google.com/store/apps/details?id=org.harundemir.englishreading",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/sUfbJpwX2bHy_1BBphAYdHOwV4-0THxOnaT_90JY31MCwDS2CyoC2w0DjcywVI1XIw=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/kJBU6tt8d50wgQpS6japxeJbH9ler5g_CWs6dO295Tx-pJKBJ05K-kEVxD1_ZEZGQIA=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/b2G1XC1j7xOjfnqkwvaLdHi7G7ck2JfEPp_l0-7phz1MqBEG0m306qIY3rdUiu2DKYM=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/w7oze-xPkc__royOgXkRMSA4SkaOj4dWSCNWwCu00Bq1jFfay58t9UkMw9s56upBl42T=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/CvBKS2GqbnSl8aHCXaAq0MNkgzTsEind6JCeFdUeot7a8o1lfO2gLjhQk1_vQ3hWHDhi=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/JBE18yPPKsMKoKoIZpXXW52boyJ9sSJvlTCgv2Ze6hBDBl0G-4qWi8Vf00PKKynSTxs=w1080-h1920-rw",
    ],
    date: "June 11, 2022",
    techStack: ["Flutter", "Dart", "Laravel"],
  ),
  PortfolioModel(
    type: PortfolioType.own,
    title: "Flag Explorer",
    description:
        "Embark on a fascinating journey to explore the world's flags with Flag Explorer! Test your knowledge and learn about flags from all around the globe in this captivating quiz game. With an extensive collection of over 200 flags representing 6 continents, this app offers an immersive experience for flag enthusiasts and curious minds alike."
        "\n\nChallenge yourself with exciting quiz sessions as you guess the flags of various countries. Explore the diversity of colors, symbols, and designs that make each flag unique and significant. Sharpen your knowledge of geography and cultures while having fun!"
        "\n\nFeatures:"
        "\n\nExtensive flag collection: Discover and learn about flags from over 200 countries and territories across 6 continents."
        "\nEngaging quiz experience: Put your flag knowledge to the test with thrilling quiz sessions that will challenge and entertain you."
        "\nLearn as you play: Expand your knowledge of different countries and their flags through challenging quizzes."
        "\nUser-friendly interface: Enjoy a seamless and intuitive experience with a modern and visually appealing design."
        "\n\nFlag Explorer is an educational and entertaining app that offers a captivating way to delve into the fascinating world of flags. Whether you're a flag enthusiast, a trivia lover, or simply curious about the world, this app will provide hours of enjoyment and knowledge. Download Flag Explorer now and become an expert in global flags!",
    url:
        "https://play.google.com/store/apps/details?id=org.harundemir.flagexplorer",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/DjqXdl7IHCkLVGE6hHcl_FWky_Xh1qecYkvhaO_7_gBloRwZXkDF9Wjf3gTFIuh72pst=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/G6-CbeaZQn9PwiFxeYySeWtqZZVN8F7_I9dKNzOHwRNjpZTswMlBlDwRdSAoOmPkfMHy=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/kjhpQeu-9MRnKQiyahQv7dH8DM_DVya2TK4TVwxZxReL5gahzngVwFY1FGyyx2L9Ktdo=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/jJZiJMqnpQBpqztIrmylJPvRKi3ihWq9rrgkkEXr-1_F01nzit6zZ8LwKey0spPue3I=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/gqWmTFrHs7uMUrzwdZMc-y2XWpcaBkHsq9OqFVMq327sDkIq04KCJXFYrEMrzEOBXLc=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/8Cd0JkqL2eDzeTL8uRv2aPNOqMaTodzxc_PlPlrV-dDXTA-JAamqaaoGeAbH7473b0jZ=w1080-h1920-rw",
    ],
    date: "May 14, 2023",
    techStack: ["Flutter", "Dart"],
  ),
  PortfolioModel(
    type: PortfolioType.freelance,
    title: "Xam Shoe Commerce App",
    description:
        "Experience a seamless shopping journey with our Flutter Xam Shoe Commerce App. "
        "With its user-friendly interface, lightning-fast performance, and dark mode support, our feature-rich application ensures an exceptional shopping experience. "
        "Discover a world of shoes effortlessly through multilingual support, seamless animations, and 35 meticulously designed screens. "
        "Whether you’re using a tablet or a mobile device, our app guarantees a smooth and immersive experience for all users.",
    url:
        "https://codecanyon.net/item/flutter-xam-shoe-commerce-app-flutter/46724667",
    mediaUrls: [
      "https://camo.envatousercontent.com/2be0d4c3a39de161b522aeb9e3b83f2d470e0bfe/68747470733a2f2f696d6775722e636f6d2f524934545944692e706e67",
    ],
    date: "July 12, 2023",
    techStack: ["Flutter", "Dart"],
  ),
  PortfolioModel(
    type: PortfolioType.freelance,
    title: "Promek Guard",
    description: "PROMEK DEFENSE AND SECURITY INC."
        "\n\nIt was established by a distinguished team of experts from our country, whose cooperation is based on a long history, to set out with a very valuable Turkish Knowledge and a Turkish Brand in their services, together with the fields of international security services and consultancy."
        "\n\nPROMEK DEFENSE AND SECURITY INC. Since 2007, it has been serving to well-known individuals and organizations of our country for many years. Thanks to our Promek Guard product, we offer our customers the opportunity to monitor our security operations online. We continue to serve you with innovative technologies.",
    url:
        "https://play.google.com/store/apps/details?id=com.cytechnoware.promek",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/QqvKQBz7d6FyRAKTVKPFOwnTyG9gkBgw1PgEv2CymaNQEZhsUNtn98iccbsJFYdDdDE=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/FrEAupoifu9c59N0iD-f5hm7SwVa42YvIahKuA0uQc1GJs54Qy-ejtv2OuyjI6Lx5M8=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/0g0F4dSbQ6Y6QeBLQ_htE8qOT6JX7ptz5BAkO7Q1D_cpxPSMXARrayqbcJ-DqI2jKxE=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/w5IGV3SMQTrkXNkRkFpjh2H8Hq_nIQ1QLfTN34PttAZcqS-GnISItbmLdkxvRSqTrEBb=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/qpldV_1eU07mlMn8-ernYR1Ad6GOtyEoI0U7-nAy0cMrfagO80g4_-wCKCtrIn7lxQBU=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/fUYjuhm9a3KnrWzrLUslGZI7lhdXARlxrG_TsbhaOfIFhoUnYkq5x6FyoMxYVY-ddkk=w1080-h1920-rw",
    ],
    date: "Jun 26, 2021",
    techStack: ["Flutter", "Dart", "Laravel"],
  ),
  PortfolioModel(
    type: PortfolioType.freelance,
    title: "Nokta Döviz",
    description:
        "It was established in Istanbul in 1993 under the title of Nokta Döviz ve Altın Tic.A.Ş and continued its activities in Istanbul until 2004. Since 2004, the company has moved its headquarters to Denizli and has become Denizli's most important and well-established financial institution. It has made it a mission to serve with appropriate margins.",
    url:
        "https://play.google.com/store/apps/details?id=com.cytechnoware.noktadoviz",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/yhTK5KkHa0DkjjyZR4IdwKsJnpdNA0cmxYcyHqdAOoMfnhkzxbmfV91BTNQzHybrhI7V=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/HSByORbejXAKLX7EX5UfTkXLbSVEabCl5_efvmyU8ZavwQJRFUJms66-sImcCNNNiA=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/XzF-diEXTgY5XqN6CKS59LQuw6Q3UdlNyINipf5N_0lRFQfxoeIZYbAABI0dqpjqWEY=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/2hj9KhJWmd38ZADehIH4Eur3M0sxidQ2T1Bsth2t8m6HNtudXU6Sgq29qC05hFrUopA=w1080-h1920-rw",
    ],
    date: "Apr 25, 2021",
    techStack: ["Flutter", "Dart", "Laravel"],
  ),
];
