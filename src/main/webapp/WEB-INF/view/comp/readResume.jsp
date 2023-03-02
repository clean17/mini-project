<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <style>
            .my-xl {
                color: 000;
            }

            .my-cursor {
                cursor: pointer;
            }

            .my-cursor:hover {
                color: rgb(226, 226, 40);
            }

            .on-Clicked {
                color: rgb(226, 226, 40);
            }

            .under-line {
                border-bottom: 1px solid rgb(150, 150, 150);
            }

            .nav-pills>.nav-item>.active {
                color: rgb(255, 255, 255);
                background-color: rgb(77, 143, 77)
            }

            .display-none {
                display: none;
            }
        </style>
        <div class="mx-auto width-53 mx-5 px-3 top-80">

            <div class="mb-4">
                <ul class="nav nav-pills nav-justified">
                    <li class="nav-item mx-2">
                        <button class="nav-link active tap-btn" id="btn1" onclick="openTab(event, 'tab1')">지역별</button>
                    </li>
                    <li class="nav-item mx-2">
                        <button class="nav-link tap-btn" id="btn2" onclick="openTab(event, 'tab2')">기술별</button>
                    </li>
                    <li class="nav-item mx-2">
                        <button class="nav-link tap-btn" id="btn3" onclick="openTab(event, 'tab3')">경력별</button>
                    </li>
                </ul>
            </div>

            <div id="my-table-body1" style="display: block;">
                <table class="my-table table table-bordered">
                    <tbody>
                        <tr>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="서울">서울
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="경기도"> 경기도
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="인천"> 인천
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="부산"> 부산
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="대구"> 대구
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="대전"> 대전
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="광주"> 광주
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="제주"> 제주
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="지역"> 지역
                                    </label>
                                </div>

                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="address" value="지역 2"> 지역
                                        2
                                    </label>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div id="my-table-body2" style="display: none;">
                <table class="my-table table table-bordered">
                    <tbody>
                        <tr>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="Java">Java
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="JavaScript">
                                        JavaScript
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="Spring">
                                        Spring
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="HTML"> HTML
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="jQuery">
                                        jQuery
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="JSP"> JSP
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="Vue.js">
                                        Vue.js
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="Oracle">
                                        Oracle
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="MySQL">
                                        MySQL
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="skill" value="React">
                                        React
                                    </label>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div id="my-table-body3" class="display-none">
                <table class="my-table table table-bordered">
                    <tbody>
                        <tr>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="신입">신입
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="1년차 미만"> 1년차
                                        미만
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="1년차"> 1년차
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="2년차"> 2년차
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="3년차"> 3년차
                                    </label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="4년차"> 4년차
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="5년차"> 5년차
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="6년차"> 6년차
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="7년차"> 7년차
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check text-center">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="career" value="8년차 이상"> 8년차
                                        이상
                                    </label>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="row justify-content-between">
                <div class="col-8 d-flex flex-wrap" id="selected">

                </div>
                <div class="col-4 d-flex justify-content-end">
                    <button type="button" class="btn btn-primary mb-2 my-auto" onclick="resetCheckboxes()">초기화</button>
                    <button type="button" class="btn btn-primary mx-3 mb-2 my-auto" onclick="searchInfo()"
                        id="search-info-btn">검색하기</button>
                </div>
            </div>

            <div class="hr"></div>
            <div class="under-line my-3"></div>

            <div class="row row-cols-1 row-cols-md-2">

                <div class="col mb-3">
                    <a href="/resume/1">
                        <div class="card">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="..." class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">이름</h5>
                                        <h6 class="card-title">제목</h6>
                                        <div class="row">
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">경력</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">지역</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">보유기술</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col mb-3">
                    <a href="#">
                        <div class="card">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="..." class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">이름</h5>
                                        <h6 class="card-title">제목</h6>
                                        <div class="row">
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">경력</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">지역</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">보유기술</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col mb-3">
                    <a href="#">
                        <div class="card">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="..." class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">이름</h5>
                                        <h6 class="card-title">제목</h6>
                                        <div class="row">
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">경력</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">지역</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">보유기술</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>




            </div>


        </div>

        <script>

            function openTab(evt, tabName) {
                let tablinks;
                // 모든 탭 버튼에서 active 클래스를 제거
                tablinks = document.getElementsByClassName("tap-btn");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].classList.remove("active");
                }
                evt.currentTarget.classList.add("active");
            }

            document.getElementById("btn1").addEventListener("click", function () {
                changeTable("btn1");
            });
            document.getElementById("btn2").addEventListener("click", function () {
                changeTable('btn2');
            });
            document.getElementById("btn3").addEventListener("click", function () {
                changeTable("btn3");
            });

            function changeTable(btn) {
                if (btn === 'btn1') {
                    $("#my-table-body1").show();
                    $('#my-table-body2').hide();
                    $('#my-table-body3').hide();
                }
                if (btn === 'btn2') {
                    $("#my-table-body1").hide();
                    $('#my-table-body2').show();
                    $('#my-table-body3').hide();
                }
                if (btn === 'btn3') {
                    $("#my-table-body1").hide();
                    $('#my-table-body2').hide();
                    $('#my-table-body3').show();
                }
            }

