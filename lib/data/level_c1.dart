import '../models/lesson.dart';

final Level levelC1 = Level(
  code: 'C1', name: 'Thanh thao', description: 'Kinh doanh, hoc thuat, tranh luan',
  lessons: [
    Lesson(id: 'c1_1', title: 'Dam phan kinh doanh', level: 'C1', skills: [
      Skill(type: 'nghe', title: 'Nghe dam phan', content: 'A: We are prepared to offer a 10% discount if you commit to a two-year contract.\nB: That sounds reasonable, but we need more flexibility on payment terms.', questions: ['Dieu kien giam gia?', 'B yeu cau gi?'], answers: ['2-year contract', 'flexibility on payment']),
      Skill(type: 'noi', title: 'Dam phan', content: 'Dam phan gia voi doi tac', questions: ['Noi: Chung toi co the chap nhan neu...'], answers: ['We can accept if you ...']),
      Skill(type: 'doc', title: 'Doc hop dong', content: 'Either party may terminate this agreement with 30 days written notice.', questions: ['Can bao truoc bao lau?', 'Hinh thuc?'], answers: ['30 days', 'written notice']),
      Skill(type: 'viet', title: 'Viet de xuat', content: 'Viet de xuat kinh doanh 5 cau', questions: ['Viet de xuat'], answers: ['We propose ... / Our offer includes ... / We believe ...']),
      Skill(type: 'dich', title: 'Dich kinh doanh', content: 'We look forward to a mutually beneficial partnership', questions: ['Nghia tieng Viet?'], answers: ['Chung toi mong doi mot moi quan he hop tac doi ben cung co loi']),
    ]),
    Lesson(id: 'c1_2', title: 'Viet hoc thuat', level: 'C1', skills: [
      Skill(type: 'nghe', title: 'Nghe bai giang', content: 'The research methodology employed in this study combines qualitative interviews with quantitative surveys.', questions: ['Phuong phap gi?', 'Ket hop gi?'], answers: ['research methodology', 'qualitative + quantitative']),
      Skill(type: 'noi', title: 'Thuyet trinh', content: 'Trinh bay quan diem hoc thuat', questions: ['Noi: Theo nghien cuu, ...'], answers: ['According to research, ...']),
      Skill(type: 'doc', title: 'Doc bai bao khoa hoc', content: 'The findings suggest a strong correlation between socioeconomic status and educational outcomes.', questions: ['Tuong quan giua gi?', 'Ket luan?'], answers: ['socioeconomic status + education', 'strong correlation']),
      Skill(type: 'viet', title: 'Viet luan hoc thuat', content: 'Viet mo bai cho bai luan ve AI va viec lam', questions: ['Viet mo bai'], answers: ['This essay examines ... / It argues that ...']),
      Skill(type: 'dich', title: 'Dich hoc thuat', content: 'The study provides compelling evidence to support this hypothesis', questions: ['Nghia tieng Viet?'], answers: ['Nghien cuu cung cap bang chung thuyet phuc ung ho gia thuyet nay']),
    ]),
    Lesson(id: 'c1_3', title: 'Tranh luan & Thuyet phuc', level: 'C1', skills: [
      Skill(type: 'nghe', title: 'Nghe tranh luan', content: 'While I acknowledge the merits of your argument, I must respectfully disagree with your conclusion.', questions: ['Nguoi noi thua nhan gi?', 'Ho lam gi?'], answers: ['merits of argument', 'respectfully disagree']),
      Skill(type: 'noi', title: 'Phan bien', content: 'Phan bien mot quan diem', questions: ['Noi: Toi hieu quan diem cua ban, nhung...'], answers: ['I understand your point, but ...']),
      Skill(type: 'doc', title: 'Doc bai tranh luan', content: 'Critics argue that the policy is well-intentioned but ultimately counterproductive.', questions: ['Chi trich gi?', 'Ket luan?'], answers: ['well-intentioned', 'counterproductive']),
      Skill(type: 'viet', title: 'Viet phan bien', content: 'Viet 5 cau phan bien ve mang xa hoi', questions: ['Viet 5 cau'], answers: ['While social media has ... / Nevertheless, ... / In conclusion, ...']),
      Skill(type: 'dich', title: 'Dich tranh luan', content: 'It is imperative that we address this issue without further delay', questions: ['Nghia tieng Viet?'], answers: ['Dieu cap thiet la chung ta phai giai quyet van de nay khong cham tre']),
    ]),
  ],
);
