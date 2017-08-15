# 성감대다이어리

## Controller
- Diary
- Post
- Comment

## 모델
- User : Omniauth Facebook
- Diary(주모델,컨트롤러) : category(라디오 버튼으로! 머리(head),머리카락(hair), 허리(waist), 팔(shoulder_left,arm_left,shoulder_right,arm_right), 다리(leg_left, leg_right)(2), 발(foot) 손(hand_left,wrist_left,hand_right,wrist_right), 중요부위(core), 엉덩이(hip), 몸(body), 등(back) - 18개], memo 
- Post(다른사람과 공유) : title, content, category 
- Comment(다른사람과 공유)
- Category(다른사람과 공유) : name, category_id
### 관계
User - Diary : 1 대 N 관계
User - Post : 1 대 N 관계
User - Comment : 1 대 N 관계
Post - Comment : 1 대 N 관계
Post - Category : N대 1관계

## 페이지
- index
- login
- signup
- new (성감대기록)
- show
- edit : radiobutton변경이 안되도록해야한다.
- post_index
- post_show
- post_edit
- post_new

## Gem
- devise
- omniauth-facebook
- chartkick
- gem 'compass-rails' # 이미지 불러올 때 필요한 젬
- gem 'tinymce'
- gem paginate

## 역할분배
- 이미지(성감대 선택) : 선홍, 다혜, 지연
- 로그인 : 명상, 지훈
- 게시판 : 현경, 승하
- 차트 : 다혜

## 김선홍
- diaries.scss lego코드 추가
- index.html.erb lego코드 추가, script 코드 추가
- edit,new 수정
- 전체를 감싸는 .containerbox를 추가한 뒤, application.css-> display: flex  
(position:absolute를 주석처리함) -> 등만 따로 빼서 추가 
- 엉덩이추가 - hip class 생성 
- 중요부위 - core class 생성 - 마무리
- 부트스트랩 깨짐으로 인한 css 수정
- user/sign_in -레이아웃 배치 작업 



## 2017-08-15 해야할일
1. Welcome page
2. navbar
3. naver-login
4. lego image
5. bootstrap적용
6. 모델 확실히

