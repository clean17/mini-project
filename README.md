# 구인구직 사이트 제작

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
 <img src="src\main\resources\static\images\mini-project-table.jpg">

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

 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212715.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212739.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212758.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212812.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212825.jpg">

 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212844.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212906.jpg">
   <img src="src\main\resources\static\images\화면 캡처 2023-03-11 213422.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212925.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212947.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 212957.jpg">
 <img src="src\main\resources\static\images\화면 캡처 2023-03-11 213007.jpg">



<br>


> ## 시연영상
- 구직자 시나리오 영상
https://www.youtube.com/watch?v=4_x91KnOMYU
- 구인기업 시나리오 영상
https://www.youtube.com/watch?v=osN8bGS7tzQ

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

> ## 기타 메모
<br>

- D-day 계산

```java
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

    public static long dDay(Timestamp stamp) {
        LocalDate fromDate = LocalDate.now();
        LocalDate toDate = LocalDate.parse(
              stamp.toLocalDateTime()
                  .format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
        return ChronoUnit.DAYS.between(fromDate, toDate); 
    }
```

- Sha-256 해시

```java
import java.security.MessageDigest;

public class Sha256 {
    public static String encode(String password1) {
        String password = "salt" + password1;
        String SHA = "";
        try {
            MessageDigest sh = MessageDigest.getInstance("SHA-256");
            sh.update(password.getBytes());
            byte bytes[] = sh.digest(); 
            StringBuffer sb = new StringBuffer();
            for (byte b : bytes) {
                sb.append(String.format("%02x", b));
            }
            SHA = sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            SHA = null;
        }
        return SHA;
    }
}
```

- 로그인 구현되기 전에 로그인 기능 테스트 하기 위해서 MockSession 메소드를 만들어서 세션을 생성합니다.

- 인터셉터에서 특정 주소를 막으려면 `HttpServletRequest`의 `getRequestURI()` 메소드로 가져온 uri 정보를 `startsWith()`로 확인합니다.  <br>
이후 `request.getSession().getAttribute()` 으로 세션을 확인합니다.

- MyBatis에 매핑할때 매개변수를 `@Param()`으로 하나하나 연결하지 말고 오브젝트 타입으로 하나만 연결하면 편합니다.

```java
public int insert(@Param("aDto")  ApplyReqDto aDto);
```

- 데이터 검증은 `org.assertj.core.api.Assertions` 패키지의 `Assertions.assertThat(A).isEqualTo(B)`를 이용합니다.

- 간단한 통합 테스트 환경은 아래 구성입니다.

```java
@AutoConfigureMockMvc
@SpringBootTest
public class ControllerTest {
    @Autowired
    private MockMvc mvc;
    //
}
```

- DTO가 많을 경우 관리가 힘들게 됩니다. <br>
해결방법은 DDD설계를 적용하는 방법이 있고 공통된 특성을 부모클래스에 모아서 상속하는 방법이 있습니다.<br>
또 다른 방법은 매핑 라이브러리를 이용하는 방법이 있습니다. ( ex. MapStruct )<br>

- 동적 쿼리를 이용하는 방법

```xml
    <if test="jDto.skill != null and jDto.skill.size() > 0">
        skill in
        <foreach collection="jDto.skill" item="skill" open="(" close=")" separator=",">
        #{skill} 
        </foreach>
        and
    </if>
```

- 경로를 찾을때 `/`로 시작하면 절대 경로, 시작하지 않으면 상대 경로 입니다.<br>
따라서 `/` 는 정적 리소스를 관리하는 static 디렉토리가 됩니다.

-  Bootstrap, jQuery, Font Awesome, Summernote 의존성

```html
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/32aa2b8683.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
```