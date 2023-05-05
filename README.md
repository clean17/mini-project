# 구인구직 사이트 제작

> ## 시연영상 ( Youtube )


<a href="https://www.youtube.com/watch?v=JcPlD1fuNs0&ab_channel=%EB%A9%94%ED%83%80%EC%BD%94%EB%94%A9">![image](https://user-images.githubusercontent.com/118657689/234797375-8e1ca1f4-aac7-4365-9fd1-49b2c115aaea.png)</a>
<br>


> ## 발표자료 ( PDF )

![image](https://user-images.githubusercontent.com/118657689/234799285-04c5ef06-3bde-40fd-8068-2ae6b5630770.png)

- <a href="https://github.com/clean17/mini-project/files/11340940/6._.1_PPT.pdf">[6조_미니프로젝트1_PPT.pdf]</a>

<br>

> ## 프로젝트 소개

- 구직자와 구인회사가 서로의 이력과 공고를 등록, 구직자는 공고를 통해 입사지원을 하고 구인회사는 공개된 이력서나 지원된 이력서를 통해서 구인을 한다.

<br>

> ## 프로젝트 기간

- 2023-02-22 ~ 2023.03.07

<br>

> ## 기술 스택

- JDK 11
- Spring Boot 2.7.8
- MyBatis
- 테스트 h2 DB
- 프로덕션 MySql DB
- JSP
- JSTL

<br>

> ## 기능정리

### 1단계
- 메인화면 레이아웃 ( 공고 목록, 헤더, 푸터, 로그인아이콘 )
- 개인 - 회원가입, 로그인
- 기업 - 회원가입, 로그인
- 공고 목록 보기
- 공고 작성, 공고 수정
- 이력서 작성, 이력서 수정
- 상세 공고 보기
- 상세 공고 지원하기
- 기업이 이력서보고 제안하기
### 2단계
- 이메일 기억하기
- 비밀번호 확인
- 개인, 기업 정보 수정
- 공고, 이력서 삭제
- 받은 제안 마이홈에서 처리
- 받은 지원 기업홈에서 처리
### 3단계
- 개인의 보유기술 - 기업의 필요기술 매칭순으로 공고 보여주는 페이지
- 공개 이력서 검색 
- 개인의 관심 카테고리와 연관된 추천공고
- 상단 네비바 검색 기능
- 세부 조건으로 검색 기능 페이지
- 사진 추가 수정기능
### 4단계
- 개인 - 공고 스크랩
- 기업 - 이력서 스크랩
- SHA-256 암호화
- 지원, 제안 알림서비스
- 비밀번호 찾기 (x)
- 이메일 찾기 (x)

### 5단계
- 페이징 (x)
- Redis (x)

<br>

> ## 의존성 주입


```
implementation 'javax.servlet:jstl'
implementation 'org.apache.tomcat.embed:tomcat-embed-jasper'
implementation 'org.springframework.boot:spring-boot-starter-web'
implementation 'org.mybatis.spring.boot:mybatis-spring-boot-starter:2.3.0'
compileOnly 'org.projectlombok:lombok'
developmentOnly 'org.springframework.boot:spring-boot-devtools'
runtimeOnly 'com.h2database:h2'
annotationProcessor 'org.projectlombok:lombok'
testImplementation 'org.springframework.boot:spring-boot-starter-test'
testImplementation group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter-test', version: '2.2.2'
```

<br>

> ## 테이블 모델링

<br>

![mini-project-table](https://user-images.githubusercontent.com/118657689/236421490-b34233fe-337d-4bb0-80e6-27d4f09006c5.jpg)

<br>
<br>

> ## 기술 블로그

- <a href="https://velog.io/@merci/series/%EA%B5%AC%EC%9D%B8%EA%B5%AC%EC%A7%81-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8">블로그 링크</a>

<br>

> ## 담당 기능

- 박인우 (팀장) 
    - 테이블 설계 및 모델링, 정규화
    - 간단한 유틸 클래스 제공
    - 마이 홈 / 개인 홈 테이블(html) 넣고 데이터 넣기
    - 공고 목록 및 데이터 가져오기
    - 공고 작성, 수정 페이지, 공고 삭제(추가)
    - 공고 상세보기, 지원상태에 따른 버튼 변화(지원하기/지원완료)
    - 지원 및 제안시 이력서, 공고 선택하는 기능
    - 공고, 이력서 임시저장 기능
    - 받은 제안, 지원 현황 페이지 및 버튼으로 합격, 불합격, 수락, 거절 처리
    - 보유기술과 필요기술을 매칭시킨 공고 매칭서비스, 인재추천기능
    - 관심 카테고리와 공고의 포지션이 맞는 추천 공고
    - 공고 검색 + 채용페이지에서 여러 조건( 기술, 지역, 학력, 경력 )으로 중첩 검색기능
    - 기업정보, 공고정보, 기술가져오는 쿼리 작성
    - 이력서, 공고 스크랩 기능
    - 통합 테스트

- 이인화 
    - 이력서 작성, 수정, 삭제
    - 이력서 작성시 체크된 데이터 전달 및 insert / update 
    - 이력서 상세보기
    - 이력서 작성, 수정, 삭제 테스트

- 김유현 
    - 개인, 기업 회원가입 로그인 정보 수정폼 및 유효성 검사
    - 지도 api 사용
    - 회원가입, 로그인, 정보 수정 테스트

- 강은희 
    - 고객센터 페이지


<br>

> ## 구현 화면

![Honeycam 2023-05-05 18-28-13](https://user-images.githubusercontent.com/118657689/236425198-7ef746a6-968d-4a62-8947-7cc939c04b09.gif)
![Honeycam 2023-05-05 18-28-46](https://user-images.githubusercontent.com/118657689/236425206-2288410c-4651-4d78-8ac8-ee495c76663f.gif)
![Honeycam 2023-05-05 18-29-12](https://user-images.githubusercontent.com/118657689/236425215-a5faea7e-8a68-4fe2-9613-74b615d5e981.gif)
![Honeycam 2023-05-05 18-29-30](https://user-images.githubusercontent.com/118657689/236425223-cdb99e7a-aaca-46b4-bb47-248a23adc010.gif)
![Honeycam 2023-05-05 18-30-29](https://user-images.githubusercontent.com/118657689/236425225-7650fef0-50b1-40d4-8f16-42cfd663a80e.gif)
![Honeycam 2023-05-05 18-31-02](https://user-images.githubusercontent.com/118657689/236425231-3a51f76d-240f-424f-b2ba-9938f4a65bbd.gif)
![Honeycam 2023-05-05 18-31-17](https://user-images.githubusercontent.com/118657689/236425235-ab0c4d2a-431d-46f0-9f4a-101fc5ed8398.gif)
![Honeycam 2023-05-05 18-31-30](https://user-images.githubusercontent.com/118657689/236425239-e21945ce-3ecf-4424-891d-ae9802edf947.gif)
![Honeycam 2023-05-05 18-32-00](https://user-images.githubusercontent.com/118657689/236425242-bbe8ecdb-b651-4de6-a88a-216705c68e51.gif)
![Honeycam 2023-05-05 18-32-26](https://user-images.githubusercontent.com/118657689/236425248-945e1bee-0414-4543-a845-aff16e3726b1.gif)
![Honeycam 2023-05-05 18-32-48](https://user-images.githubusercontent.com/118657689/236425254-dba6eb48-f28b-40c5-a114-a48bc33777c7.gif)
![Honeycam 2023-05-05 18-33-29](https://user-images.githubusercontent.com/118657689/236425258-2502ffe3-4e26-42a2-a439-4193763e1044.gif)
![Honeycam 2023-05-05 18-33-56](https://user-images.githubusercontent.com/118657689/236425263-d484c9a1-1d41-458c-b05d-c04e6d310f16.gif)
![Honeycam 2023-05-05 18-35-27](https://user-images.githubusercontent.com/118657689/236425271-f4f5b96a-0fe6-4986-bea0-4c7dc3185d00.gif)
![Honeycam 2023-05-05 18-35-39](https://user-images.githubusercontent.com/118657689/236425277-d6798a58-9977-48f4-99eb-54ba610fbca9.gif)
![Honeycam 2023-05-05 18-35-58](https://user-images.githubusercontent.com/118657689/236425288-f791d854-4369-4f90-92b8-8f6235b4c966.gif)
![Honeycam 2023-05-05 18-36-13](https://user-images.githubusercontent.com/118657689/236425296-f3a5c334-1761-48e6-a961-38db5d6bd866.gif)
![Honeycam 2023-05-05 18-36-28](https://user-images.githubusercontent.com/118657689/236425308-6f1686ae-468d-432a-a0a6-bb4a28f10ab2.gif)
![Honeycam 2023-05-05 18-36-44](https://user-images.githubusercontent.com/118657689/236425314-030a176e-7f01-4a70-9eb2-bc3b43611d94.gif)
![Honeycam 2023-05-05 18-37-01](https://user-images.githubusercontent.com/118657689/236425320-9b24ed50-6d4d-417f-a740-42bba5b3ed81.gif)
![Honeycam 2023-05-05 18-37-22](https://user-images.githubusercontent.com/118657689/236425325-9d3b9ebe-4182-4db7-9db5-387127a51910.gif)
![Honeycam 2023-05-05 18-37-43](https://user-images.githubusercontent.com/118657689/236425328-2655f6d1-4a9a-4d32-9783-6b9f1f96c621.gif)
![Honeycam 2023-05-05 18-37-58](https://user-images.githubusercontent.com/118657689/236425334-0c3b7f25-63eb-47c7-8f55-300d47095372.gif)

<br>

> ## 보완점

- 편의 기능이 필요해 보인다.( 알림, 이메일, 비밀번호 찾기 기능 )
- 한번 완료한 기능을 다시 테스트 하지 않도록 완벽함이 필요하다.

<br>

> ## 후기

- 박인우


    부족한 점과 잘하는 점을 잘 알게 됐으니 개선해보자

- 김유현


  아직 배울 기술이 너무 많고, 조원들과 함께 사이트를 만들었다는게 기쁘고 즐거웠다

- 이인화


  어려웠지만 많은 것을 배우게 된 좋은 기회였다

- 강은희


  어려웠지만 그만큼 재미있었고 뿌듯한 시간이었습니다

