import '../models/lesson.dart';

final Level levelA2 = Level(
  code: 'A2', name: 'Co ban', description: 'Mua sam, an uong, chi duong',
  lessons: [
    Lesson(id: 'a2_1', title: 'Mua sam', level: 'A2', skills: [
      Skill(type: 'nghe', title: 'Nghe hoi thoai mua sam', content: 'A: How much is this shirt?\nB: It is 20 dollars.\nA: Can I try it on?', questions: ['Ao gia bao nhieu?', 'A muon lam gi?'], answers: ['20 dollars', 'try it on']),
      Skill(type: 'noi', title: 'Hoi gia', content: 'Hoi gia mot mon do', questions: ['Noi: Cai nay bao nhieu tien?'], answers: ['How much is this?']),
      Skill(type: 'doc', title: 'Doc bang gia', content: 'T-shirt: 15 USD. Jeans: 30 USD. Shoes: 45 USD.', questions: ['Jeans gia bao nhieu?', 'Giay gia bao nhieu?'], answers: ['30 USD', '45 USD']),
      Skill(type: 'viet', title: 'Viet cau mua sam', content: 'Viet 2 cau hoi mua hang', questions: ['Viet 2 cau'], answers: ['How much is this? / Do you have this in blue?']),
      Skill(type: 'dich', title: 'Dich mua sam', content: 'I would like to buy this shirt', questions: ['Nghia tieng Viet?'], answers: ['Toi muon mua chiec ao nay']),
    ]),
    Lesson(id: 'a2_2', title: 'An uong & Nha hang', level: 'A2', skills: [
      Skill(type: 'nghe', title: 'Nghe goi mon', content: 'Waiter: What would you like to order?\nCustomer: I would like a coffee, please.', questions: ['Khach goi gi?', 'Ai hoi?'], answers: ['coffee', 'waiter']),
      Skill(type: 'noi', title: 'Goi mon', content: 'Goi mot mon an va do uong', questions: ['Noi: Toi muon mot tach ca phe'], answers: ['I would like a cup of coffee']),
      Skill(type: 'doc', title: 'Doc menu', content: 'Menu: Pho 5 USD, Rice 3 USD, Coffee 2 USD, Tea 1.5 USD.', questions: ['Pho gia bao nhieu?', 'Tra gia bao nhieu?'], answers: ['5 USD', '1.5 USD']),
      Skill(type: 'viet', title: 'Viet don goi mon', content: 'Viet 3 mon ban muon goi', questions: ['Viet 3 mon'], answers: ['I would like ... / Can I have ... / One ..., please']),
      Skill(type: 'dich', title: 'Dich nha hang', content: 'Can I have the bill, please?', questions: ['Nghia tieng Viet?'], answers: ['Cho toi xin hoa don duoc khong?']),
    ]),
    Lesson(id: 'a2_3', title: 'Chi duong', level: 'A2', skills: [
      Skill(type: 'nghe', title: 'Nghe chi duong', content: 'Go straight, then turn left at the traffic light. The bank is on your right.', questions: ['Re trai o dau?', 'Ngan hang o ben nao?'], answers: ['at the traffic light', 'on your right']),
      Skill(type: 'noi', title: 'Hoi duong', content: 'Hoi duong den nha ga', questions: ['Noi: Lam sao de den nha ga?'], answers: ['How do I get to the train station?']),
      Skill(type: 'doc', title: 'Doc ban do', content: 'The library is next to the park, opposite the hospital.', questions: ['Thu vien o canh gi?', 'Doi dien gi?'], answers: ['park', 'hospital']),
      Skill(type: 'viet', title: 'Viet chi duong', content: 'Viet 3 cau chi duong', questions: ['Viet 3 cau'], answers: ['Go straight / Turn left / Turn right']),
      Skill(type: 'dich', title: 'Dich chi duong', content: 'Excuse me, where is the nearest bus stop?', questions: ['Nghia tieng Viet?'], answers: ['Xin loi, ben xe buyt gan nhat o dau?']),
    ]),
  ],
);
