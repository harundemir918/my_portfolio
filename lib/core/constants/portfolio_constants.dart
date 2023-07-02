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
    date: "October 2021 - December 2022",
    techStack: ["Flutter", "Dart", "Laravel"],
  ),
  PortfolioModel(
    type: PortfolioType.own,
    title: "English Reading",
    description:
        "English Reading is an app that contains English texts for beginner and intermediate language learners."
        "\n\nThe application is very simple to use. English language levels are listed on the first screen and you can choose any of these levels. Then you can choose the stories you want to read and read them. Reading English stories can make it easier for you to learn English. In this way, you can improve your English knowledge and go to higher levels."
        "\n\nThe application is completely free. You do not need to buy any packages to use it."
        "\n\nIf you like our application, you can support us by giving 5 stars. You can send your questions or ideas to our e-mail address."
        "\n\nHappy reading and learning!",
    url:
        "https://play.google.com/store/apps/details?id=org.harundemir.englishreading",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/sUfbJpwX2bHy_1BBphAYdHOwV4-0THxOnaT_90JY31MCwDS2CyoC2w0DjcywVI1XIw=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/jSe31V43pXR-TUEtD7c9QZqS9SLeVxbf-IS8cggXXYS60C57fcXbnhNdZ0WiYJDMyS0=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/mYT5F9RGsmGP7F41RnrY_Yf4s-TJUbKXGotXNchbZ0o0PVtCl_n_G2xJUvmvhFsdiTxN=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/vloDQfBKKo60cSH5-j1oqbx9eciwacI_p2Xa7Vv9WL6sHAQawyGaPvzU2b-mnnNqMKo=w1080-h1920-rw",
    ],
    date: "October 2021 - December 2022",
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
        "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
    mediaUrls: [
      "https://play-lh.googleusercontent.com/DjqXdl7IHCkLVGE6hHcl_FWky_Xh1qecYkvhaO_7_gBloRwZXkDF9Wjf3gTFIuh72pst=w1024-h500-rw",
      "https://play-lh.googleusercontent.com/G6-CbeaZQn9PwiFxeYySeWtqZZVN8F7_I9dKNzOHwRNjpZTswMlBlDwRdSAoOmPkfMHy=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/kjhpQeu-9MRnKQiyahQv7dH8DM_DVya2TK4TVwxZxReL5gahzngVwFY1FGyyx2L9Ktdo=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/jJZiJMqnpQBpqztIrmylJPvRKi3ihWq9rrgkkEXr-1_F01nzit6zZ8LwKey0spPue3I=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/gqWmTFrHs7uMUrzwdZMc-y2XWpcaBkHsq9OqFVMq327sDkIq04KCJXFYrEMrzEOBXLc=w1080-h1920-rw",
      "https://play-lh.googleusercontent.com/8Cd0JkqL2eDzeTL8uRv2aPNOqMaTodzxc_PlPlrV-dDXTA-JAamqaaoGeAbH7473b0jZ=w1080-h1920-rw",
    ],
    date: "October 2021 - December 2022",
    techStack: ["Flutter", "Dart"],
  ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
  // PortfolioModel(
  //   type: PortfolioType.project,
  //   title: "Deutsch Lesen",
  //   description:
  //       "Deutsch Lesen is an app that contains German texts for beginner and intermediate language learners.",
  //   url:
  //       "https://play.google.com/store/apps/details?id=org.harundemir.deutschlesen",
  //   mediaUrls: [
  //     "https://play-lh.googleusercontent.com/w0UDLP5YRUSyGZ6nA5AdKiHpR6JjA24QBa9zZmyPoQtakvVrVDfvQ6Z-TeGMLpCXUg=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/2HRvpmfJS_sv5nPMPW3sKZr9vHTwwLT5JOaW68HO1mcSBFqBzznFKnZ9cAxzqCo5Hw=w2560-h1440-rw",
  //     "https://play-lh.googleusercontent.com/vI7c6r8j56bb-jrrlu4R6cA-_eSf-XwQzL2yLUMrO0bvTHFdKEdPCEkW_HDRgSzcxw=w2560-h1440-rw",
  //   ],
  //   date: "October 2021 - December 2022",
  //   techStack: ["Flutter", "Dart", "Laravel"],
  // ),
];
