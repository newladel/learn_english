import '../models/lesson.dart';

final Level levelA0 = Level(
  code: 'A0', name: 'Mat goc', description: 'Bang chu cai, so dem, mau sac',
  lessons: [
    Lesson(id: 'a0_1', title: 'Bang chu cai & Phat am', level: 'A0', skills: [
      Skill(type: 'nghe', title: 'Nghe bang chu cai', content: 'A B C D E F G H I J K L M N O P Q R S T U V W X Y Z', questions: ['Chu thu 3?', 'Chu thu 5?', 'Chu cuoi?'], answers: ['C', 'E', 'Z']),
      Skill(type: 'noi', title: 'Doc to bang chu cai', content: 'Doc to 26 chu cai tieng Anh', questions: ['Doc 5 chu dau', 'Doc 5 chu cuoi'], answers: ['A B C D E', 'V W X Y Z']),
      Skill(type: 'doc', title: 'Doc cau don gian', content: 'Hello. My name is Nam. I am a student.', questions: ['Ten nhan vat?', 'Nghe nghiep?'], answers: ['Nam', 'student']),
      Skill(type: 'viet', title: 'Viet cau gioi thieu', content: 'Viet cau gioi thieu ban than', questions: ['Viet: Toi ten la ___'], answers: ['My name is ___']),
      Skill(type: 'dich', title: 'Dich cau chao', content: 'Good morning', questions: ['Nghia tieng Viet?'], answers: ['Chao buoi sang']),
    ]),
    Lesson(id: 'a0_2', title: 'So dem 1-100', level: 'A0', skills: [
      Skill(type: 'nghe', title: 'Nghe so', content: 'one, two, three, four, five, six, seven, eight, nine, ten', questions: ['So 3?', 'So 7?', 'So 10?'], answers: ['three', 'seven', 'ten']),
      Skill(type: 'noi', title: 'Dem 1-10', content: 'Dem tu 1 den 10', questions: ['Doc to 1-10'], answers: ['one two three four five six seven eight nine ten']),
      Skill(type: 'doc', title: 'Doc so trong cau', content: 'I have 2 cats and 3 dogs.', questions: ['May meo?', 'May cho?'], answers: ['2', '3']),
      Skill(type: 'viet', title: 'Viet so bang chu', content: 'Viet 7 va 9 bang chu', questions: ['7 = ?', '9 = ?'], answers: ['seven', 'nine']),
      Skill(type: 'dich', title: 'Dich tuoi', content: 'I am 20 years old', questions: ['Nghia tieng Viet?'], answers: ['Toi 20 tuoi']),
    ]),
    Lesson(id: 'a0_3', title: 'Mau sac & Hinh dang', level: 'A0', skills: [
      Skill(type: 'nghe', title: 'Nghe mau sac', content: 'red, blue, green, yellow, black, white', questions: ['Mau do?', 'Mau xanh duong?'], answers: ['red', 'blue']),
      Skill(type: 'noi', title: 'Noi mau sac', content: 'Doc to 6 mau co ban', questions: ['Doc to'], answers: ['red blue green yellow black white']),
      Skill(type: 'doc', title: 'Doc mo ta', content: 'The sky is blue. The grass is green.', questions: ['Bau troi mau gi?', 'Co mau gi?'], answers: ['blue', 'green']),
      Skill(type: 'viet', title: 'Viet mau', content: 'Viet: Qua tao mau do', questions: ['Viet cau'], answers: ['The apple is red']),
      Skill(type: 'dich', title: 'Dich mau', content: 'My favorite color is blue', questions: ['Nghia tieng Viet?'], answers: ['Mau yeu thich cua toi la xanh duong']),
    ]),
  ],
);
