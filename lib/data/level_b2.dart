import '../models/lesson.dart';

final Level levelB2 = Level(
  code: 'B2', name: 'Kha', description: 'Cong nghe, moi truong, giao duc',
  lessons: [
    Lesson(id: 'b2_1', title: 'Cong nghe & Internet', level: 'B2', skills: [
      Skill(type: 'nghe', title: 'Nghe ve AI', content: 'Artificial intelligence is transforming many industries, from healthcare to finance.', questions: ['AI dang thay doi nganh nao?', 'Ke 2 nganh'], answers: ['healthcare, finance']),
      Skill(type: 'noi', title: 'Thao luan cong nghe', content: 'Noi ve loi ich va rui ro cua AI', questions: ['Noi 2 loi ich, 1 rui ro'], answers: ['AI improves efficiency / It can replace jobs']),
      Skill(type: 'doc', title: 'Doc bai viet', content: 'Social media has changed how people communicate, but it also raises privacy concerns.', questions: ['Social media thay doi gi?', 'Van de gi?'], answers: ['communication', 'privacy']),
      Skill(type: 'viet', title: 'Viet doan van', content: 'Viet 5 cau ve anh huong cua Internet', questions: ['Viet 5 cau'], answers: ['The Internet has ... / It allows people to ... / However, ...']),
      Skill(type: 'dich', title: 'Dich cong nghe', content: 'The company is investing heavily in research and development', questions: ['Nghia tieng Viet?'], answers: ['Cong ty dang dau tu manh vao nghien cuu va phat trien']),
    ]),
    Lesson(id: 'b2_2', title: 'Moi truong', level: 'B2', skills: [
      Skill(type: 'nghe', title: 'Nghe ve bien doi khi hau', content: 'Climate change is causing more frequent extreme weather events around the world.', questions: ['Hau qua chinh?', 'Pham vi anh huong?'], answers: ['extreme weather', 'around the world']),
      Skill(type: 'noi', title: 'Thao luan moi truong', content: 'Noi 3 cach bao ve moi truong', questions: ['Noi 3 cach'], answers: ['Reduce plastic / Recycle / Use public transport']),
      Skill(type: 'doc', title: 'Doc bao moi truong', content: 'Renewable energy sources such as solar and wind power are becoming cheaper every year.', questions: ['Nguon nang luong nao?', 'Xu huong gia?'], answers: ['solar, wind', 'cheaper']),
      Skill(type: 'viet', title: 'Viet luan moi truong', content: 'Viet 5 cau ve tam quan trong cua bao ve moi truong', questions: ['Viet 5 cau'], answers: ['Protecting the environment is ... / We should ...']),
      Skill(type: 'dich', title: 'Dich moi truong', content: 'Governments must take action to reduce carbon emissions', questions: ['Nghia tieng Viet?'], answers: ['Cac chinh phu phai hanh dong de giam khi thai carbon']),
    ]),
    Lesson(id: 'b2_3', title: 'Giao duc & Su nghiep', level: 'B2', skills: [
      Skill(type: 'nghe', title: 'Nghe ve hoc tap', content: 'Lifelong learning is essential in the rapidly changing job market.', questions: ['Hoc tap gi?', 'Tai sao can?'], answers: ['lifelong learning', 'changing job market']),
      Skill(type: 'noi', title: 'Thao luan su nghiep', content: 'Noi ve ke hoach su nghiep 5 nam toi', questions: ['Noi ke hoach'], answers: ['In 5 years, I want to ...']),
      Skill(type: 'doc', title: 'Doc ve giao duc', content: 'Online education has made learning more accessible, but it requires strong self-discipline.', questions: ['Uu diem?', 'Yeu cau gi?'], answers: ['accessible', 'self-discipline']),
      Skill(type: 'viet', title: 'Viet ve su nghiep', content: 'Viet 5 cau ve muc tieu su nghiep', questions: ['Viet 5 cau'], answers: ['My career goal is ... / I plan to ...']),
      Skill(type: 'dich', title: 'Dich giao duc', content: 'Education is the most powerful weapon to change the world', questions: ['Nghia tieng Viet?'], answers: ['Giao duc la vu khi manh me nhat de thay doi the gioi']),
    ]),
  ],
);
