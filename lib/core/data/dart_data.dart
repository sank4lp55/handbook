// lib/data/dart_data.dart

import 'package:handbook/features/home/models/question.dart';
import 'package:handbook/features/home/models/topic.dart';

class DartData {
  static const List<Topic> dartTopics = [
    Topic(
      id: 'dart_basics',
      title: 'Dart Basics',
      description: 'Fundamental concepts of Dart programming language',
      isDart: true,
      questions: [
        Question(
          id: 'q1',
          topicId: 'dart_basics',
          question: 'What is Dart and why is it used?',
        ),
        Question(
          id: 'q2',
          topicId: 'dart_basics',
          question: 'Explain the key features of Dart.',
        ),
        Question(
          id: 'q3',
          topicId: 'dart_basics',
          question: 'Difference between Dart and JavaScript.',
        ),
        Question(
          id: 'q4',
          topicId: 'dart_basics',
          question: 'What is Dart\'s execution model?',
        ),
        Question(
          id: 'q5',
          topicId: 'dart_basics',
          question: 'How is Dart compiled (AOT vs JIT)?',
        ),
        Question(
          id: 'q6',
          topicId: 'dart_basics',
          question: 'Explain void main() in Dart.',
        ),
        Question(
          id: 'q7',
          topicId: 'dart_basics',
          question: 'What are Dart\'s data types?',
        ),
        Question(
          id: 'q8',
          topicId: 'dart_basics',
          question: 'Difference between var, final, and const.',
        ),
        Question(
          id: 'q9',
          topicId: 'dart_basics',
          question: 'Explain type inference in Dart.',
        ),
        Question(
          id: 'q10',
          topicId: 'dart_basics',
          question: 'What are nullable and non-nullable types?',
        ),
        Question(
          id: 'q11',
          topicId: 'dart_basics',
          question: 'What is sound null safety?',
        ),
        Question(
          id: 'q12',
          topicId: 'dart_basics',
          question: 'How to declare nullable variables?',
        ),
        Question(
          id: 'q13',
          topicId: 'dart_basics',
          question: 'What is late initialization in Dart?',
        ),
        Question(
          id: 'q14',
          topicId: 'dart_basics',
          question: 'Difference between late and lazy initialization.',
        ),
        Question(
          id: 'q15',
          topicId: 'dart_basics',
          question: 'Explain string interpolation in Dart.',
        ),
        Question(
          id: 'q16',
          topicId: 'dart_basics',
          question: 'Difference between == and identical().',
        ),
        Question(
          id: 'q17',
          topicId: 'dart_basics',
          question: 'How does Dart handle numbers?',
        ),
        Question(
          id: 'q18',
          topicId: 'dart_basics',
          question: 'What is the num type in Dart?',
        ),
        Question(
          id: 'q19',
          topicId: 'dart_basics',
          question: 'How to convert String to int/double in Dart?',
        ),
        Question(
          id: 'q20',
          topicId: 'dart_basics',
          question: 'How to convert int/double to String in Dart?',
        ),
        Question(
          id: 'q21',
          topicId: 'dart_basics',
          question: 'What is dynamic in Dart?',
        ),
        Question(
          id: 'q22',
          topicId: 'dart_basics',
          question: 'Difference between Object? and dynamic.',
        ),
        Question(
          id: 'q23',
          topicId: 'dart_basics',
          question: 'What is Null in Dart?',
        ),
        Question(
          id: 'q24',
          topicId: 'dart_basics',
          question: 'Explain is and as operators.',
        ),
        Question(
          id: 'q25',
          topicId: 'dart_basics',
          question: 'Difference between ==, ===, and identical().',
        ),
        Question(
          id: 'q26',
          topicId: 'dart_basics',
          question: 'How does Dart handle constants at compile-time?',
        ),
        Question(
          id: 'q27',
          topicId: 'dart_basics',
          question: 'Can you reassign a final variable?',
        ),
        Question(
          id: 'q28',
          topicId: 'dart_basics',
          question: 'Explain collections in Dart.',
        ),
        Question(
          id: 'q29',
          topicId: 'dart_basics',
          question: 'What is the spread operator (...) in Dart?',
        ),
        Question(
          id: 'q30',
          topicId: 'dart_basics',
          question: 'Difference between List, Set, and Map.',
        ),
        Question(
          id: 'q31',
          topicId: 'dart_basics',
          question:
              'What is the difference between growable and fixed-length lists?',
        ),
        Question(
          id: 'q32',
          topicId: 'dart_basics',
          question: 'How do you declare a Set in Dart?',
        ),
        Question(
          id: 'q33',
          topicId: 'dart_basics',
          question: 'How do you remove duplicates from a List?',
        ),
        Question(
          id: 'q34',
          topicId: 'dart_basics',
          question: 'Explain Map literals in Dart.',
        ),
        Question(
          id: 'q35',
          topicId: 'dart_basics',
          question: 'Difference between for, for-in, and forEach.',
        ),
        Question(
          id: 'q36',
          topicId: 'dart_basics',
          question: 'Explain switch in Dart and its limitations.',
        ),
        Question(
          id: 'q37',
          topicId: 'dart_basics',
          question: 'Can switch work with strings in Dart?',
        ),
        Question(
          id: 'q38',
          topicId: 'dart_basics',
          question: 'Explain break and continue.',
        ),
        Question(
          id: 'q39',
          topicId: 'dart_basics',
          question: 'Explain conditional expressions in Dart (?: and ??).',
        ),
        Question(
          id: 'q40',
          topicId: 'dart_basics',
          question: 'What is the ??= operator?',
        ),
      ],
    ),
    Topic(
      id: 'functions_oop',
      title: 'Functions & OOP',
      description: 'Object-oriented programming and functions in Dart',
      isDart: true,
      questions: [
        Question(
          id: 'f1',
          topicId: 'functions_oop',
          question: 'How do you declare a function in Dart?',
        ),
        Question(
          id: 'f2',
          topicId: 'functions_oop',
          question:
              'Difference between required, optional, and named parameters.',
        ),
        Question(
          id: 'f3',
          topicId: 'functions_oop',
          question: 'What are default parameter values?',
        ),
        Question(
          id: 'f4',
          topicId: 'functions_oop',
          question: 'What are fat arrow (=>) functions?',
        ),
        Question(
          id: 'f5',
          topicId: 'functions_oop',
          question: 'What is a first-class function?',
        ),
        Question(
          id: 'f6',
          topicId: 'functions_oop',
          question: 'Can functions be stored in variables in Dart?',
        ),
        Question(
          id: 'f7',
          topicId: 'functions_oop',
          question: 'What is a higher-order function?',
        ),
        Question(
          id: 'f8',
          topicId: 'functions_oop',
          question: 'What is a closure in Dart?',
        ),
        Question(
          id: 'f9',
          topicId: 'functions_oop',
          question: 'Explain anonymous functions in Dart.',
        ),
        Question(
          id: 'f10',
          topicId: 'functions_oop',
          question: 'What is recursion in Dart?',
        ),
        Question(
          id: 'f11',
          topicId: 'functions_oop',
          question: 'Explain pure vs impure functions.',
        ),
        Question(
          id: 'f12',
          topicId: 'functions_oop',
          question:
              'Difference between synchronous and asynchronous functions.',
        ),
        Question(
          id: 'f13',
          topicId: 'functions_oop',
          question: 'What is an abstract class in Dart?',
        ),
        Question(
          id: 'f14',
          topicId: 'functions_oop',
          question: 'Difference between abstract class and interface in Dart.',
        ),
        Question(
          id: 'f15',
          topicId: 'functions_oop',
          question: 'Can Dart have multiple inheritance?',
        ),
        Question(
          id: 'f16',
          topicId: 'functions_oop',
          question: 'Explain mixins in Dart.',
        ),
        Question(
          id: 'f17',
          topicId: 'functions_oop',
          question: 'Difference between extends, implements, and with.',
        ),
        Question(
          id: 'f18',
          topicId: 'functions_oop',
          question: 'What is method overriding?',
        ),
        Question(
          id: 'f19',
          topicId: 'functions_oop',
          question: 'What is method overloading (and does Dart support it)?',
        ),
        Question(
          id: 'f20',
          topicId: 'functions_oop',
          question: 'What is a factory constructor in Dart?',
        ),
        Question(
          id: 'f21',
          topicId: 'functions_oop',
          question: 'Difference between const and factory constructors.',
        ),
        Question(
          id: 'f22',
          topicId: 'functions_oop',
          question: 'Explain private variables in Dart.',
        ),
        Question(
          id: 'f23',
          topicId: 'functions_oop',
          question: 'How is encapsulation implemented in Dart?',
        ),
        Question(
          id: 'f24',
          topicId: 'functions_oop',
          question: 'What are getters and setters in Dart?',
        ),
        Question(
          id: 'f25',
          topicId: 'functions_oop',
          question: 'Difference between this and super.',
        ),
        Question(
          id: 'f26',
          topicId: 'functions_oop',
          question: 'Explain inheritance in Dart.',
        ),
        Question(
          id: 'f27',
          topicId: 'functions_oop',
          question: 'What is polymorphism in Dart?',
        ),
        Question(
          id: 'f28',
          topicId: 'functions_oop',
          question: 'Explain static methods and variables in Dart.',
        ),
        Question(
          id: 'f29',
          topicId: 'functions_oop',
          question: 'What are cascade operators (.. and ?..) in Dart?',
        ),
        Question(
          id: 'f30',
          topicId: 'functions_oop',
          question: 'How to create immutable classes in Dart?',
        ),
        Question(
          id: 'f31',
          topicId: 'functions_oop',
          question:
              'What is the difference between shallow copy and deep copy?',
        ),
        Question(
          id: 'f32',
          topicId: 'functions_oop',
          question: 'Explain object equality in Dart.',
        ),
        Question(
          id: 'f33',
          topicId: 'functions_oop',
          question: 'How to override toString() in Dart?',
        ),
        Question(
          id: 'f34',
          topicId: 'functions_oop',
          question: 'Explain enums in Dart.',
        ),
        Question(
          id: 'f35',
          topicId: 'functions_oop',
          question: 'What are enhanced enums in Dart?',
        ),
        Question(
          id: 'f36',
          topicId: 'functions_oop',
          question: 'Can enums have methods in Dart?',
        ),
        Question(
          id: 'f37',
          topicId: 'functions_oop',
          question: 'What are extension methods?',
        ),
        Question(
          id: 'f38',
          topicId: 'functions_oop',
          question:
              'How do you add methods to existing classes without inheritance?',
        ),
        Question(
          id: 'f39',
          topicId: 'functions_oop',
          question: 'Explain operator overloading in Dart.',
        ),
        Question(
          id: 'f40',
          topicId: 'functions_oop',
          question: 'Give examples of overloaded operators in Dart.',
        ),
        Question(
          id: 'f41',
          topicId: 'functions_oop',
          question: 'What is call() method in Dart classes?',
        ),
        Question(
          id: 'f42',
          topicId: 'functions_oop',
          question: 'What is dependency injection in Dart?',
        ),
        Question(
          id: 'f43',
          topicId: 'functions_oop',
          question: 'Explain Singleton pattern in Dart.',
        ),
        Question(
          id: 'f44',
          topicId: 'functions_oop',
          question: 'How to implement a Singleton in Dart?',
        ),
        Question(
          id: 'f45',
          topicId: 'functions_oop',
          question: 'Difference between eager and lazy Singleton.',
        ),
        Question(
          id: 'f46',
          topicId: 'functions_oop',
          question:
              'What is the difference between new and object instantiation in Dart?',
        ),
        Question(
          id: 'f47',
          topicId: 'functions_oop',
          question: 'Explain late binding vs early binding.',
        ),
        Question(
          id: 'f48',
          topicId: 'functions_oop',
          question: 'How does Dart handle memory allocation for objects?',
        ),
        Question(
          id: 'f49',
          topicId: 'functions_oop',
          question: 'What is garbage collection in Dart?',
        ),
        Question(
          id: 'f50',
          topicId: 'functions_oop',
          question: 'Explain object lifecycle in Dart.',
        ),
      ],
    ),
    Topic(
      id: 'async_concurrency',
      title: 'Async & Concurrency',
      description: 'Asynchronous programming and concurrency in Dart',
      isDart: true,
      questions: [
        Question(
          id: 'a1',
          topicId: 'async_concurrency',
          question: 'What is asynchronous programming in Dart?',
        ),
        Question(
          id: 'a2',
          topicId: 'async_concurrency',
          question: 'Difference between synchronous and asynchronous code.',
        ),
        Question(
          id: 'a3',
          topicId: 'async_concurrency',
          question: 'Explain the event loop in Dart.',
        ),
        Question(
          id: 'a4',
          topicId: 'async_concurrency',
          question: 'What is a Future in Dart?',
        ),
        Question(
          id: 'a5',
          topicId: 'async_concurrency',
          question: 'How to create a Future?',
        ),
        Question(
          id: 'a6',
          topicId: 'async_concurrency',
          question: 'What is Future.value and Future.error?',
        ),
        Question(
          id: 'a7',
          topicId: 'async_concurrency',
          question: 'How do you handle Future results?',
        ),
        Question(
          id: 'a8',
          topicId: 'async_concurrency',
          question: 'Difference between then and await.',
        ),
        Question(
          id: 'a9',
          topicId: 'async_concurrency',
          question: 'Explain async and await in Dart.',
        ),
        Question(
          id: 'a10',
          topicId: 'async_concurrency',
          question: 'Can await be used inside main()?',
        ),
        Question(
          id: 'a11',
          topicId: 'async_concurrency',
          question: 'Difference between microtask and event queue.',
        ),
        Question(
          id: 'a12',
          topicId: 'async_concurrency',
          question: 'How to create a Stream in Dart?',
        ),
        Question(
          id: 'a13',
          topicId: 'async_concurrency',
          question:
              'Difference between single-subscription and broadcast streams.',
        ),
        Question(
          id: 'a14',
          topicId: 'async_concurrency',
          question: 'How to listen to a Stream?',
        ),
        Question(
          id: 'a15',
          topicId: 'async_concurrency',
          question: 'What is async* in Dart?',
        ),
        Question(
          id: 'a16',
          topicId: 'async_concurrency',
          question: 'Explain yield and yield*.',
        ),
        Question(
          id: 'a17',
          topicId: 'async_concurrency',
          question: 'How do you cancel a Stream subscription?',
        ),
        Question(
          id: 'a18',
          topicId: 'async_concurrency',
          question: 'Explain StreamController.',
        ),
        Question(
          id: 'a19',
          topicId: 'async_concurrency',
          question: 'What is an isolate in Dart?',
        ),
        Question(
          id: 'a20',
          topicId: 'async_concurrency',
          question: 'Difference between isolate and thread.',
        ),
        Question(
          id: 'a21',
          topicId: 'async_concurrency',
          question: 'How to communicate between isolates?',
        ),
        Question(
          id: 'a22',
          topicId: 'async_concurrency',
          question: 'What is SendPort and ReceivePort?',
        ),
        Question(
          id: 'a23',
          topicId: 'async_concurrency',
          question: 'What is the difference between compute and isolates?',
        ),
        Question(
          id: 'a24',
          topicId: 'async_concurrency',
          question:
              'How to run heavy computations in Dart without blocking UI?',
        ),
        Question(
          id: 'a25',
          topicId: 'async_concurrency',
          question: 'Explain Timer in Dart.',
        ),
        Question(
          id: 'a26',
          topicId: 'async_concurrency',
          question: 'What is a synchronous generator function?',
        ),
        Question(
          id: 'a27',
          topicId: 'async_concurrency',
          question: 'Explain difference between async function and generator.',
        ),
        Question(
          id: 'a28',
          topicId: 'async_concurrency',
          question: 'What is the difference between Stream and Future?',
        ),
        Question(
          id: 'a29',
          topicId: 'async_concurrency',
          question: 'Can you convert a Future into a Stream?',
        ),
        Question(
          id: 'a30',
          topicId: 'async_concurrency',
          question: 'Can you convert a Stream into a Future?',
        ),
      ],
    ),
    Topic(
      id: 'advanced_dart',
      title: 'Advanced Dart',
      description:
          'Advanced Dart concepts including generics, reflection, and modern features',
      isDart: true,
      questions: [
        Question(
          id: 'ad1',
          topicId: 'advanced_dart',
          question: 'What are generics in Dart?',
        ),
        Question(
          id: 'ad2',
          topicId: 'advanced_dart',
          question: 'Why do we use generics?',
        ),
        Question(
          id: 'ad3',
          topicId: 'advanced_dart',
          question: 'Give an example of a generic class.',
        ),
        Question(
          id: 'ad4',
          topicId: 'advanced_dart',
          question: 'Explain generic functions.',
        ),
        Question(
          id: 'ad5',
          topicId: 'advanced_dart',
          question: 'Can generics have type constraints?',
        ),
        Question(
          id: 'ad6',
          topicId: 'advanced_dart',
          question: 'What are bounded generics in Dart?',
        ),
        Question(
          id: 'ad7',
          topicId: 'advanced_dart',
          question: 'Difference between List<Object> and List<dynamic>.',
        ),
        Question(
          id: 'ad8',
          topicId: 'advanced_dart',
          question: 'Explain covariant and contravariant in Dart.',
        ),
        Question(
          id: 'ad9',
          topicId: 'advanced_dart',
          question: 'What is typedef in Dart?',
        ),
        Question(
          id: 'ad10',
          topicId: 'advanced_dart',
          question: 'Explain typedef with generics.',
        ),
        Question(
          id: 'ad11',
          topicId: 'advanced_dart',
          question: 'What are mixins with generics?',
        ),
        Question(
          id: 'ad12',
          topicId: 'advanced_dart',
          question: 'What is reified generics (and does Dart support it)?',
        ),
        Question(
          id: 'ad13',
          topicId: 'advanced_dart',
          question: 'What is reflection in Dart?',
        ),
        Question(
          id: 'ad14',
          topicId: 'advanced_dart',
          question: 'Does Dart support runtime reflection?',
        ),
        Question(
          id: 'ad15',
          topicId: 'advanced_dart',
          question: 'How do you achieve reflection in Dart?',
        ),
        Question(
          id: 'ad16',
          topicId: 'advanced_dart',
          question: 'What is dart:mirrors?',
        ),
        Question(
          id: 'ad17',
          topicId: 'advanced_dart',
          question: 'Why is dart:mirrors avoided in Flutter apps?',
        ),
        Question(
          id: 'ad18',
          topicId: 'advanced_dart',
          question: 'Explain metaprogramming in Dart.',
        ),
        Question(
          id: 'ad19',
          topicId: 'advanced_dart',
          question: 'What are annotations in Dart?',
        ),
        Question(
          id: 'ad20',
          topicId: 'advanced_dart',
          question: 'Create a custom annotation in Dart.',
        ),
        Question(
          id: 'ad21',
          topicId: 'advanced_dart',
          question: 'Difference between compile-time and runtime constants.',
        ),
        Question(
          id: 'ad22',
          topicId: 'advanced_dart',
          question: 'What are macros in Dart?',
        ),
        Question(
          id: 'ad23',
          topicId: 'advanced_dart',
          question: 'Explain inline classes in Dart.',
        ),
        Question(
          id: 'ad24',
          topicId: 'advanced_dart',
          question: 'What are records in Dart (Dart 3 feature)?',
        ),
        Question(
          id: 'ad25',
          topicId: 'advanced_dart',
          question: 'How do you use pattern matching in Dart?',
        ),
        Question(
          id: 'ad26',
          topicId: 'advanced_dart',
          question: 'Explain destructuring in Dart.',
        ),
        Question(
          id: 'ad27',
          topicId: 'advanced_dart',
          question: 'Difference between switch and pattern matching.',
        ),
        Question(
          id: 'ad28',
          topicId: 'advanced_dart',
          question: 'Explain sealed classes in Dart.',
        ),
        Question(
          id: 'ad29',
          topicId: 'advanced_dart',
          question: 'What are base, interface, and final classes in Dart?',
        ),
        Question(
          id: 'ad30',
          topicId: 'advanced_dart',
          question: 'When to use sealed classes vs enums?',
        ),
        Question(
          id: 'ad31',
          topicId: 'advanced_dart',
          question: 'Explain extension types in Dart.',
        ),
        Question(
          id: 'ad32',
          topicId: 'advanced_dart',
          question: 'What are operator extensions?',
        ),
        Question(
          id: 'ad33',
          topicId: 'advanced_dart',
          question: 'Can Dart have multiple constructors?',
        ),
        Question(
          id: 'ad34',
          topicId: 'advanced_dart',
          question: 'Difference between redirecting constructors and factory.',
        ),
        Question(
          id: 'ad35',
          topicId: 'advanced_dart',
          question: 'Explain const constructors.',
        ),
        Question(
          id: 'ad36',
          topicId: 'advanced_dart',
          question: 'What are inline functions in Dart?',
        ),
        Question(
          id: 'ad37',
          topicId: 'advanced_dart',
          question: 'Does Dart support macros like C++?',
        ),
        Question(
          id: 'ad38',
          topicId: 'advanced_dart',
          question: 'What is code generation in Dart?',
        ),
        Question(
          id: 'ad39',
          topicId: 'advanced_dart',
          question: 'What is build_runner?',
        ),
        Question(
          id: 'ad40',
          topicId: 'advanced_dart',
          question: 'What are source_gen annotations?',
        ),
      ],
    ),
    Topic(
      id: 'memory_performance',
      title: 'Memory & Performance',
      description:
          'Memory management, performance optimization, and best practices',
      isDart: true,
      questions: [
        Question(
          id: 'mp1',
          topicId: 'memory_performance',
          question: 'How does Dart handle memory management?',
        ),
        Question(
          id: 'mp2',
          topicId: 'memory_performance',
          question: 'What is a heap in Dart?',
        ),
        Question(
          id: 'mp3',
          topicId: 'memory_performance',
          question: 'What is a stack in Dart?',
        ),
        Question(
          id: 'mp4',
          topicId: 'memory_performance',
          question: 'Difference between heap and stack allocation.',
        ),
        Question(
          id: 'mp5',
          topicId: 'memory_performance',
          question: 'How does Dart\'s garbage collector work?',
        ),
        Question(
          id: 'mp6',
          topicId: 'memory_performance',
          question: 'Explain memory leaks in Dart.',
        ),
        Question(
          id: 'mp7',
          topicId: 'memory_performance',
          question: 'How do you avoid memory leaks?',
        ),
        Question(
          id: 'mp8',
          topicId: 'memory_performance',
          question: 'What is a weak reference?',
        ),
        Question(
          id: 'mp9',
          topicId: 'memory_performance',
          question: 'Does Dart support weak references?',
        ),
        Question(
          id: 'mp10',
          topicId: 'memory_performance',
          question: 'What is object pooling?',
        ),
        Question(
          id: 'mp11',
          topicId: 'memory_performance',
          question: 'When to use const constructors for optimization?',
        ),
        Question(
          id: 'mp12',
          topicId: 'memory_performance',
          question: 'How to reduce GC pressure in Dart?',
        ),
        Question(
          id: 'mp13',
          topicId: 'memory_performance',
          question: 'Explain lazy loading in Dart.',
        ),
        Question(
          id: 'mp14',
          topicId: 'memory_performance',
          question: 'What is just-in-time (JIT) compilation?',
        ),
        Question(
          id: 'mp15',
          topicId: 'memory_performance',
          question: 'What is ahead-of-time (AOT) compilation?',
        ),
        Question(
          id: 'mp16',
          topicId: 'memory_performance',
          question: 'Difference between JIT and AOT in Dart.',
        ),
        Question(
          id: 'mp17',
          topicId: 'memory_performance',
          question: 'Explain hot reload in Dart.',
        ),
        Question(
          id: 'mp18',
          topicId: 'memory_performance',
          question: 'Explain hot restart in Dart.',
        ),
        Question(
          id: 'mp19',
          topicId: 'memory_performance',
          question: 'When is hot reload not possible?',
        ),
        Question(
          id: 'mp20',
          topicId: 'memory_performance',
          question: 'Explain tree-shaking in Dart.',
        ),
        Question(
          id: 'mp21',
          topicId: 'memory_performance',
          question: 'What is dead code elimination?',
        ),
        Question(
          id: 'mp22',
          topicId: 'memory_performance',
          question: 'How does Dart ensure type safety at runtime?',
        ),
        Question(
          id: 'mp23',
          topicId: 'memory_performance',
          question: 'Difference between runtime and compile-time errors.',
        ),
        Question(
          id: 'mp24',
          topicId: 'memory_performance',
          question: 'What are checked vs unchecked exceptions in Dart?',
        ),
        Question(
          id: 'mp25',
          topicId: 'memory_performance',
          question: 'Explain try-catch-finally in Dart.',
        ),
        Question(
          id: 'mp26',
          topicId: 'memory_performance',
          question: 'Can you catch all exceptions in Dart?',
        ),
        Question(
          id: 'mp27',
          topicId: 'memory_performance',
          question: 'Explain on vs catch in error handling.',
        ),
        Question(
          id: 'mp28',
          topicId: 'memory_performance',
          question: 'Difference between rethrow and throw.',
        ),
        Question(
          id: 'mp29',
          topicId: 'memory_performance',
          question: 'Can Dart have custom exceptions?',
        ),
        Question(
          id: 'mp30',
          topicId: 'memory_performance',
          question: 'How to create custom exceptions in Dart?',
        ),
      ],
    ),
    Topic(
      id: 'packages_tools',
      title: 'Packages & Tools',
      description: 'Dart packages, tools, libraries, and testing',
      isDart: true,
      questions: [
        Question(
          id: 'pt1',
          topicId: 'packages_tools',
          question: 'What is pubspec.yaml?',
        ),
        Question(
          id: 'pt2',
          topicId: 'packages_tools',
          question: 'Difference between dependencies and dev_dependencies.',
        ),
        Question(
          id: 'pt3',
          topicId: 'packages_tools',
          question: 'What is pub get and pub upgrade?',
        ),
        Question(
          id: 'pt4',
          topicId: 'packages_tools',
          question: 'How to create a Dart package?',
        ),
        Question(
          id: 'pt5',
          topicId: 'packages_tools',
          question: 'What is dart:core library?',
        ),
        Question(
          id: 'pt6',
          topicId: 'packages_tools',
          question: 'What is dart:io library?',
        ),
        Question(
          id: 'pt7',
          topicId: 'packages_tools',
          question: 'What is dart:convert library?',
        ),
        Question(
          id: 'pt8',
          topicId: 'packages_tools',
          question: 'How to parse JSON in Dart?',
        ),
        Question(
          id: 'pt9',
          topicId: 'packages_tools',
          question: 'Difference between jsonEncode and jsonDecode.',
        ),
        Question(
          id: 'pt10',
          topicId: 'packages_tools',
          question: 'How to write unit tests in Dart?',
        ),
        Question(
          id: 'pt11',
          topicId: 'packages_tools',
          question: 'What is test package in Dart?',
        ),
        Question(
          id: 'pt12',
          topicId: 'packages_tools',
          question: 'How to mock dependencies in Dart?',
        ),
        Question(
          id: 'pt13',
          topicId: 'packages_tools',
          question: 'What is mockito in Dart testing?',
        ),
        Question(
          id: 'pt14',
          topicId: 'packages_tools',
          question: 'Difference between integration test and unit test.',
        ),
        Question(
          id: 'pt15',
          topicId: 'packages_tools',
          question: 'How do you benchmark performance in Dart?',
        ),
        Question(
          id: 'pt16',
          topicId: 'packages_tools',
          question: 'What is code linting in Dart?',
        ),
        Question(
          id: 'pt17',
          topicId: 'packages_tools',
          question: 'Explain dart analyze.',
        ),
        Question(
          id: 'pt18',
          topicId: 'packages_tools',
          question: 'What is dartfmt?',
        ),
        Question(
          id: 'pt19',
          topicId: 'packages_tools',
          question: 'What is null-aware operator in Dart?',
        ),
        Question(
          id: 'pt20',
          topicId: 'packages_tools',
          question: 'What new features were added in Dart 3?',
        ),
      ],
    ),
    Topic(
      id: 'error_handling_zones',
      title: 'Error Handling & Zones',
      description: 'Error handling mechanisms and zone concepts in Dart',
      isDart: true,
      questions: [
        Question(
          id: 'eh1',
          topicId: 'error_handling_zones',
          question: 'Difference between Error and Exception in Dart.',
        ),
        Question(
          id: 'eh2',
          topicId: 'error_handling_zones',
          question: 'What is StackTrace in Dart and how do you use it?',
        ),
        Question(
          id: 'eh3',
          topicId: 'error_handling_zones',
          question: 'What are Uncaught Exceptions?',
        ),
        Question(
          id: 'eh4',
          topicId: 'error_handling_zones',
          question: 'How does Dart handle uncaught exceptions in async code?',
        ),
        Question(
          id: 'eh5',
          topicId: 'error_handling_zones',
          question: 'Explain Zones in Dart.',
        ),
        Question(
          id: 'eh6',
          topicId: 'error_handling_zones',
          question: 'How do Zones help in error handling?',
        ),
        Question(
          id: 'eh7',
          topicId: 'error_handling_zones',
          question: 'Can you override error handling globally in Dart?',
        ),
        Question(
          id: 'eh8',
          topicId: 'error_handling_zones',
          question: 'What are synchronous vs asynchronous errors?',
        ),
        Question(
          id: 'eh9',
          topicId: 'error_handling_zones',
          question: 'What happens if an exception is thrown in isolate?',
        ),
        Question(
          id: 'eh10',
          topicId: 'error_handling_zones',
          question: 'How to log and monitor exceptions in Dart apps?',
        ),
      ],
    ),
    Topic(
      id: 'dart_vm_isolates',
      title: 'Dart VM & Isolates',
      description: 'Dart VM internals, isolates, and interoperability features',
      isDart: true,
      questions: [
        Question(
          id: 'vm1',
          topicId: 'dart_vm_isolates',
          question: 'What is Dart VM and how does it work?',
        ),
        Question(
          id: 'vm2',
          topicId: 'dart_vm_isolates',
          question: 'Difference between Dart VM and Flutter engine.',
        ),
        Question(
          id: 'vm3',
          topicId: 'dart_vm_isolates',
          question: 'What is snapshotting in Dart?',
        ),
        Question(
          id: 'vm4',
          topicId: 'dart_vm_isolates',
          question: 'Explain kernel snapshot vs app snapshot.',
        ),
        Question(
          id: 'vm5',
          topicId: 'dart_vm_isolates',
          question: 'How does Dart optimize performance at runtime?',
        ),
        Question(
          id: 'vm6',
          topicId: 'dart_vm_isolates',
          question: 'Why does Dart use isolates instead of threads?',
        ),
        Question(
          id: 'vm7',
          topicId: 'dart_vm_isolates',
          question: 'What are isolate groups in Dart?',
        ),
        Question(
          id: 'vm8',
          topicId: 'dart_vm_isolates',
          question: 'Explain memory isolation in isolates.',
        ),
        Question(
          id: 'vm9',
          topicId: 'dart_vm_isolates',
          question: 'When should you prefer isolates vs compute()?',
        ),
        Question(
          id: 'vm10',
          topicId: 'dart_vm_isolates',
          question: 'How to share data between isolates safely?',
        ),
        Question(
          id: 'vm11',
          topicId: 'dart_vm_isolates',
          question: 'What is FFI in Dart?',
        ),
        Question(
          id: 'vm12',
          topicId: 'dart_vm_isolates',
          question: 'How to call native C/C++ code from Dart?',
        ),
        Question(
          id: 'vm13',
          topicId: 'dart_vm_isolates',
          question: 'Difference between FFI and MethodChannel.',
        ),
        Question(
          id: 'vm14',
          topicId: 'dart_vm_isolates',
          question: 'When should you use FFI over platform channels?',
        ),
        Question(
          id: 'vm15',
          topicId: 'dart_vm_isolates',
          question: 'Can Dart interoperate with Java/Kotlin?',
        ),
        Question(
          id: 'vm16',
          topicId: 'dart_vm_isolates',
          question: 'Can Dart interoperate with Swift/Objective-C?',
        ),
        Question(
          id: 'vm17',
          topicId: 'dart_vm_isolates',
          question:
              'How does Dart handle type conversion across FFI boundaries?',
        ),
        Question(
          id: 'vm18',
          topicId: 'dart_vm_isolates',
          question: 'What are limitations of FFI in Dart?',
        ),
        Question(
          id: 'vm19',
          topicId: 'dart_vm_isolates',
          question: 'How does Dart ensure memory safety with FFI?',
        ),
        Question(
          id: 'vm20',
          topicId: 'dart_vm_isolates',
          question: 'Explain native extensions in Dart.',
        ),
      ],
    ),
    Topic(
      id: 'security_robustness',
      title: 'Security & Robustness',
      description: 'Security features and robustness mechanisms in Dart',
      isDart: true,
      questions: [
        Question(
          id: 'sr1',
          topicId: 'security_robustness',
          question: 'How does Dart handle type safety compared to TypeScript?',
        ),
        Question(
          id: 'sr2',
          topicId: 'security_robustness',
          question: 'How does Dart prevent integer overflow?',
        ),
        Question(
          id: 'sr3',
          topicId: 'security_robustness',
          question: 'What is strong mode in Dart?',
        ),
        Question(
          id: 'sr4',
          topicId: 'security_robustness',
          question: 'How does Dart ensure memory safety?',
        ),
        Question(
          id: 'sr5',
          topicId: 'security_robustness',
          question: 'Why are isolates safer than threads?',
        ),
        Question(
          id: 'sr6',
          topicId: 'security_robustness',
          question: 'How does Dart prevent race conditions?',
        ),
        Question(
          id: 'sr7',
          topicId: 'security_robustness',
          question: 'What security concerns exist with dart:mirrors?',
        ),
        Question(
          id: 'sr8',
          topicId: 'security_robustness',
          question: 'How does Dart handle sandboxing in Flutter Web?',
        ),
        Question(
          id: 'sr9',
          topicId: 'security_robustness',
          question: 'Can Dart code be obfuscated?',
        ),
        Question(
          id: 'sr10',
          topicId: 'security_robustness',
          question: 'How to secure sensitive data in Dart apps?',
        ),
      ],
    ),
    Topic(
      id: 'performance_optimization',
      title: 'Performance & Optimization',
      description: 'Advanced performance optimization techniques and profiling',
      isDart: true,
      questions: [
        Question(
          id: 'po1',
          topicId: 'performance_optimization',
          question: 'Explain inlining in Dart compilation.',
        ),
        Question(
          id: 'po2',
          topicId: 'performance_optimization',
          question: 'What are const contexts in Dart?',
        ),
        Question(
          id: 'po3',
          topicId: 'performance_optimization',
          question: 'How do const contexts improve performance?',
        ),
        Question(
          id: 'po4',
          topicId: 'performance_optimization',
          question: 'What is deferred loading in Dart?',
        ),
        Question(
          id: 'po5',
          topicId: 'performance_optimization',
          question: 'When to use deferred loading in Flutter apps?',
        ),
        Question(
          id: 'po6',
          topicId: 'performance_optimization',
          question: 'How does Dart reduce startup latency?',
        ),
        Question(
          id: 'po7',
          topicId: 'performance_optimization',
          question: 'What are warm-up JIT optimizations?',
        ),
        Question(
          id: 'po8',
          topicId: 'performance_optimization',
          question:
              'How does tree-shaking differ in Flutter vs Dart console apps?',
        ),
        Question(
          id: 'po9',
          topicId: 'performance_optimization',
          question: 'How does Dart optimize hot reload?',
        ),
        Question(
          id: 'po10',
          topicId: 'performance_optimization',
          question: 'What is snapshot compression in Dart?',
        ),
        Question(
          id: 'po11',
          topicId: 'performance_optimization',
          question: 'Explain memory fragmentation in Dart.',
        ),
        Question(
          id: 'po12',
          topicId: 'performance_optimization',
          question:
              'How does Dart handle memory allocation for short-lived objects?',
        ),
        Question(
          id: 'po13',
          topicId: 'performance_optimization',
          question: 'Why is using const constructors performance-friendly?',
        ),
        Question(
          id: 'po14',
          topicId: 'performance_optimization',
          question: 'What is string canonicalization in Dart?',
        ),
        Question(
          id: 'po15',
          topicId: 'performance_optimization',
          question: 'How does Dart optimize list operations internally?',
        ),
        Question(
          id: 'po16',
          topicId: 'performance_optimization',
          question: 'What is the impact of async/await on performance?',
        ),
        Question(
          id: 'po17',
          topicId: 'performance_optimization',
          question: 'How to profile a Dart app?',
        ),
        Question(
          id: 'po18',
          topicId: 'performance_optimization',
          question:
              'Tools to measure Dart performance (DevTools, Observatory).',
        ),
        Question(
          id: 'po19',
          topicId: 'performance_optimization',
          question: 'How does Dart optimize garbage collection?',
        ),
        Question(
          id: 'po20',
          topicId: 'performance_optimization',
          question: 'What are Dart VM service protocols?',
        ),
      ],
    ),
  ];
}
