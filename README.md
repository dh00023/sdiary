---
아이디어톤: 
해커톤: 20170718-20170719
참여자: 김승하, 김선홍, 김지훈 송지연, 신명상, 이현경, 정다혜
---

# sdiary

![Ruby on Rails](https://img.shields.io/badge/rails-v4.2.5-green)
![bootstrap](https://img.shields.io/badge/bootstrap-4.0.0.beta-green.svg)
![sqlLite3](https://img.shields.io/badge/sqlLite3-black.svg)


<!-- 대표 페이지 이미지 추가, 정보 가져오기 -->
sdiary는 숨겨지고 왜곡된 성에서 '나'에게로부터 솔직해지기를 바라는 프로젝트로 '나'에게부터 솔직해지기를 바라는 프로젝트입니다.
'나'에게 조금 더 관심을 가지고 성을 더 제대로 즐기기위해 시작되었습니다.

![](./assets/sdiary.JPG)

#### [Sdiary Live Demo](https://sdiary5.herokuapp.com/)

```
test / testtest
계정으로 접속해 테스트해볼 수 있습니다.
```

![image-20191223073133181](./assets/image-20191223073133181.png)

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
- chartkick
- gem 'compass-rails' # 이미지 불러올 때 필요한 젬
- gem 'tinymce'
- gem paginate
- gem 'simple_form' # input태그에 bootstrap태그 사용가
- devise
- omniauth-facebook
- gem 'omniauth-naver' # naver
- gem 'rolify'     # role 관리
- gem 'authority'  # 권한설정
- gem 'google-webfonts-rails' #google font 사용가능하게
- gem "font-awesome-rails"


## 역할분배

- 기획자 : 송지연
- 이미지(성감대 선택) : 김선홍, 송지연, 정다혜
- 로그인 : 김지훈, 신명상
- 게시판 : 김승하, 이현경
- 차트 : 정다혜

### 김선홍

- diaries.scss lego코드 추가
- index.html.erb lego코드 추가, script 코드 추가
- edit,new 수정
- 전체를 감싸는 .containerbox를 추가한 뒤, application.css-> display: flex  
(position:absolute를 주석처리함) -> 등만 따로 빼서 추가 
- 엉덩이추가 - hip class 생성 
- 중요부위 - core class 생성 - 마무리
- 부트스트랩 깨짐으로 인한 css 수정
- user/sign_in -레이아웃 배치 작업 
- 좌우 비대칭 관계 (scss 클래스를 2번으로 추가해서 바꿈)
- show, index db 데이터 이름 수정 
- user_sign_in, user_sign_up, user_edit page revised
- 하트 추가 , 색 변경
- 폰트 추가 

### 정다혜

- Diary CRUD , model
- bootstrap적용
- navbar
- lego image
- 'diaries/new'
- button수정
- posts페이지 부트스트랩적용
- posts페이지에서 카테고리추가
- Post게시판에서 user정보불러오기
- user(생년월일, 이름, 별명, 전화번호 추가)
- routes설정
- chart-kick
- deploy(heroku)