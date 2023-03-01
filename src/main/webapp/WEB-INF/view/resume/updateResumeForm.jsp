<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>

        <div class="mx-auto width-53 top-80">
            <div class="container">
                <form>
                    <div class="row">
                        <div class="col-10">
                            <br>
                            이력서 수정<br>
                            <hr />
                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">기본 정보</div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-3">
                                            프로필 사진
                                        </div>
                                        <div class="col-9">
                                            <p>이름</p>
                                            <p>번호</p>
                                            <p>email</p>
                                            <p>주소</p>
                                            <p>생년월일</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">학력 사항</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <select class="form-select" name="education" id="education">
                                            <option selected disabled>학력 사항을 선택해주세요</option>
                                            <option value="초졸" ${rDto.education == '초졸' ? 'selected="selected"' : '' }>초졸</option>
                                            <option value="중졸" ${rDto.education == '중졸' ? 'selected="selected"' : '' }>중졸</option>
                                            <option value="고졸" ${rDto.education == '고졸' ? 'selected="selected"' : '' }>고졸</option>
                                            <option value="대졸" ${rDto.education == '대졸' ? 'selected="selected"' : '' }>대졸</option>
                                            <option value="대학원 이상" ${rDto.education == '대학원 이상' ? 'selected="selected"' : '' }>대학원 이상</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">경력 사항</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <select class="form-select" name="career" id="career">
                                            <option selected disabled>경력 사항을 선택해주세요</option>
                                            <option value="신입" ${rDto.career == '신입' ? 'selected="selected"' : '' }>신입</option>
                                            <option value="1년차 미만" ${rDto.career == '1년차 미만' ? 'selected="selected"' : '' }>1년차 미만</option>
                                            <option value="1년" ${rDto.career == '1년' ? 'selected="selected"' : '' }>1년</option>
                                            <option value="2년" ${rDto.career == '2년' ? 'selected="selected"' : '' }>2년</option>
                                            <option value="3년" ${rDto.career == '3년' ? 'selected="selected"' : '' }>3년</option>
                                            <option value="4년" ${rDto.career == '4년' ? 'selected="selected"' : '' }>4년</option>
                                            <option value="5년" ${rDto.career == '5년' ? 'selected="selected"' : '' }>5년</option>
                                            <option value="6년" ${rDto.career == '6년' ? 'selected="selected"' : '' }>6년</option>
                                            <option value="7년" ${rDto.career == '7년' ? 'selected="selected"' : '' }>7년</option>
                                            <option value="8년차 이상" ${rDto.career == '8년차 이상' ? 'selected="selected"' : '' }>8년차 이상</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">보유 기술</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <select class="form-select" name="skillName1" id="skillName1">
                                            <option selected disabled>보유 기술을 선택해주세요</option>
                                            <option value="Java" ${usDto.skillName1 == 'Java' ? 'selected="selected"' : '' }>Java</option>
                                            <option value="JavaScript" ${usDto.skillName1 == 'JavaScript' ? 'selected="selected"' : '' }>JavaScript</option>
                                            <option value="Spring" ${usDto.skillName1 == 'Spring' ? 'selected="selected"' : '' }>Spring</option>
                                            <option value="HTML/CSS" ${usDto.skillName1 == 'HTML/CSS' ? 'selected="selected"' : '' }>HTML/CSS</option>
                                            <option value="jQuery" ${usDto.skillName1 == 'jQuery' ? 'selected="selected"' : '' }>jQuery</option>
                                            <option value="JSP" ${usDto.skillName1 == 'JSP' ? 'selected="selected"' : '' }>JSP</option>
                                            <option value="Vue.js" ${usDto.skillName1 == 'Vue.js' ? 'selected="selected"' : '' }>Vue.js</option>
                                            <option value="Oracle" ${usDto.skillName1 == 'Oracle' ? 'selected="selected"' : '' }>Oracle</option>
                                            <option value="MySQL" ${usDto.skillName1 == 'MySQL' ? 'selected="selected"' : '' }>MySQL</option>
                                            <option value="React" ${usDto.skillName1 == 'React' ? 'selected="selected"' : '' }>React</option>
                                        </select>
                                        <select class="form-select" name="skillName2" id="skillName2">
                                            <option selected disabled>보유 기술을 선택해주세요</option>
                                            <option value="Java" ${usDto.skillName2 == 'Java' ? 'selected="selected"' : '' }>Java</option>
                                            <option value="JavaScript" ${usDto.skillName2 == 'JavaScript' ? 'selected="selected"' : '' }>JavaScript</option>
                                            <option value="Spring" ${usDto.skillName2 == 'Spring' ? 'selected="selected"' : '' }>Spring</option>
                                            <option value="HTML/CSS" ${usDto.skillName2 == 'HTML/CSS' ? 'selected="selected"' : '' }>HTML/CSS</option>
                                            <option value="jQuery" ${usDto.skillName2 == 'jQuery' ? 'selected="selected"' : '' }>jQuery</option>
                                            <option value="JSP" ${usDto.skillName2 == 'JSP' ? 'selected="selected"' : '' }>JSP</option>
                                            <option value="Vue.js" ${usDto.skillName2 == 'Vue.js' ? 'selected="selected"' : '' }>Vue.js</option>
                                            <option value="Oracle" ${usDto.skillName2 == 'Oracle' ? 'selected="selected"' : '' }>Oracle</option>
                                            <option value="MySQL" ${usDto.skillName2 == 'MySQL' ? 'selected="selected"' : '' }>MySQL</option>
                                            <option value="React" ${usDto.skillName2 == 'React' ? 'selected="selected"' : '' }>React</option>
                                        </select>
                                        <select class="form-select" name="skillName3" id="skillName3">
                                            <option selected disabled>보유 기술을 선택해주세요</option>
                                            <option value="Java" ${usDto.skillName3 == 'Java' ? 'selected="selected"' : '' }>Java</option>
                                            <option value="JavaScript" ${usDto.skillName3 == 'JavaScript' ? 'selected="selected"' : '' }>JavaScript</option>
                                            <option value="Spring" ${usDto.skillName3 == 'Spring' ? 'selected="selected"' : '' }>Spring</option>
                                            <option value="HTML/CSS" ${usDto.skillName3 == 'HTML/CSS' ? 'selected="selected"' : '' }>HTML/CSS</option>
                                            <option value="jQuery" ${usDto.skillName3 == 'jQuery' ? 'selected="selected"' : '' }>jQuery</option>
                                            <option value="JSP" ${usDto.skillName3 == 'JSP' ? 'selected="selected"' : '' }>JSP</option>
                                            <option value="Vue.js" ${usDto.skillName3 == 'Vue.js' ? 'selected="selected"' : '' }>Vue.js</option>
                                            <option value="Oracle" ${usDto.skillName3 == 'Oracle' ? 'selected="selected"' : '' }>Oracle</option>
                                            <option value="MySQL" ${usDto.skillName3 == 'MySQL' ? 'selected="selected"' : '' }>MySQL</option>
                                            <option value="React" ${usDto.skillName3 == 'React' ? 'selected="selected"' : '' }>React</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">자기소개서</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <!-- <label for="exampleTextarea" class="form-label mt-4">자기소개서</label>
                        <hr> -->
                                        <textarea class="form-control" name="content" id="content" rows="3">${rDto.content}</textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">링크</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <input type="text" name="link" id="link" class="form-control" value="${rDto.link}">
                                    </div>
                                </div>
                            </div>


                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">제목</div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <input type="text" name="title" id="title" class="form-control" value="${rDto.title}">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card border-light mb-3" style="max-width: 40rem;">
                                <div class="card-header">이력서 공개 여부</div>
                                <div class="card-body">
                                    <fieldset class="form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="state" id="state" value=1 ${rDto.state == '1' ? 'checked' : '' }
                                                checked="">
                                            <label class="form-check-label" for="optionsRadios1">
                                                공개
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="state" id="state"
                                                value="0" ${rDto.state == '0' ? 'checked' : '' }>
                                            <label class="form-check-label" for="optionsRadios2">
                                                비공개
                                            </label>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>

                        <div class="col-2">
                            <div id="rButton">
                                <br>
                                <div class="row p-1">
                                    <button type="button" class="btn btn-success w-100">미리보기</button>
                                </div>
                                <div class="row p-1">
                                    <button type="button" class="btn btn-success w-100">임시 저장</button>
                                </div>
                                <div class="row p-1">
                                    <button onclick="updateResume(`${rDto.resumeId}`,`${principal.userId}`)" type="button"
                                        class="btn btn-success w-100">이력서
                                        수정</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script>
            let resumeId;
            let userId;
            function updateResume(id,uId) {
                let data = {
                    title: $("#title").val(),
                    content: $("#content").val(),
                    education: $("#education").val(),
                    career: $("#career").val(),
                    skillName1: $("#skillName1").val(),
                    skillName2: $("#skillName2").val(),
                    skillName3: $("#skillName3").val(),
                    link: $("#link").val(),
                    state: $("input[name='state']:checked").val(),
                    resumeId: id,
                    userId: uId
                }
                $.ajax({
                    type: "put",
                    url: "/user/resume/" + id + "/update",
                    data: JSON.stringify(data),
                    contentType: "application/json; charset=utf-8",
                    dataType: "json" // default : 응답의 mime 타입으로 유추함
                }).done((res) => { // 20X 일때
                    alert(res.msg);
                    location.href = "/user/resume";
                }).fail((err) => { // 40X, 50X 일때
                    alert(err.responseJSON.msg);
                });
            }
        </script>

        <%@ include file="../layout/footer.jsp" %>