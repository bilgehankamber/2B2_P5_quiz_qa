import 'package:deneme/models/question.dart';

List<Question> questions = [
  Question(
    question:
        "Aşağıdakilerden hangisi flutterda state'i update eden fonksiyondur?",
    answers: [
      Answer(answer: "setState", isCorrect: true),
      Answer(answer: "constructor", isCorrect: false),
      Answer(answer: "readState", isCorrect: false),
      Answer(answer: "writeState", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter hangi dili kullanır?",
    answers: [
      Answer(answer: "javascript", isCorrect: false),
      Answer(answer: "dart", isCorrect: true),
      Answer(answer: "c#", isCorrect: false),
      Answer(answer: "java", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter'da BuildContext nedir?",
    answers: [
      Answer(
          answer: "Widget'in durumunu saklamak için kullanılan bir veri türü",
          isCorrect: false),
      Answer(
          answer: "Widget'in yapısını tanımlayan bir yapı", isCorrect: false),
      Answer(
          answer: "Widget'in içinde yer aldığı yapıyı tanımlayan bir yapı",
          isCorrect: true),
      Answer(
          answer: "Widget'in boyutunu belirleyen bir yapı", isCorrect: false),
      Answer(
          answer: "Widget'in renklerini ve stili tanımlayan bir yapı",
          isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter'da Scaffold widget'i neyi temsil eder?",
    answers: [
      Answer(answer: "Uygulamanın genel temasını", isCorrect: false),
      Answer(answer: "Animasyonları", isCorrect: false),
      Answer(answer: "Kullanıcı girişi alanlarını", isCorrect: false),
      Answer(answer: "Grafikleri", isCorrect: false),
      Answer(answer: "Ekranın düzenini", isCorrect: true),
    ],
  ),
  Question(
    question: "Flutter'da widget nedir?",
    answers: [
      Answer(answer: "Temel yapı taşı", isCorrect: true),
      Answer(answer: "Fonksiyon", isCorrect: false),
      Answer(answer: "Sabit değer", isCorrect: false),
      Answer(answer: "Değişken", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter'da Hot Reload ne işe yarar?",
    answers: [
      Answer(
          answer: "Uygulamanın yalnızca kodunu yeniden yükler",
          isCorrect: false),
      Answer(
          answer: " Uygulamanın tüm kaynaklarını yeniden yükler",
          isCorrect: false),
      Answer(
          answer: "Kod değişikliklerini hızlıca uygulamaya yansıtır",
          isCorrect: true),
      Answer(answer: "Uygulamayı yeniden derler", isCorrect: false),
      Answer(answer: "Uygulamadaki tüm verileri sıfırlar", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter projesi hangi dosya ile başlatılır?",
    answers: [
      Answer(answer: "app.dart", isCorrect: false),
      Answer(answer: "index.dart", isCorrect: false),
      Answer(answer: "main.dart", isCorrect: true),
      Answer(answer: "start.dart", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter'da AppBar widget'i ne işe yarar?",
    answers: [
      Answer(
          answer: "Sayfanın başlığını ve işlevlerini gösterir.",
          isCorrect: true),
      Answer(answer: "Animasyonları kontrol eder.", isCorrect: false),
      Answer(answer: "Veritabanı işlemleri gerçekleştirir.", isCorrect: false),
      Answer(answer: "Kullanıcı etkileşimlerini dinler.", isCorrect: false),
      Answer(answer: "Ekranların düzenini belirler.", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter'da widgetlar nasıl hiyerarşik yapıda kullanılır?",
    answers: [
      Answer(answer: "Daire yapısı", isCorrect: false),
      Answer(answer: "Düz yapı", isCorrect: false),
      Answer(answer: "Üçgen yapı", isCorrect: false),
      Answer(answer: "Ağaç yapısı", isCorrect: true),
    ],
  ),
  Question(
    question: "Flutter'da Container widget'i ne işe yarar?",
    answers: [
      Answer(answer: "Veri tabanı işlemleri için kullanılır", isCorrect: false),
      Answer(answer: "Bir liste oluşturmak için kullanılır", isCorrect: false),
      Answer(
          answer: "Diğer widget'ları düzenlemek için kullanılır",
          isCorrect: true),
      Answer(
          answer: "Animasyonlar oluşturmak için kullanılır", isCorrect: false),
      Answer(
          answer: "Kullanıcı girişi almak için kullanılır", isCorrect: false),
    ],
  ),
  Question(
    question: "Flutter'da Navigator ne işe yarar?",
    answers: [
      Answer(
          answer: " Kullanıcı etkileşimlerini dinlemek için kullanılır",
          isCorrect: false),
      Answer(
          answer: " Bir ekranı diğerine geçiş yapmak için kullanılır",
          isCorrect: true),
      Answer(
          answer: "Uygulama simgelerini düzenlemek için kullanılır",
          isCorrect: false),
      Answer(
          answer: "Widget'ları düzenlemek için kullanılır", isCorrect: false),
      Answer(
          answer: "Uygulama menülerini oluşturmak için kullanılır",
          isCorrect: false),
    ],
  ),
];
