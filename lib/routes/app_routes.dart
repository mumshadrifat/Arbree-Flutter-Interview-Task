import 'package:mumshad_s_application5/presentation/login_screen/login_screen.dart';
import 'package:mumshad_s_application5/presentation/login_screen/binding/login_binding.dart';
import 'package:mumshad_s_application5/presentation/signup_screen/signup_screen.dart';
import 'package:mumshad_s_application5/presentation/signup_screen/binding/signup_binding.dart';
import 'package:mumshad_s_application5/presentation/home_container_screen/home_container_screen.dart';
import 'package:mumshad_s_application5/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:mumshad_s_application5/presentation/search_tab_container_screen/search_tab_container_screen.dart';
import 'package:mumshad_s_application5/presentation/search_tab_container_screen/binding/search_tab_container_binding.dart';
import 'package:mumshad_s_application5/presentation/search_results_screen/search_results_screen.dart';
import 'package:mumshad_s_application5/presentation/search_results_screen/binding/search_results_binding.dart';
import 'package:mumshad_s_application5/presentation/single_story_screen/single_story_screen.dart';
import 'package:mumshad_s_application5/presentation/single_story_screen/binding/single_story_binding.dart';
import 'package:mumshad_s_application5/presentation/single_post_screen/single_post_screen.dart';
import 'package:mumshad_s_application5/presentation/single_post_screen/binding/single_post_binding.dart';
import 'package:mumshad_s_application5/presentation/comments_screen/comments_screen.dart';
import 'package:mumshad_s_application5/presentation/comments_screen/binding/comments_binding.dart';
import 'package:mumshad_s_application5/presentation/single_video_screen/single_video_screen.dart';
import 'package:mumshad_s_application5/presentation/single_video_screen/binding/single_video_binding.dart';
import 'package:mumshad_s_application5/presentation/single_event_screen/single_event_screen.dart';
import 'package:mumshad_s_application5/presentation/single_event_screen/binding/single_event_binding.dart';
import 'package:mumshad_s_application5/presentation/notifications_screen/notifications_screen.dart';
import 'package:mumshad_s_application5/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:mumshad_s_application5/presentation/video_chat_screen/video_chat_screen.dart';
import 'package:mumshad_s_application5/presentation/video_chat_screen/binding/video_chat_binding.dart';
import 'package:mumshad_s_application5/presentation/chat_screen/chat_screen.dart';
import 'package:mumshad_s_application5/presentation/chat_screen/binding/chat_binding.dart';
import 'package:mumshad_s_application5/presentation/group_chat_screen/group_chat_screen.dart';
import 'package:mumshad_s_application5/presentation/group_chat_screen/binding/group_chat_binding.dart';
import 'package:mumshad_s_application5/presentation/settings_screen/settings_screen.dart';
import 'package:mumshad_s_application5/presentation/settings_screen/binding/settings_binding.dart';
import 'package:mumshad_s_application5/presentation/my_friends_screen/my_friends_screen.dart';
import 'package:mumshad_s_application5/presentation/my_friends_screen/binding/my_friends_binding.dart';
import 'package:mumshad_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:mumshad_s_application5/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchPage = '/search_page';

  static const String searchTabContainerScreen = '/search_tab_container_screen';

  static const String searchResultsScreen = '/search_results_screen';

  static const String singleStoryScreen = '/single_story_screen';

  static const String singlePostScreen = '/single_post_screen';

  static const String commentsScreen = '/comments_screen';

  static const String singleVideoScreen = '/single_video_screen';

  static const String eventsPage = '/events_page';

  static const String eventsTabContainerPage = '/events_tab_container_page';

  static const String singleEventScreen = '/single_event_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String newPostPage = '/new_post_page';

  static const String videoChatScreen = '/video_chat_screen';

  static const String chatScreen = '/chat_screen';

  static const String messagesPage = '/messages_page';

  static const String archivedMessagePage = '/archived_message_page';

  static const String archivedMessageTabContainerPage =
      '/archived_message_tab_container_page';

  static const String groupChatScreen = '/group_chat_screen';

  static const String settingsScreen = '/settings_screen';

  static const String userProfilePage = '/user_profile_page';

  static const String userProfileTabContainerPage =
      '/user_profile_tab_container_page';

  static const String galleryPage = '/gallery_page';

  static const String myFriendsScreen = '/my_friends_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: searchTabContainerScreen,
      page: () => SearchTabContainerScreen(),
      bindings: [
        SearchTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchResultsScreen,
      page: () => SearchResultsScreen(),
      bindings: [
        SearchResultsBinding(),
      ],
    ),
    GetPage(
      name: singleStoryScreen,
      page: () => SingleStoryScreen(),
      bindings: [
        SingleStoryBinding(),
      ],
    ),
    GetPage(
      name: singlePostScreen,
      page: () => SinglePostScreen(),
      bindings: [
        SinglePostBinding(),
      ],
    ),
    GetPage(
      name: commentsScreen,
      page: () => CommentsScreen(),
      bindings: [
        CommentsBinding(),
      ],
    ),
    GetPage(
      name: singleVideoScreen,
      page: () => SingleVideoScreen(),
      bindings: [
        SingleVideoBinding(),
      ],
    ),
    GetPage(
      name: singleEventScreen,
      page: () => SingleEventScreen(),
      bindings: [
        SingleEventBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: videoChatScreen,
      page: () => VideoChatScreen(),
      bindings: [
        VideoChatBinding(),
      ],
    ),
    GetPage(
      name: chatScreen,
      page: () => ChatScreen(),
      bindings: [
        ChatBinding(),
      ],
    ),
    GetPage(
      name: groupChatScreen,
      page: () => GroupChatScreen(),
      bindings: [
        GroupChatBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: myFriendsScreen,
      page: () => MyFriendsScreen(),
      bindings: [
        MyFriendsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
