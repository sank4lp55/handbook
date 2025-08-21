// lib/data/flutter_data.dart

import 'package:handbook/features/home/models/question.dart';
import 'package:handbook/features/home/models/topic.dart';

class FlutterData {
  static const List<Topic> flutterTopics = [
    Topic(
      id: 'flutter_fundamentals',
      title: 'Flutter Fundamentals',
      description: 'Core concepts, widgets, and architecture fundamentals',
      isDart: false,
      questions: [
        Question(
          id: 'ff1',
          topicId: 'flutter_fundamentals',
          question: 'What is Flutter and how does it differ from other frameworks?',
        ),
        Question(
          id: 'ff2',
          topicId: 'flutter_fundamentals',
          question: 'Explain the Flutter architecture and rendering pipeline.',
        ),
        Question(
          id: 'ff3',
          topicId: 'flutter_fundamentals',
          question: 'What is the widget tree and element tree?',
        ),
        Question(
          id: 'ff4',
          topicId: 'flutter_fundamentals',
          question: 'Difference between StatelessWidget and StatefulWidget.',
        ),
        Question(
          id: 'ff5',
          topicId: 'flutter_fundamentals',
          question: 'What is BuildContext and why is it important?',
        ),
        Question(
          id: 'ff6',
          topicId: 'flutter_fundamentals',
          question: 'Explain the widget lifecycle in Flutter.',
        ),
        Question(
          id: 'ff7',
          topicId: 'flutter_fundamentals',
          question: 'What is the purpose of keys in Flutter widgets?',
        ),
        Question(
          id: 'ff8',
          topicId: 'flutter_fundamentals',
          question: 'When and why should you use different types of keys?',
        ),
        Question(
          id: 'ff9',
          topicId: 'flutter_fundamentals',
          question: 'What is the difference between hot reload and hot restart?',
        ),
        Question(
          id: 'ff10',
          topicId: 'flutter_fundamentals',
          question: 'Explain the concept of immutability in Flutter.',
        ),
        Question(
          id: 'ff11',
          topicId: 'flutter_fundamentals',
          question: 'What is the build() method and when is it called?',
        ),
        Question(
          id: 'ff12',
          topicId: 'flutter_fundamentals',
          question: 'How does Flutter handle different screen sizes and orientations?',
        ),
        Question(
          id: 'ff13',
          topicId: 'flutter_fundamentals',
          question: 'What is Material Design and Cupertino in Flutter?',
        ),
        Question(
          id: 'ff14',
          topicId: 'flutter_fundamentals',
          question: 'Explain the purpose of Scaffold widget.',
        ),
        Question(
          id: 'ff15',
          topicId: 'flutter_fundamentals',
          question: 'What are the main layout widgets in Flutter?',
        ),
        Question(
          id: 'ff16',
          topicId: 'flutter_fundamentals',
          question: 'Difference between MainAxis and CrossAxis in Flex widgets.',
        ),
        Question(
          id: 'ff17',
          topicId: 'flutter_fundamentals',
          question: 'How to handle overflow in Flutter layouts?',
        ),
        Question(
          id: 'ff18',
          topicId: 'flutter_fundamentals',
          question: 'What is IntrinsicHeight and IntrinsicWidth?',
        ),
        Question(
          id: 'ff19',
          topicId: 'flutter_fundamentals',
          question: 'Explain the purpose of SafeArea widget.',
        ),
        Question(
          id: 'ff20',
          topicId: 'flutter_fundamentals',
          question: 'How does Flutter compilation work for different platforms?',
        ),
        Question(
          id: 'ff21',
          topicId: 'flutter_fundamentals',
          question: 'What is the Flutter engine and how does it work?',
        ),
        Question(
          id: 'ff22',
          topicId: 'flutter_fundamentals',
          question: 'Explain Skia graphics engine in Flutter.',
        ),
        Question(
          id: 'ff23',
          topicId: 'flutter_fundamentals',
          question: 'How does Flutter achieve 60fps performance?',
        ),
        Question(
          id: 'ff24',
          topicId: 'flutter_fundamentals',
          question: 'What is vsync and how is it used in Flutter?',
        ),
        Question(
          id: 'ff25',
          topicId: 'flutter_fundamentals',
          question: 'Explain the concept of reactive programming in Flutter.',
        ),
        Question(
          id: 'ff26',
          topicId: 'flutter_fundamentals',
          question: 'What are the advantages and disadvantages of Flutter?',
        ),
        Question(
          id: 'ff27',
          topicId: 'flutter_fundamentals',
          question: 'How does Flutter handle accessibility?',
        ),
        Question(
          id: 'ff28',
          topicId: 'flutter_fundamentals',
          question: 'What is semantics in Flutter and why is it important?',
        ),
        Question(
          id: 'ff29',
          topicId: 'flutter_fundamentals',
          question: 'Explain the purpose of MediaQuery in Flutter.',
        ),
        Question(
          id: 'ff30',
          topicId: 'flutter_fundamentals',
          question: 'How to create responsive layouts in Flutter?',
        ),
      ],
    ),
    Topic(
      id: 'state_management',
      title: 'State Management',
      description: 'State management patterns and solutions in Flutter',
      isDart: false,
      questions: [
        Question(
          id: 'sm1',
          topicId: 'state_management',
          question: 'What is state management and why is it important?',
        ),
        Question(
          id: 'sm2',
          topicId: 'state_management',
          question: 'Difference between local state and global state.',
        ),
        Question(
          id: 'sm3',
          topicId: 'state_management',
          question: 'Explain setState() and its limitations.',
        ),
        Question(
          id: 'sm4',
          topicId: 'state_management',
          question: 'What is InheritedWidget and how does it work?',
        ),
        Question(
          id: 'sm5',
          topicId: 'state_management',
          question: 'How to create a custom InheritedWidget?',
        ),
        Question(
          id: 'sm6',
          topicId: 'state_management',
          question: 'What is Provider and how does it work internally?',
        ),
        Question(
          id: 'sm7',
          topicId: 'state_management',
          question: 'Difference between Provider, ChangeNotifierProvider, and StreamProvider.',
        ),
        Question(
          id: 'sm8',
          topicId: 'state_management',
          question: 'Explain Consumer vs Selector in Provider.',
        ),
        Question(
          id: 'sm9',
          topicId: 'state_management',
          question: 'What is BLoC pattern and its advantages?',
        ),
        Question(
          id: 'sm10',
          topicId: 'state_management',
          question: 'How to implement BLoC pattern from scratch?',
        ),
        Question(
          id: 'sm11',
          topicId: 'state_management',
          question: 'Difference between BLoC and Cubit.',
        ),
        Question(
          id: 'sm12',
          topicId: 'state_management',
          question: 'Explain BlocBuilder, BlocListener, and BlocConsumer.',
        ),
        Question(
          id: 'sm13',
          topicId: 'state_management',
          question: 'What is Riverpod and how does it improve upon Provider?',
        ),
        Question(
          id: 'sm14',
          topicId: 'state_management',
          question: 'Explain different types of providers in Riverpod.',
        ),
        Question(
          id: 'sm15',
          topicId: 'state_management',
          question: 'What is Redux pattern in Flutter?',
        ),
        Question(
          id: 'sm16',
          topicId: 'state_management',
          question: 'How to implement Redux with flutter_redux?',
        ),
        Question(
          id: 'sm17',
          topicId: 'state_management',
          question: 'What is MobX and how does it work in Flutter?',
        ),
        Question(
          id: 'sm18',
          topicId: 'state_management',
          question: 'Explain GetX state management approach.',
        ),
        Question(
          id: 'sm19',
          topicId: 'state_management',
          question: 'What is ValueNotifier and how to use it?',
        ),
        Question(
          id: 'sm20',
          topicId: 'state_management',
          question: 'Difference between ValueNotifier and ChangeNotifier.',
        ),
        Question(
          id: 'sm21',
          topicId: 'state_management',
          question: 'How to choose the right state management solution?',
        ),
        Question(
          id: 'sm22',
          topicId: 'state_management',
          question: 'What are the performance implications of different state management approaches?',
        ),
        Question(
          id: 'sm23',
          topicId: 'state_management',
          question: 'How to handle complex state transformations?',
        ),
        Question(
          id: 'sm24',
          topicId: 'state_management',
          question: 'Explain state management testing strategies.',
        ),
        Question(
          id: 'sm25',
          topicId: 'state_management',
          question: 'How to implement undo/redo functionality?',
        ),
        Question(
          id: 'sm26',
          topicId: 'state_management',
          question: 'What is hydrated_bloc and when to use it?',
        ),
        Question(
          id: 'sm27',
          topicId: 'state_management',
          question: 'How to handle state persistence across app restarts?',
        ),
        Question(
          id: 'sm28',
          topicId: 'state_management',
          question: 'Explain event sourcing pattern in Flutter.',
        ),
        Question(
          id: 'sm29',
          topicId: 'state_management',
          question: 'How to implement optimistic updates?',
        ),
        Question(
          id: 'sm30',
          topicId: 'state_management',
          question: 'What are the best practices for state management architecture?',
        ),
      ],
    ),
    Topic(
      id: 'navigation_routing',
      title: 'Navigation & Routing',
      description: 'Navigation patterns, routing, and deep linking in Flutter',
      isDart: false,
      questions: [
        Question(
          id: 'nr1',
          topicId: 'navigation_routing',
          question: 'Explain Navigator.push() vs Navigator.pushNamed().',
        ),
        Question(
          id: 'nr2',
          topicId: 'navigation_routing',
          question: 'What is the Navigator widget and how does it work?',
        ),
        Question(
          id: 'nr3',
          topicId: 'navigation_routing',
          question: 'Difference between Navigator 1.0 and Navigator 2.0.',
        ),
        Question(
          id: 'nr4',
          topicId: 'navigation_routing',
          question: 'How to implement nested navigation in Flutter?',
        ),
        Question(
          id: 'nr5',
          topicId: 'navigation_routing',
          question: 'What is Router widget and RouterDelegate?',
        ),
        Question(
          id: 'nr6',
          topicId: 'navigation_routing',
          question: 'Explain RouteInformationParser in Navigator 2.0.',
        ),
        Question(
          id: 'nr7',
          topicId: 'navigation_routing',
          question: 'How to implement deep linking in Flutter?',
        ),
        Question(
          id: 'nr8',
          topicId: 'navigation_routing',
          question: 'What is go_router and its advantages?',
        ),
        Question(
          id: 'nr9',
          topicId: 'navigation_routing',
          question: 'How to handle route parameters and query parameters?',
        ),
        Question(
          id: 'nr10',
          topicId: 'navigation_routing',
          question: 'Explain route guards and authentication routing.',
        ),
        Question(
          id: 'nr11',
          topicId: 'navigation_routing',
          question: 'How to implement bottom navigation with persistent state?',
        ),
        Question(
          id: 'nr12',
          topicId: 'navigation_routing',
          question: 'What is page transitions and how to customize them?',
        ),
        Question(
          id: 'nr13',
          topicId: 'navigation_routing',
          question: 'How to handle back button behavior on different platforms?',
        ),
        Question(
          id: 'nr14',
          topicId: 'navigation_routing',
          question: 'Explain modal routes vs non-modal routes.',
        ),
        Question(
          id: 'nr15',
          topicId: 'navigation_routing',
          question: 'How to implement conditional routing based on state?',
        ),
        Question(
          id: 'nr16',
          topicId: 'navigation_routing',
          question: 'What is Hero animation and how does it work?',
        ),
        Question(
          id: 'nr17',
          topicId: 'navigation_routing',
          question: 'How to pass data between routes effectively?',
        ),
        Question(
          id: 'nr18',
          topicId: 'navigation_routing',
          question: 'Explain route lifecycle and route awareness.',
        ),
        Question(
          id: 'nr19',
          topicId: 'navigation_routing',
          question: 'How to implement drawer navigation with routing?',
        ),
        Question(
          id: 'nr20',
          topicId: 'navigation_routing',
          question: 'What are navigation observers and how to use them?',
        ),
        Question(
          id: 'nr21',
          topicId: 'navigation_routing',
          question: 'How to handle navigation in large-scale applications?',
        ),
        Question(
          id: 'nr22',
          topicId: 'navigation_routing',
          question: 'Explain route animation customization.',
        ),
        Question(
          id: 'nr23',
          topicId: 'navigation_routing',
          question: 'How to implement tab-based navigation with routing?',
        ),
        Question(
          id: 'nr24',
          topicId: 'navigation_routing',
          question: 'What is WillPopScope and how to use it effectively?',
        ),
        Question(
          id: 'nr25',
          topicId: 'navigation_routing',
          question: 'How to implement navigation testing?',
        ),
      ],
    ),
    Topic(
      id: 'performance_optimization',
      title: 'Performance & Optimization',
      description: 'Performance optimization techniques and best practices',
      isDart: false,
      questions: [
        Question(
          id: 'po1',
          topicId: 'performance_optimization',
          question: 'What are the common performance bottlenecks in Flutter?',
        ),
        Question(
          id: 'po2',
          topicId: 'performance_optimization',
          question: 'How to profile Flutter app performance?',
        ),
        Question(
          id: 'po3',
          topicId: 'performance_optimization',
          question: 'Explain the Flutter inspector and performance tools.',
        ),
        Question(
          id: 'po4',
          topicId: 'performance_optimization',
          question: 'What causes widget rebuilds and how to minimize them?',
        ),
        Question(
          id: 'po5',
          topicId: 'performance_optimization',
          question: 'How to use const constructors for performance optimization?',
        ),
        Question(
          id: 'po6',
          topicId: 'performance_optimization',
          question: 'Explain RepaintBoundary and when to use it.',
        ),
        Question(
          id: 'po7',
          topicId: 'performance_optimization',
          question: 'What is AutomaticKeepAliveClientMixin and its use cases?',
        ),
        Question(
          id: 'po8',
          topicId: 'performance_optimization',
          question: 'How to optimize ListView and GridView performance?',
        ),
        Question(
          id: 'po9',
          topicId: 'performance_optimization',
          question: 'Difference between ListView and ListView.builder.',
        ),
        Question(
          id: 'po10',
          topicId: 'performance_optimization',
          question: 'What is lazy loading and how to implement it?',
        ),
        Question(
          id: 'po11',
          topicId: 'performance_optimization',
          question: 'How to optimize image loading and caching?',
        ),
        Question(
          id: 'po12',
          topicId: 'performance_optimization',
          question: 'Explain memory leaks in Flutter and how to prevent them.',
        ),
        Question(
          id: 'po13',
          topicId: 'performance_optimization',
          question: 'What is jank and how to identify and fix it?',
        ),
        Question(
          id: 'po14',
          topicId: 'performance_optimization',
          question: 'How to optimize build() method performance?',
        ),
        Question(
          id: 'po15',
          topicId: 'performance_optimization',
          question: 'Explain the role of keys in performance optimization.',
        ),
        Question(
          id: 'po16',
          topicId: 'performance_optimization',
          question: 'How to implement efficient state management for performance?',
        ),
        Question(
          id: 'po17',
          topicId: 'performance_optimization',
          question: 'What is isolate usage for CPU-intensive tasks?',
        ),
        Question(
          id: 'po18',
          topicId: 'performance_optimization',
          question: 'How to optimize app startup time?',
        ),
        Question(
          id: 'po19',
          topicId: 'performance_optimization',
          question: 'Explain code splitting and deferred loading in Flutter.',
        ),
        Question(
          id: 'po20',
          topicId: 'performance_optimization',
          question: 'How to optimize animation performance?',
        ),
        Question(
          id: 'po21',
          topicId: 'performance_optimization',
          question: 'What are performance best practices for large lists?',
        ),
        Question(
          id: 'po22',
          topicId: 'performance_optimization',
          question: 'How to measure and optimize app size?',
        ),
        Question(
          id: 'po23',
          topicId: 'performance_optimization',
          question: 'Explain tree shaking in Flutter builds.',
        ),
        Question(
          id: 'po24',
          topicId: 'performance_optimization',
          question: 'How to optimize network requests for performance?',
        ),
        Question(
          id: 'po25',
          topicId: 'performance_optimization',
          question: 'What is Flutter DevTools and how to use it effectively?',
        ),
      ],
    ),
    Topic(
      id: 'animations_graphics',
      title: 'Animations & Graphics',
      description: 'Animation systems, custom painting, and graphics in Flutter',
      isDart: false,
      questions: [
        Question(
          id: 'ag1',
          topicId: 'animations_graphics',
          question: 'Explain the Flutter animation system architecture.',
        ),
        Question(
          id: 'ag2',
          topicId: 'animations_graphics',
          question: 'Difference between Animation, AnimationController, and Tween.',
        ),
        Question(
          id: 'ag3',
          topicId: 'animations_graphics',
          question: 'How to create implicit vs explicit animations?',
        ),
        Question(
          id: 'ag4',
          topicId: 'animations_graphics',
          question: 'What is AnimatedBuilder and when to use it?',
        ),
        Question(
          id: 'ag5',
          topicId: 'animations_graphics',
          question: 'Explain TickerProvider and its role in animations.',
        ),
        Question(
          id: 'ag6',
          topicId: 'animations_graphics',
          question: 'How to create complex animation sequences?',
        ),
        Question(
          id: 'ag7',
          topicId: 'animations_graphics',
          question: 'What are animation curves and how to use them?',
        ),
        Question(
          id: 'ag8',
          topicId: 'animations_graphics',
          question: 'How to implement staggered animations?',
        ),
        Question(
          id: 'ag9',
          topicId: 'animations_graphics',
          question: 'Explain Hero animations and shared element transitions.',
        ),
        Question(
          id: 'ag10',
          topicId: 'animations_graphics',
          question: 'How to create custom transitions between routes?',
        ),
        Question(
          id: 'ag11',
          topicId: 'animations_graphics',
          question: 'What is CustomPainter and how to use it?',
        ),
        Question(
          id: 'ag12',
          topicId: 'animations_graphics',
          question: 'How to draw custom shapes and paths in Flutter?',
        ),
        Question(
          id: 'ag13',
          topicId: 'animations_graphics',
          question: 'Explain Canvas and Paint classes.',
        ),
        Question(
          id: 'ag14',
          topicId: 'animations_graphics',
          question: 'How to optimize custom painting performance?',
        ),
        Question(
          id: 'ag15',
          topicId: 'animations_graphics',
          question: 'What is RenderObject and how to create custom render objects?',
        ),
        Question(
          id: 'ag16',
          topicId: 'animations_graphics',
          question: 'How to implement gesture-driven animations?',
        ),
        Question(
          id: 'ag17',
          topicId: 'animations_graphics',
          question: 'Explain physics-based animations in Flutter.',
        ),
        Question(
          id: 'ag18',
          topicId: 'animations_graphics',
          question: 'How to create morphing animations between widgets?',
        ),
        Question(
          id: 'ag19',
          topicId: 'animations_graphics',
          question: 'What is Lottie and how to integrate it in Flutter?',
        ),
        Question(
          id: 'ag20',
          topicId: 'animations_graphics',
          question: 'How to implement parallax scrolling effects?',
        ),
        Question(
          id: 'ag21',
          topicId: 'animations_graphics',
          question: 'Explain shader usage in Flutter custom painting.',
        ),
        Question(
          id: 'ag22',
          topicId: 'animations_graphics',
          question: 'How to create animated charts and graphs?',
        ),
        Question(
          id: 'ag23',
          topicId: 'animations_graphics',
          question: 'What is Transform widget and its animation applications?',
        ),
        Question(
          id: 'ag24',
          topicId: 'animations_graphics',
          question: 'How to implement particle systems in Flutter?',
        ),
        Question(
          id: 'ag25',
          topicId: 'animations_graphics',
          question: 'Explain animation testing strategies and best practices.',
        ),
      ],
    ),
    Topic(
      id: 'platform_integration',
      title: 'Platform Integration',
      description: 'Native platform integration, plugins, and platform channels',
      isDart: false,
      questions: [
        Question(
          id: 'pi1',
          topicId: 'platform_integration',
          question: 'What are platform channels and how do they work?',
        ),
        Question(
          id: 'pi2',
          topicId: 'platform_integration',
          question: 'Difference between MethodChannel, EventChannel, and BasicMessageChannel.',
        ),
        Question(
          id: 'pi3',
          topicId: 'platform_integration',
          question: 'How to create a Flutter plugin from scratch?',
        ),
        Question(
          id: 'pi4',
          topicId: 'platform_integration',
          question: 'Explain platform-specific implementations in plugins.',
        ),
        Question(
          id: 'pi5',
          topicId: 'platform_integration',
          question: 'How to handle platform channel exceptions?',
        ),
        Question(
          id: 'pi6',
          topicId: 'platform_integration',
          question: 'What is Pigeon and how does it improve platform channels?',
        ),
        Question(
          id: 'pi7',
          topicId: 'platform_integration',
          question: 'How to integrate native Android libraries in Flutter?',
        ),
        Question(
          id: 'pi8',
          topicId: 'platform_integration',
          question: 'How to integrate native iOS libraries in Flutter?',
        ),
        Question(
          id: 'pi9',
          topicId: 'platform_integration',
          question: 'Explain embedding Flutter in existing native apps.',
        ),
        Question(
          id: 'pi10',
          topicId: 'platform_integration',
          question: 'How to handle permissions in Flutter apps?',
        ),
        Question(
          id: 'pi11',
          topicId: 'platform_integration',
          question: 'What is Platform.isAndroid vs Theme.of(context).platform?',
        ),
        Question(
          id: 'pi12',
          topicId: 'platform_integration',
          question: 'How to access device features like camera, GPS, sensors?',
        ),
        Question(
          id: 'pi13',
          topicId: 'platform_integration',
          question: 'Explain background processing in Flutter apps.',
        ),
        Question(
          id: 'pi14',
          topicId: 'platform_integration',
          question: 'How to implement push notifications?',
        ),
        Question(
          id: 'pi15',
          topicId: 'platform_integration',
          question: 'What is local authentication and biometric integration?',
        ),
        Question(
          id: 'pi16',
          topicId: 'platform_integration',
          question: 'How to handle app lifecycle events?',
        ),
        Question(
          id: 'pi17',
          topicId: 'platform_integration',
          question: 'Explain file system access and external storage.',
        ),
        Question(
          id: 'pi18',
          topicId: 'platform_integration',
          question: 'How to implement deep linking across platforms?',
        ),
        Question(
          id: 'pi19',
          topicId: 'platform_integration',
          question: 'What is platform view and when to use it?',
        ),
        Question(
          id: 'pi20',
          topicId: 'platform_integration',
          question: 'How to handle platform-specific UI differences?',
        ),
        Question(
          id: 'pi21',
          topicId: 'platform_integration',
          question: 'Explain Flutter for web platform considerations.',
        ),
        Question(
          id: 'pi22',
          topicId: 'platform_integration',
          question: 'How to implement desktop-specific features?',
        ),
        Question(
          id: 'pi23',
          topicId: 'platform_integration',
          question: 'What are the security considerations for platform integration?',
        ),
        Question(
          id: 'pi24',
          topicId: 'platform_integration',
          question: 'How to test platform channel implementations?',
        ),
        Question(
          id: 'pi25',
          topicId: 'platform_integration',
          question: 'Explain isolate communication with platform channels.',
        ),
      ],
    ),
    Topic(
      id: 'testing_debugging',
      title: 'Testing & Debugging',
      description: 'Testing strategies, debugging techniques, and QA approaches',
      isDart: false,
      questions: [
        Question(
          id: 'td1',
          topicId: 'testing_debugging',
          question: 'Explain the testing pyramid in Flutter development.',
        ),
        Question(
          id: 'td2',
          topicId: 'testing_debugging',
          question: 'Difference between unit, widget, and integration tests.',
        ),
        Question(
          id: 'td3',
          topicId: 'testing_debugging',
          question: 'How to write effective widget tests in Flutter?',
        ),
        Question(
          id: 'td4',
          topicId: 'testing_debugging',
          question: 'What is testWidgets and how to use it?',
        ),
        Question(
          id: 'td5',
          topicId: 'testing_debugging',
          question: 'How to test state management implementations?',
        ),
        Question(
          id: 'td6',
          topicId: 'testing_debugging',
          question: 'Explain mocking strategies in Flutter testing.',
        ),
        Question(
          id: 'td7',
          topicId: 'testing_debugging',
          question: 'How to test asynchronous code and Futures?',
        ),
        Question(
          id: 'td8',
          topicId: 'testing_debugging',
          question: 'What is integration testing and how to implement it?',
        ),
        Question(
          id: 'td9',
          topicId: 'testing_debugging',
          question: 'How to test navigation and routing?',
        ),
        Question(
          id: 'td10',
          topicId: 'testing_debugging',
          question: 'Explain golden file testing in Flutter.',
        ),
        Question(
          id: 'td11',
          topicId: 'testing_debugging',
          question: 'How to test animations and gestures?',
        ),
        Question(
          id: 'td12',
          topicId: 'testing_debugging',
          question: 'What is flutter_driver and when to use it?',
        ),
        Question(
          id: 'td13',
          topicId: 'testing_debugging',
          question: 'How to test platform channel implementations?',
        ),
        Question(
          id: 'td14',
          topicId: 'testing_debugging',
          question: 'Explain test fixtures and setup strategies.',
        ),
        Question(
          id: 'td15',
          topicId: 'testing_debugging',
          question: 'How to achieve high test coverage in Flutter apps?',
        ),
        Question(
          id: 'td16',
          topicId: 'testing_debugging',
          question: 'What are the debugging tools available in Flutter?',
        ),
        Question(
          id: 'td17',
          topicId: 'testing_debugging',
          question: 'How to use breakpoints and step debugging effectively?',
        ),
        Question(
          id: 'td18',
          topicId: 'testing_debugging',
          question: 'Explain Flutter inspector for debugging UI issues.',
        ),
        Question(
          id: 'td19',
          topicId: 'testing_debugging',
          question: 'How to debug performance issues in Flutter?',
        ),
        Question(
          id: 'td20',
          topicId: 'testing_debugging',
          question: 'What is logging and how to implement structured logging?',
        ),
        Question(
          id: 'td21',
          topicId: 'testing_debugging',
          question: 'How to debug memory leaks and performance bottlenecks?',
        ),
        Question(
          id: 'td22',
          topicId: 'testing_debugging',
          question: 'Explain error handling and crash reporting strategies.',
        ),
        Question(
          id: 'td23',
          topicId: 'testing_debugging',
          question: 'How to implement A/B testing in Flutter apps?',
        ),
        Question(
          id: 'td24',
          topicId: 'testing_debugging',
          question: 'What is continuous integration for Flutter projects?',
        ),
        Question(
          id: 'td25',
          topicId: 'testing_debugging',
          question: 'How to automate testing and deployment pipelines?',
        ),
      ],
    ),
    Topic(
      id: 'networking_data',
      title: 'Networking & Data',
      description: 'HTTP requests, data persistence, and backend integration',
      isDart: false,
      questions: [
        Question(
          id: 'nd1',
          topicId: 'networking_data',
          question: 'How to make HTTP requests in Flutter?',
        ),
        Question(
          id: 'nd2',
          topicId: 'networking_data',
          question: 'Difference between http package and dio package.',
        ),
        Question(
          id: 'nd3',
          topicId: 'networking_data',
          question: 'How to handle network errors and timeouts?',
        ),
        Question(
          id: 'nd4',
          topicId: 'networking_data',
          question: 'Explain REST API integration best practices.',
        ),
        Question(
          id: 'nd5',
          topicId: 'networking_data',
          question: 'How to implement authentication and token management?',
        ),
        Question(
          id: 'nd6',
          topicId: 'networking_data',
          question: 'What is JSON serialization and deserialization?',
        ),
        Question(
          id: 'nd7',
          topicId: 'networking_data',
          question: 'How to generate JSON models automatically?',
        ),
        Question(
          id: 'nd8',
          topicId: 'networking_data',
          question: 'Explain local storage options in Flutter.',
        ),
        Question(
          id: 'nd9',
          topicId: 'networking_data',
          question: 'Difference between SharedPreferences, Hive, and SQLite.',
        ),
        Question(
          id: 'nd10',
          topicId: 'networking_data',
          question: 'How to implement offline-first architecture?',
        ),
        Question(
          id: 'nd11',
          topicId: 'networking_data',
          question: 'What is data caching and cache invalidation strategies?',
        ),
        Question(
          id: 'nd12',
          topicId: 'networking_data',
          question: 'How to implement data synchronization?',
        ),
        Question(
          id: 'nd13',
          topicId: 'networking_data',
          question: 'Explain WebSocket integration in Flutter.',
        ),
        Question(
          id: 'nd14',
          topicId: 'networking_data',
          question: 'How to handle file uploads and downloads?',
        ),
        Question(
          id: 'nd15',
          topicId: 'networking_data',
          question: 'What is GraphQL integration in Flutter?',
        ),
        Question(
          id: 'nd16',
          topicId: 'networking_data',
          question: 'How to implement pagination for large datasets?',
        ),
        Question(
          id: 'nd17',
          topicId: 'networking_data',
          question: 'Explain database migration strategies.',
        ),
        Question(
          id: 'nd18',
          topicId: 'networking_data',
          question: 'How to handle network connectivity changes?',
        ),
        Question(
          id: 'nd19',
          topicId: 'networking_data',
          question: 'What is retrofit pattern for API clients?',
        ),
        Question(
          id: 'nd20',
          topicId: 'networking_data',
          question: 'How to implement request/response interceptors?',
        ),
        Question(
          id: 'nd21',
          topicId: 'networking_data',
          question: 'Explain data encryption and security practices.',
        ),
        Question(
          id: 'nd22',
          topicId: 'networking_data',
          question: 'How to handle large file operations efficiently?',
        ),
        Question(
          id: 'nd23',
          topicId: 'networking_data',
          question: 'What is Firebase integration in Flutter?',
        ),
        Question(
          id: 'nd24',
          topicId: 'networking_data',
          question: 'How to implement real-time data updates?',
        ),
        Question(
          id: 'nd25',
          topicId: 'networking_data',
          question: 'Explain backend-as-a-service integration strategies.',
        ),
      ],
    ),
    Topic(
      id: 'architecture_patterns',
      title: 'Architecture & Patterns',
      description: 'Software architecture patterns and design principles',
      isDart: false,
      questions: [
        Question(
          id: 'ap1',
          topicId: 'architecture_patterns',
          question: 'Explain MVVM pattern in Flutter development.',
        ),
        Question(
          id: 'ap2',
          topicId: 'architecture_patterns',
          question: 'How to implement Clean Architecture in Flutter?',
        ),
        Question(
          id: 'ap3',
          topicId: 'architecture_patterns',
          question: 'What is Repository pattern and its implementation?',
        ),
        Question(
          id: 'ap4',
          topicId: 'architecture_patterns',
          question: 'Explain Dependency Injection in Flutter.',
        ),
        Question(
          id: 'ap5',
          topicId: 'architecture_patterns',
          question: 'How to implement Service Locator pattern?',
        ),
        Question(
          id: 'ap6',
          topicId: 'architecture_patterns',
          question: 'What is get_it and how to use it effectively?',
        ),
        Question(
          id: 'ap7',
          topicId: 'architecture_patterns',
          question: 'Explain Facade pattern in Flutter context.',
        ),
        Question(
          id: 'ap8',
          topicId: 'architecture_patterns',
          question: 'How to implement Observer pattern?',
        ),
        Question(
          id: 'ap9',
          topicId: 'architecture_patterns',
          question: 'What is Factory pattern and its use cases?',
        ),
        Question(
          id: 'ap10',
          topicId: 'architecture_patterns',
          question: 'Explain Singleton pattern implementation and alternatives.',
        ),
        Question(
          id: 'ap11',
          topicId: 'architecture_patterns',
          question: 'How to structure large-scale Flutter applications?',
        ),
        Question(
          id: 'ap12',
          topicId: 'architecture_patterns',
          question: 'What is modular architecture and micro-frontends?',
        ),
        Question(
          id: 'ap13',
          topicId: 'architecture_patterns',
          question: 'Explain separation of concerns in Flutter apps.',
        ),
        Question(
          id: 'ap14',
          topicId: 'architecture_patterns',
          question: 'How to implement Command pattern for undo/redo?',
        ),
        Question(
          id: 'ap15',
          topicId: 'architecture_patterns',
          question: 'What is Event-Driven Architecture in Flutter?',
        ),
        Question(
          id: 'ap16',
          topicId: 'architecture_patterns',
          question: 'How to implement hexagonal architecture?',
        ),
        Question(
          id: 'ap17',
          topicId: 'architecture_patterns',
          question: 'Explain SOLID principles in Flutter development.',
        ),
        Question(
          id: 'ap18',
          topicId: 'architecture_patterns',
          question: 'How to handle cross-cutting concerns?',
        ),
        Question(
          id: 'ap19',
          topicId: 'architecture_patterns',
          question: 'What is Domain-Driven Design in Flutter context?',
        ),
        Question(
          id: 'ap20',
          topicId: 'architecture_patterns',
          question: 'How to implement feature-based architecture?',
        ),
        Question(
          id: 'ap21',
          topicId: 'architecture_patterns',
          question: 'Explain package organization and dependency management.',
        ),
        Question(
          id: 'ap22',
          topicId: 'architecture_patterns',
          question: 'How to implement plugin architecture?',
        ),
        Question(
          id: 'ap23',
          topicId: 'architecture_patterns',
          question: 'What is reactive architecture and its benefits?',
        ),
        Question(
          id: 'ap24',
          topicId: 'architecture_patterns',
          question: 'How to handle configuration and environment management?',
        ),
        Question(
          id: 'ap25',
          topicId: 'architecture_patterns',
          question: 'Explain scalability considerations for Flutter apps.',
        ),
      ],
    ),
    Topic(
      id: 'advanced_widgets',
      title: 'Advanced Widgets & UI',
      description: 'Advanced widget concepts, custom widgets, and complex UI patterns',
      isDart: false,
      questions: [
        Question(
          id: 'aw1',
          topicId: 'advanced_widgets',
          question: 'How to create custom widgets with complex layouts?',
        ),
        Question(
          id: 'aw2',
          topicId: 'advanced_widgets',
          question: 'Explain RenderBox and custom widget rendering.',
        ),
        Question(
          id: 'aw3',
          topicId: 'advanced_widgets',
          question: 'What is Sliver widgets and custom scroll effects?',
        ),
        Question(
          id: 'aw4',
          topicId: 'advanced_widgets',
          question: 'How to implement custom scroll behaviors?',
        ),
        Question(
          id: 'aw5',
          topicId: 'advanced_widgets',
          question: 'Explain CustomScrollView and its components.',
        ),
        Question(
          id: 'aw6',
          topicId: 'advanced_widgets',
          question: 'How to create adaptive and responsive layouts?',
        ),
        Question(
          id: 'aw7',
          topicId: 'advanced_widgets',
          question: 'What is LayoutBuilder and its use cases?',
        ),
        Question(
          id: 'aw8',
          topicId: 'advanced_widgets',
          question: 'How to implement custom form validation?',
        ),
        Question(
          id: 'aw9',
          topicId: 'advanced_widgets',
          question: 'Explain gesture recognition and custom gestures.',
        ),
        Question(
          id: 'aw10',
          topicId: 'advanced_widgets',
          question: 'How to create reusable widget libraries?',
        ),
        Question(
          id: 'aw11',
          topicId: 'advanced_widgets',
          question: 'What is Theme and custom theming strategies?',
        ),
        Question(
          id: 'aw12',
          topicId: 'advanced_widgets',
          question: 'How to implement dark mode and theme switching?',
        ),
        Question(
          id: 'aw13',
          topicId: 'advanced_widgets',
          question: 'Explain internationalization and localization.',
        ),
        Question(
          id: 'aw14',
          topicId: 'advanced_widgets',
          question: 'How to create custom dialogs and overlays?',
        ),
        Question(
          id: 'aw15',
          topicId: 'advanced_widgets',
          question: 'What is OverlayEntry and portal patterns?',
        ),
        Question(
          id: 'aw16',
          topicId: 'advanced_widgets',
          question: 'How to implement drag and drop functionality?',
        ),
        Question(
          id: 'aw17',
          topicId: 'advanced_widgets',
          question: 'Explain complex list implementations and optimizations.',
        ),
        Question(
          id: 'aw18',
          topicId: 'advanced_widgets',
          question: 'How to create custom tab implementations?',
        ),
        Question(
          id: 'aw19',
          topicId: 'advanced_widgets',
          question: 'What is composition vs inheritance in widget design?',
        ),
        Question(
          id: 'aw20',
          topicId: 'advanced_widgets',
          question: 'How to implement custom loading and error states?',
        ),
        Question(
          id: 'aw21',
          topicId: 'advanced_widgets',
          question: 'Explain widget tree optimization techniques.',
        ),
        Question(
          id: 'aw22',
          topicId: 'advanced_widgets',
          question: 'How to create platform-adaptive widgets?',
        ),
        Question(
          id: 'aw23',
          topicId: 'advanced_widgets',
          question: 'What is widget composition patterns?',
        ),
        Question(
          id: 'aw24',
          topicId: 'advanced_widgets',
          question: 'How to implement accessibility features in custom widgets?',
        ),
        Question(
          id: 'aw25',
          topicId: 'advanced_widgets',
          question: 'Explain advanced focus management and keyboard navigation.',
        ),
      ],
    ),
    Topic(
      id: 'flutter_web_desktop',
      title: 'Flutter Web & Desktop',
      description: 'Web and desktop specific considerations and implementations',
      isDart: false,
      questions: [
        Question(
          id: 'wd1',
          topicId: 'flutter_web_desktop',
          question: 'What are the differences between Flutter web and mobile?',
        ),
        Question(
          id: 'wd2',
          topicId: 'flutter_web_desktop',
          question: 'How to optimize Flutter web applications?',
        ),
        Question(
          id: 'wd3',
          topicId: 'flutter_web_desktop',
          question: 'Explain Flutter web rendering modes (HTML vs CanvasKit).',
        ),
        Question(
          id: 'wd4',
          topicId: 'flutter_web_desktop',
          question: 'How to handle web-specific navigation and URLs?',
        ),
        Question(
          id: 'wd5',
          topicId: 'flutter_web_desktop',
          question: 'What is SEO considerations for Flutter web?',
        ),
        Question(
          id: 'wd6',
          topicId: 'flutter_web_desktop',
          question: 'How to integrate JavaScript libraries in Flutter web?',
        ),
        Question(
          id: 'wd7',
          topicId: 'flutter_web_desktop',
          question: 'Explain desktop-specific UI patterns and behaviors.',
        ),
        Question(
          id: 'wd8',
          topicId: 'flutter_web_desktop',
          question: 'How to handle keyboard shortcuts in desktop apps?',
        ),
        Question(
          id: 'wd9',
          topicId: 'flutter_web_desktop',
          question: 'What is window management in Flutter desktop?',
        ),
        Question(
          id: 'wd10',
          topicId: 'flutter_web_desktop',
          question: 'How to implement context menus and desktop interactions?',
        ),
        Question(
          id: 'wd11',
          topicId: 'flutter_web_desktop',
          question: 'Explain file system access in desktop applications.',
        ),
        Question(
          id: 'wd12',
          topicId: 'flutter_web_desktop',
          question: 'How to handle responsive design across all platforms?',
        ),
        Question(
          id: 'wd13',
          topicId: 'flutter_web_desktop',
          question: 'What are the limitations of Flutter web?',
        ),
        Question(
          id: 'wd14',
          topicId: 'flutter_web_desktop',
          question: 'How to implement PWA features in Flutter web?',
        ),
        Question(
          id: 'wd15',
          topicId: 'flutter_web_desktop',
          question: 'Explain deployment strategies for web and desktop.',
        ),
        Question(
          id: 'wd16',
          topicId: 'flutter_web_desktop',
          question: 'How to handle browser compatibility issues?',
        ),
        Question(
          id: 'wd17',
          topicId: 'flutter_web_desktop',
          question: 'What is dart2js vs dart2wasm compilation?',
        ),
        Question(
          id: 'wd18',
          topicId: 'flutter_web_desktop',
          question: 'How to implement web-specific plugins?',
        ),
        Question(
          id: 'wd19',
          topicId: 'flutter_web_desktop',
          question: 'Explain performance considerations for large web apps.',
        ),
        Question(
          id: 'wd20',
          topicId: 'flutter_web_desktop',
          question: 'How to handle web analytics and tracking?',
        ),
      ],
    ),
    Topic(
      id: 'security_deployment',
      title: 'Security & Deployment',
      description: 'Security best practices, CI/CD, and production considerations',
      isDart: false,
      questions: [
        Question(
          id: 'sd1',
          topicId: 'security_deployment',
          question: 'What are the security best practices for Flutter apps?',
        ),
        Question(
          id: 'sd2',
          topicId: 'security_deployment',
          question: 'How to secure API keys and sensitive data?',
        ),
        Question(
          id: 'sd3',
          topicId: 'security_deployment',
          question: 'Explain code obfuscation in Flutter builds.',
        ),
        Question(
          id: 'sd4',
          topicId: 'security_deployment',
          question: 'How to implement certificate pinning?',
        ),
        Question(
          id: 'sd5',
          topicId: 'security_deployment',
          question: 'What is root/jailbreak detection in Flutter?',
        ),
        Question(
          id: 'sd6',
          topicId: 'security_deployment',
          question: 'How to handle secure storage and encryption?',
        ),
        Question(
          id: 'sd7',
          topicId: 'security_deployment',
          question: 'Explain build configurations and flavors.',
        ),
        Question(
          id: 'sd8',
          topicId: 'security_deployment',
          question: 'How to set up CI/CD pipelines for Flutter?',
        ),
        Question(
          id: 'sd9',
          topicId: 'security_deployment',
          question: 'What is automated testing in CI/CD workflows?',
        ),
        Question(
          id: 'sd10',
          topicId: 'security_deployment',
          question: 'How to implement staging and production environments?',
        ),
        Question(
          id: 'sd11',
          topicId: 'security_deployment',
          question: 'Explain app signing and release management.',
        ),
        Question(
          id: 'sd12',
          topicId: 'security_deployment',
          question: 'How to handle app store deployment processes?',
        ),
        Question(
          id: 'sd13',
          topicId: 'security_deployment',
          question: 'What is feature flagging and remote configuration?',
        ),
        Question(
          id: 'sd14',
          topicId: 'security_deployment',
          question: 'How to implement crash reporting and monitoring?',
        ),
        Question(
          id: 'sd15',
          topicId: 'security_deployment',
          question: 'Explain analytics and user tracking implementation.',
        ),
        Question(
          id: 'sd16',
          topicId: 'security_deployment',
          question: 'How to handle app updates and versioning?',
        ),
        Question(
          id: 'sd17',
          topicId: 'security_deployment',
          question: 'What is A/B testing and gradual rollouts?',
        ),
        Question(
          id: 'sd18',
          topicId: 'security_deployment',
          question: 'How to implement beta testing workflows?',
        ),
        Question(
          id: 'sd19',
          topicId: 'security_deployment',
          question: 'Explain performance monitoring in production.',
        ),
        Question(
          id: 'sd20',
          topicId: 'security_deployment',
          question: 'How to handle production debugging and issue resolution?',
        ),
      ],
    ),
    Topic(
      id: 'advanced_concepts',
      title: 'Advanced Concepts',
      description: 'Cutting-edge Flutter features and advanced development concepts',
      isDart: false,
      questions: [
        Question(
          id: 'ac1',
          topicId: 'advanced_concepts',
          question: 'What is Flutter Elements framework internals?',
        ),
        Question(
          id: 'ac2',
          topicId: 'advanced_concepts',
          question: 'Explain the three-tree architecture in detail.',
        ),
        Question(
          id: 'ac3',
          topicId: 'advanced_concepts',
          question: 'How to create custom render objects?',
        ),
        Question(
          id: 'ac4',
          topicId: 'advanced_concepts',
          question: 'What is widget binding and engine integration?',
        ),
        Question(
          id: 'ac5',
          topicId: 'advanced_concepts',
          question: 'Explain Flutter\'s gesture disambiguation system.',
        ),
        Question(
          id: 'ac6',
          topicId: 'advanced_concepts',
          question: 'How does Flutter handle memory management internally?',
        ),
        Question(
          id: 'ac7',
          topicId: 'advanced_concepts',
          question: 'What is compute function and isolate spawning?',
        ),
        Question(
          id: 'ac8',
          topicId: 'advanced_concepts',
          question: 'Explain platform view integration and hybrid composition.',
        ),
        Question(
          id: 'ac9',
          topicId: 'advanced_concepts',
          question: 'How to implement custom scroll physics?',
        ),
        Question(
          id: 'ac10',
          topicId: 'advanced_concepts',
          question: 'What is Flutter\'s layered architecture?',
        ),
        Question(
          id: 'ac11',
          topicId: 'advanced_concepts',
          question: 'Explain binding and service registration.',
        ),
        Question(
          id: 'ac12',
          topicId: 'advanced_concepts',
          question: 'How to create custom binding classes?',
        ),
        Question(
          id: 'ac13',
          topicId: 'advanced_concepts',
          question: 'What is Flutter FFI and native interop?',
        ),
        Question(
          id: 'ac14',
          topicId: 'advanced_concepts',
          question: 'Explain shader compilation and GPU integration.',
        ),
        Question(
          id: 'ac15',
          topicId: 'advanced_concepts',
          question: 'How to implement custom painting with shaders?',
        ),
        Question(
          id: 'ac16',
          topicId: 'advanced_concepts',
          question: 'What is Flutter Inspector API and tooling integration?',
        ),
        Question(
          id: 'ac17',
          topicId: 'advanced_concepts',
          question: 'Explain hot reload internals and limitations.',
        ),
        Question(
          id: 'ac18',
          topicId: 'advanced_concepts',
          question: 'How to contribute to Flutter framework?',
        ),
        Question(
          id: 'ac19',
          topicId: 'advanced_concepts',
          question: 'What is Flutter\'s compilation pipeline?',
        ),
        Question(
          id: 'ac20',
          topicId: 'advanced_concepts',
          question: 'Explain engine modifications and custom builds.',
        ),
        Question(
          id: 'ac21',
          topicId: 'advanced_concepts',
          question: 'How to implement custom platform channels?',
        ),
        Question(
          id: 'ac22',
          topicId: 'advanced_concepts',
          question: 'What is Flutter embedding API?',
        ),
        Question(
          id: 'ac23',
          topicId: 'advanced_concepts',
          question: 'Explain texture and external surface integration.',
        ),
        Question(
          id: 'ac24',
          topicId: 'advanced_concepts',
          question: 'How to implement custom scrollable widgets?',
        ),
        Question(
          id: 'ac25',
          topicId: 'advanced_concepts',
          question: 'What are the future directions and roadmap for Flutter?',
        ),
      ],
    ),
  ];
}