// sd

            function getCheckedValues(name) {
                var checkedValues = [];
                var checkboxes = document.getElementsByName(name);
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].checked) {
                        checkedValues.push(checkboxes[i].value);
                    }
                }
                return checkedValues;
            }

            let addressValues;
            let skillValues;
            let careerValue;

            const checkboxes = document.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach(function (checkbox) {
                checkbox.addEventListener('click', function () {
                    addressValues = getCheckedValues("address");
                    skillValues = getCheckedValues("skill");
                    careerValue = $("input[name='career']:checked").val();

                    let data = {
                        address: addressValues,
                        skill: skillValues,
                        career: careerValue
                    }
                    $('.selectBox-remove').remove();
                    rendering(addressValues);
                    rendering(skillValues);
                    render(careerValue);

                    // $('.remove-card').remove();
                    $.ajax({
                        type: "post",
                        url: "/comp/resume/read/list",
                        data: JSON.stringify(data),
                        headers: {
                            "content-type": "application/json; charset=utf-8"
                        },
                        dataType: "json"
                    }).done((res) => {
                        newbtn(res.data);
                    }).fail((err) => {
                    });
                });
            });

            $("input[name='career']").click(function () {
                addressValues = getCheckedValues("address");
                skillValues = getCheckedValues("skill");
                careerValue = $("input[name='career']:checked").val();

                let data = {
                    address: addressValues,
                    skill: skillValues,
                    career: careerValue
                }
                $('.selectBox-remove').remove();
                rendering(addressValues);
                rendering(skillValues);
                render(careerValue);

                // $('.remove-card').remove();
                $.ajax({
                    type: "post",
                    url: "/comp/resume/read/list",
                    data: JSON.stringify(data),
                    headers: {
                        "content-type": "application/json; charset=utf-8"
                    },
                    dataType: "json"
                }).done((res) => {
                    newbtn(res.data);
                }).fail((err) => {
                });
            });

            function rendering(checkboxes) {
                if (checkboxes.length > 0) {
                    checkboxes.forEach(function (checkbox) {
                        render(checkbox);
                    });
                }
            }

            function render(values) {
                if (values !== undefined) {
                    let el = `
            <h5 class="selectBox-remove me-2"><span class="badge bg-light text-dark" onclick="deleteBox()" value=`+ values + `>` + values + `  X 
            </span>
            </h5>
        `;
                    $('#selected').append(el);
                }
            }

            const radios = document.querySelectorAll('input[type="radio"]');
            function resetCheckboxes() {
                radios.forEach((radio) => {
                    radio.checked = false;
                })
                checkboxes.forEach(function (checkbox) {
                    checkbox.checked = false;
                    $('.selectBox-remove').remove();
                    addressValues = getCheckedValues("address");
                    skillValues = getCheckedValues("skill");
                    careerValue = $("input[name='career']:checked").val();
                    $('#search-info-btn').text("검색하기");
                });
            }

            function newbtn(num) {
                $('#search-info-btn').text("'" + num + "' 건 검색하기");
            }


            function searchInfo() {
                let data = {
                    address: addressValues,
                    skill: skillValues,
                    career: careerValue
                }
                // $('.selectBox-remove').remove();
                $('.remove-card').remove();
                $.ajax({
                    type: "post",
                    url: "/comp/resume/read/search",
                    data: JSON.stringify(data),
                    headers: {
                        "content-type": "application/json; charset=utf-8"
                    },
                    dataType: "json"
                }).done((res) => {
                    renderInfo(res.data);
                }).fail((err) => {
                });
            }

            function renderInfo(jDtos) {
                jDtos.forEach(jDto => {
                    let el = `
                    <div class="col mb-3">
                    <a href="#">
                        <div class="card">
                            <div class="row g-0">
                                <div class="col-md-4">
                                    <img src="..." class="img-fluid rounded-start" alt="...">
                                </div>
                                <div class="col-md-8">
                                    <div class="card-body">
                                        <h5 class="card-title">이름</h5>
                                        <h6 class="card-title">제목</h6>
                                        <div class="row">
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">경력</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">지역</h6>
                                            </div>
                                            <div style="float: left;">
                                                <h6 class="card-subtitle mb-2">보유기술</h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            `;

                    $('.info-card').append(el);
                });
            }

        </script>
        <%@ include file="../layout/footer.jsp" %>