import '../models/lesson.dart';

final Level levelA1 = Level(
  code: 'A1', name: 'So cap', description: 'Chao hoi, gia dinh, thoi quen',
  lessons: [
    Lesson(id: 'a1_1', title: 'Chao hoi & Gioi thieu', level: 'A1', skills: [
      Skill(type: 'nghe', title: 'Nghe hoi thoai', content: 'A: Hello! How are you?\nB: I am fine, thank you. And you?', questions: ['A hoi gi?', 'B tra loi?'], answers: ['How are you?', 'I am fine, thank you']),
      Skill(type: 'noi', title: 'Thuc hanh chao hoi', content: 'Chao va hoi tham ban', questions: ['Noi: Xin chao, ban khoe khong?'], answers: ['Hello, how are you?']),
      Skill(type: 'doc', title: 'Doc hoi thoai', content: 'Tom: Good morning, Lisa.\nLisa: Good morning, Tom. Nice to meet you.', questions: ['Chao khi nao?', 'Lisa noi gi them?'], answers: ['morning', 'Nice to meet you']),
      Skill(type: 'viet', title: 'Viet loi chao', content: 'Viet 3 cach chao', questions: ['Viet 3 cach'], answers: ['Hello / Hi / Good morning']),
      Skill(type: 'dich', title: 'Dich cau hoi', content: 'How old are you?', questions: ['Nghia tieng Viet?'], answers: ['Ban bao nhieu tuoi?']),
    ]),
    Lesson(id: 'a1_2', title: 'Gia dinh & Ban be', level: 'A1', skills: [
      Skill(type: 'nghe', title: 'Nghe gioi thieu gia dinh', content: 'I have a father, a mother, and one sister.', questions: ['Co may chi/em gai?', 'Ke ten thanh vien?'], answers: ['1', 'father, mother, sister']),
      Skill(type: 'noi', title: 'Noi ve gia dinh', content: 'Gioi thieu 3 thanh vien gia dinh', questions: ['Noi ve gia dinh ban'], answers: ['This is my father/mother/brother']),
      Skill(type: 'doc', title: 'Doc doan van', content: 'My family has 4 people. We live in Hanoi.', questions: ['Gia dinh may nguoi?', 'O dau?'], answers: ['4', 'Hanoi']),
      Skill(type: 'viet', title: 'Viet ve gia dinh', content: 'Viet 2 cau ve gia dinh', questions: ['Viet 2 cau'], answers: ['My family has ... people. We live in ...']),
      Skill(type: 'dich', title: 'Dich ve gia dinh', content: 'I love my family very much', questions: ['Nghia tieng Viet?'], answers: ['Toi yeu gia dinh toi rat nhieu']),
    ]),
    Lesson(id: 'a1_3', title: 'Thoi quen hang ngay', level: 'A1', skills: [
      Skill(type: 'nghe', title: 'Nghe thoi quen', content: 'I wake up at 6. I have breakfast at 7. I go to school at 8.', questions: ['Thuc day luc may gio?', 'An sang luc may gio?'], answers: ['6', '7']),
      Skill(type: 'noi', title: 'Noi ve thoi quen', content: 'Ke 3 viec ban lam buoi sang', questions: ['Noi 3 viec'], answers: ['I wake up / I brush my teeth / I have breakfast']),
      Skill(type: 'doc', title: 'Doc lich trinh', content: 'Every day, Lan goes to school at 7 AM and comes home at 5 PM.', questions: ['Lan di hoc luc may gio?', 'Ve nha luc may gio?'], answers: ['7 AM', '5 PM']),
      Skill(type: 'viet', title: 'Viet thoi quen', content: 'Viet 3 cau ve thoi quen cua ban', questions: ['Viet 3 cau'], answers: ['I usually ... / I often ... / I always ...']),
      Skill(type: 'dich', title: 'Dich thoi quen', content: 'I always brush my teeth before bed', questions: ['Nghia tieng Viet?'], answers: ['Toi luon danh rang truoc khi ngu']),
    ]),
  ],
);
