import '../models/lesson.dart';

final Level levelB1 = Level(
  code: 'B1', name: 'Trung cap', description: 'Cong viec, du lich, suc khoe',
  lessons: [
    Lesson(id: 'b1_1', title: 'Phong van xin viec', level: 'B1', skills: [
      Skill(type: 'nghe', title: 'Nghe phong van', content: 'Interviewer: Tell me about yourself.\nCandidate: I have 3 years of experience in marketing.', questions: ['Ung vien co may nam kinh nghiem?', 'Linh vuc gi?'], answers: ['3 years', 'marketing']),
      Skill(type: 'noi', title: 'Tu gioi thieu', content: 'Gioi thieu ban than trong 30 giay', questions: ['Noi: Toi co kinh nghiem ve...'], answers: ['I have experience in ...']),
      Skill(type: 'doc', title: 'Doc mo ta cong viec', content: 'We are looking for a candidate with strong communication skills and 2+ years of experience.', questions: ['Can ky nang gi?', 'Kinh nghiem bao nhieu?'], answers: ['communication', '2+ years']),
      Skill(type: 'viet', title: 'Viet email ung tuyen', content: 'Viet email ngan ung tuyen vi tri marketing', questions: ['Viet email'], answers: ['Dear Sir/Madam, I am writing to apply for ...']),
      Skill(type: 'dich', title: 'Dich phong van', content: 'What are your strengths and weaknesses?', questions: ['Nghia tieng Viet?'], answers: ['Diem manh va diem yeu cua ban la gi?']),
    ]),
    Lesson(id: 'b1_2', title: 'Du lich & Khach san', level: 'B1', skills: [
      Skill(type: 'nghe', title: 'Nghe dat phong', content: 'Receptionist: How many nights would you like to stay?\nGuest: Three nights, please.', questions: ['O may dem?', 'Ai hoi?'], answers: ['three', 'receptionist']),
      Skill(type: 'noi', title: 'Dat phong', content: 'Dat phong 2 dem cho 2 nguoi', questions: ['Noi: Toi muon dat phong cho 2 nguoi'], answers: ['I would like to book a room for two']),
      Skill(type: 'doc', title: 'Doc mo ta khach san', content: 'The hotel offers free breakfast, Wi-Fi, and a swimming pool.', questions: ['Co gi mien phi?', 'Co tien nghi gi?'], answers: ['breakfast, Wi-Fi', 'swimming pool']),
      Skill(type: 'viet', title: 'Viet email dat phong', content: 'Viet email dat phong 3 dem', questions: ['Viet email'], answers: ['I would like to book a room for 3 nights from ...']),
      Skill(type: 'dich', title: 'Dich du lich', content: 'Could you recommend a good restaurant nearby?', questions: ['Nghia tieng Viet?'], answers: ['Ban co the gioi thieu mot nha hang ngon gan day khong?']),
    ]),
    Lesson(id: 'b1_3', title: 'Suc khoe & Bac si', level: 'B1', skills: [
      Skill(type: 'nghe', title: 'Nghe kham benh', content: 'Doctor: What seems to be the problem?\nPatient: I have a headache and a fever.', questions: ['Benh nhan bi gi?', 'Ai hoi?'], answers: ['headache and fever', 'doctor']),
      Skill(type: 'noi', title: 'Mo ta trieu chung', content: 'Noi ban bi dau dau va sot', questions: ['Noi: Toi bi dau dau'], answers: ['I have a headache']),
      Skill(type: 'doc', title: 'Doc don thuoc', content: 'Take this medicine twice a day after meals.', questions: ['Uong may lan/ngay?', 'Uong khi nao?'], answers: ['twice', 'after meals']),
      Skill(type: 'viet', title: 'Viet tin nhan xin nghi', content: 'Viet tin nhan xin nghi om', questions: ['Viet tin nhan'], answers: ['I am feeling unwell and cannot come to work today']),
      Skill(type: 'dich', title: 'Dich suc khoe', content: 'You should see a doctor as soon as possible', questions: ['Nghia tieng Viet?'], answers: ['Ban nen di kham bac si cang som cang tot']),
    ]),
  ],
);
