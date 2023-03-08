<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header-simple.jsp" %>

        <div style="display:flex;" class="my-5">
            <div class="mx-auto width-53 top-40">
                <div class="rounded-3 container all-form border border-3 p-3 mt-5" style="width: 400px;">
                    <ul class="nav nav-tabs nav-justified">
                        <li class="nav-item fs-4">
                            <a class="nav-link" href="/comp/login">기업로그인</a>
                        </li>
                        <li class="nav-item fs-4">
                            <a class="nav-link text-muted" href="/comp/join">기업회원가입</a>
                        </li>
                    </ul>

                    <form action="/comp/login" method="post">
                        <div class="d-flex form-group mt-2 mb-2">
                            <input type="email" name="email" class="form-control" placeholder="Enter email" id="email"
                                value="${cookie.rememberEmail.value}">
                        </div>

                        <div class="form-group mb-2">
                            <input type="password" name="password" class="form-control" placeholder="Enter password"
                                id="password">
                        </div>

                        <div class="box mb-2">
                            <span class="input-wrap mb-2">
                                <input type="checkbox" id="rememberEmail" name="rememberEmail">
                                이메일을 기억 하시겠습니까?
                            </span>
                        </div>

                        <!-- <div class="d-flex justify-content">
                    <div>
                        <a href="/" class="emailSearch" id="emailSearch">이메일 찾기</a>
                    </div>
                    <div>
                        <a href="/" class="pwSearch" id="pwSearch">비밀번호 찾기</a>
                    </div>
                </div> -->

                        <div class="d-grid gap-2 mb-2">
                            <input id="button" class=" btn btn-primary" type="submit" value="로그인"
                                onclick="submitForm()">
                        </div>

                        <hr>
                        <div class="d-flex justify-content-around ">
                            <div>
                                <a data-bs-toggle="modal" data-bs-target="#myModal" href="#myModal" class="emailSearch"
                                    id="emailSearch">이용 약관</a>
                            </div>
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <!-- modal-sm modal-lg modal-xl 모달 사이즈 -->
                                    <!-- modal-dialog-centered 화면 가운데 -->
                                    <!-- modal-dialog-scrollable 스크롤 기능 -->
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <h4 class="modal-title">이용 약관</h4>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">

                                            <h6>제1조 [목적]</h6>

                                            <p>이 약관은 운영하는 사이트에서 제공하는 “서비스”의 이용과 관련하여 “회사”와 “개인회원”간의 이용조건, 제반 절차, 회원의 권리,
                                                의무
                                                및 책임 사항, 기타 필요한 사항을 규정함을 목적으로 한다.</p>


                                            <h6>제2조 [정의]</h6>

                                            본 약관에서 사용하는 용어의 정의는 다음과 같다.<br>

                                            <p>
                                                ① “사이트”라 함은 “회사”가 “개인회원”에게 서비스를 제공하기 위해 단말기(PC, TV, 휴대형 단말기 등의 각종 유무선
                                                장치를
                                                포함) 등 정보 통신 설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, “회사”가 운영하는
                                                웹사이트인
                                                programmers.co.kr, business.programmers.co.kr, school.programmers.co.kr,
                                                career.programmers.co.kr, certi.programmers.co.kr,
                                                community.programmers.co.kr 등이 이에 포함된다.</p>

                                            <p>
                                                ② “서비스”라 함은 “회사”의 “사이트”에서 “개인회원”에게 유∙무료로 제공하는 모든 서비스를 일컫는다. 코딩 문제∙코딩
                                                테스트∙학습
                                                콘텐츠 등과 같은 교육 관련 콘텐츠 제공 서비스, 교육 플랫폼 제공을 통해 콘텐츠, 정보 등의 거래를 중개하는 통신판매중개
                                                서비스,
                                                개인이 등록한 자료를 관리하여 기업 정보를 제공하는 서비스, 개인이 교육과 구직을 목적으로 등록하는 자료를 DB화 하여 각각의
                                                목적에
                                                맞게 분류 및 가공, 집계하여 정보를 제공하는 서비스, 자격 시험을 운영하고 관리하는 서비스 및 모든 부대 서비스를 의미한다.
                                            </p>
                                            <p>
                                                ③ “개인회원”이라 함은 “서비스”를 이용하기 위하여 동 약관에 동의하거나, 페이스북 등 연동된 서비스를 통해 “회사”와 이용
                                                계약을
                                                체결한 개인 회원을 말한다.</p>
                                            <p>
                                                ④ “ID”라 함은 “개인회원”의 식별과 “개인회원”의 “서비스” 이용을 위하여 가입 시 사용한 이메일 주소를 말한다.</p>
                                            <p>
                                                ⑤ “비밀번호”라 함은 “회사”의 "서비스"를 이용하려는 “개인회원”이 이용자 ID를 부여받은 자와 동일인임을 확인하고 회원의
                                                권익을
                                                보호하기 위하여 회원이 선정한 문자와 숫자의 조합을 말한다.</p>


                                            <h6>제3조 [약관의 게시 및 개정]</h6>

                                            <p>
                                                ① “회사”는 이 약관의 내용과 상호, 사업자등록번호, 대표자의 성명, 영업소 소재지(소비자의 불만을 처리할 수 있는 곳의 주소를
                                                포함), 전화번호, 전자우편주소, 연락처, 개인정보관리책임자 등을 “개인회원”이 쉽게 알 수 있도록 “사이트”의 초기 화면에 게시
                                                한다.
                                                다만, 약관의 내용은 “개인회원”이 연결화면을 통하여 볼 수 있도록 할 수 있다.</p>
                                            <p>
                                                ② "회사"는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보 보호 등에 관한 법률 등
                                                관련 법을
                                                위배하지 않는 범위에서 이 약관을 개정할 수 있다.</p>
                                            <p>
                                                ③ "회사"가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일 전부터 “사이트” 내 초기화면 및 연결화면 등을 통해 게시하고
                                                “개인회원”에게 공지한다. 다만, 약관의 변경이 소비자의 권리, 의무에 중대한 영향을 줄 경우에는 그 적용일 30일 전까지 본문과
                                                같은
                                                방법으로 공지하고 이메일 또는 문자메시지 발송 등의 방법으로 “개인회원”에게 통지한다.</p>
                                            <p>
                                                ④ “개인회원”은 변경된 약관에 대해 거부할 권리가 있다. “개인회원”은 변경된 약관이 공지된 지 15일 이내에 거부 의사를
                                                표명할 수
                                                있다. “개인회원”이 거부하는 경우 본 "서비스" 제공자인 "회사"는 15일의 기간을 정하여 "개인회원"에게 사전 통지 후 당해
                                                “개인회원”과의 계약을 해지할 수 있다. 만약, “개인회원”이 15일 이내에 거부 의사를 표시하지 않고 "서비스"를 계속 이용하는
                                                경우에는 동의하는 것으로 간주한다.</p>

                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary"
                                                data-bs-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>


                            <div>
                                <a data-bs-toggle="modal" data-bs-target="#pwModal" href="#pwModal" class="pwSearch"
                                    id="pwSearch">개인정보 처리방법</a>
                            </div>
                            <div class="modal" id="pwModal">
                                <div class="modal-dialog">
                                    <!-- modal-sm modal-lg modal-xl 모달 사이즈 -->
                                    <!-- modal-dialog-centered 화면 가운데 -->
                                    <!-- modal-dialog-scrollable 스크롤 기능 -->
                                    <div class="modal-content">

                                        <div class="modal-header">
                                            <h4 class="modal-title">개인정보 처리방법</h4>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
                                            <h5> 1. 개인정보의 수집 및 이용목적</h5>

                                            <p>회사는 다음 목적을 위하여 개인정보를 수집하고 있으며 다음 목적 이외의 용도로는 수집한 개인정보를 이용하지 않으며, 이용 목적이
                                                변경되는 경우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다. </p>

                                            <p>
                                                1 회원관리
                                                회원제 서비스 이용에 따른 본인확인, 본인의 의사확인, 고객문의에 대한 응답, 새로운 정보의 소개 및 고지사항 전달</p>
                                            <p>
                                                2 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
                                                본인인증, 채용정보 매칭, 면접 연습 및 컨텐츠 제공을 위한 개인식별, 회원간의 상호 연락, 구매 및 요금 결제, 물품 및
                                                증빙발송, 부정 이용방지와 비인가 사용방지</p>
                                            <p>
                                                3 서비스 개발 및 마케팅ㆍ광고 활용
                                                맞춤 서비스 제공, 서비스 안내 및 이용권유, 서비스 개선 및 신규 서비스 개발을 위한 통계 및 접속빈도 파악, 통계학적 특성에
                                                따른 광고, 이벤트 정보 및 참여기회 제공</p>
                                            <p>
                                                4 고용 및 취업동향 파악을 위한 통계학적 분석, 서비스 고도화를 위한 데이터 분석</p>



                                            <h5>2. 수집하는 개인정보 항목 및 수집방법</h5>
                                            <p>
                                                가. 수집하는 개인정보의 항목</p>

                                            <p>
                                                1 회원가입 시 수집하는 항목</p>
                                            <p>
                                                ① 개인 회원
                                                필수항목: 이름, 비밀번호, 휴대폰번호 및 e-메일, 페이스북, 직군, 직무, 경력, 스킬</p>
                                            <p>
                                                ② 소셜회원가입</p>
                                            <p>
                                                1 카카오
                                                - 필수항목 : 카카오계정(이메일), 프로필 사진, 카카오 채널 추가 상태 및 내역, 카카오계정(전화번호)</p>
                                            <p>
                                                2 페이스북
                                                - 필수항목 : 이름, 프로필 사진, 이메일 주소
                                                - 선택항목 : 친구 리스트</p>
                                            <p>
                                                3 구글
                                                - 필수항목 : 이름, 이메일 주소, 프로필 사진</p>
                                            <p>
                                                4 애플
                                                - 필수항목 : 이름, 이메일 주소</p>

                                            <p>
                                                ③ 기업 회원
                                                - 필수항목: 가입자명, 중복가입확인정보(DI), 비밀번호, 전화번호, e-메일,
                                                사업자등록번호, 회사명, 회사주소, 직책 또는 팀, 설립연도, 산업군, 직원수, 매출액
                                                또는 투자금액, 회사/서비스 소개</p>

                                            <p>
                                                - 선택항목: 홈페이지, 이용 목적, 채용 계획, 추천인 이름, 추천인 연락처</p>

                                            <p>
                                                2 매치업설정시 수집하는 항목
                                                - 필수 항목: 직군, 직무, 경력, 학력
                                                - 선택 항목: 관심 산업군, 추천인코드</p>

                                            <p>
                                                3 이력서 등록 시 수집하는 항목
                                                - 필수 항목: 이름, 연락처(전화번호/휴대폰/e-메일)
                                                - 선택 항목: 자기소개, 경력사항, 업무 성과, 학력사항, 수상 및 기타, 홈페이지, 주소</p>

                                            <p>
                                                4 면접 연습 서비스(Interview Me) 이용시 수집하는 항목
                                                - 필수 항목 : 이름, 이메일, 면접 연습 영상</p>

                                            <p>
                                                5 인사담당자를 위한 서비스(HR 커뮤니티 인살롱) 이용시 수집하는 항목
                                                - 필수 항목 : ID, 닉네임, 이름, 이메일, 연락처, 회사명, 담당업무</p>

                                            <p>
                                                6 원티드 긱스 서비스 이용시 수집하는 항목
                                                - 필수 항목 : 이름, 이메일, 연락처, 직무/직군
                                                - 선택 항목 : 소속, 자기소개 및 이력서 </p>
                                            <p>
                                                7 크레딧잡 서비스 이용 시 수집하는 항목
                                                - 필수 항목 : 이름, 이메일, 연락처, 관심 회사
                                                - 선택 항목 : 직군, 직무, 경력, 현재 연봉, 관심 키워드</p>
                                            <p>
                                                8 유료 정보 이용 시 수집하는 항목
                                                - 필수 항목: 카드사명, 카드번호, 생년월 (개인카드) </p>
                                            <p>
                                                9 비회원 구매시 수집하는 항목
                                                - 필수 항목 : 이메일, 성명, 전화번호</p>
                                            <p>
                                                10 모바일 서비스 이용 시 수집되는 항목
                                                모바일 서비스의 특성상 단말기 모델 정보가 수집될 수 있으나, 이는 개인을 식별할 수 없는 형태입니다.</p>
                                            <p>
                                                11 보상금 지급시 수집하는 항목
                                                - 필수 항목: 본인 계좌정보(은행, 계좌번호), 주민등록번호(근거 : 소득세법) </p>
                                            <p>
                                                12 채용 합격에 따른 기업 요금정산을 위해 수집하는 항목
                                                - 필수 항목 : 합격자의 연봉정보</p>
                                            <p>
                                                13 서비스 이용과정이나 사업처리 과정에서 자동 수집되는 항목
                                                IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 광고 ID,접속 환경</p>
                                            <p>
                                                나. 개인정보 수집방법
                                                홈페이지, 서비스 이용, 요금 정산, 이벤트 응모, 고객센터 문의</p>
                                            <p>
                                                다. 고유식별정보 수집 </p>
                                            <p>
                                                - 수집 목적 : 채용 보상금 지급에 필요한 세금 업무 처리

                                                - 수집 정보 : 주민등록번호

                                                - 보유 및 이용기간 : 소득세법 등 관련 법령에 따른 보유기간

                                                * 근거법령 : 소득세법 제145조 및 제164조, 동법 시행령 제193조 및 제213조, 국세기본법 제85조의3</p>



                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary"
                                                data-bs-dismiss="modal">Close</button>
                                        </div>

                                    </div>
                                </div>
                            </div>



                        </div>
                    </form>
                </div>
            </div>
        </div>
        </div>


        <%@ include file="../layout/footer.jsp" %>