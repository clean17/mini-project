<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../layout/header.jsp" %>
<div class="mx-auto width-53 top-80">
    <div class="container my-5 py-5">
        <div class="row">
            <div class="col-3 px-5" style="text-align: center;">
                <div class="mb-3">
                    <div class="fs-4">공고 관리</div>
                </div>
                <div class="card">
                    <div class="card-body">
                        <div class="relative mb-3">
                            <a href="/comp/profileUpdateForm"
                                onclick="window.open(this.href, '_blank', 'width=1200,height=900,toolbars=no,scrollbars=no, resizable=no'); return false;">
                                <div class="user-img">
                                    <img src="${comp.photo}" class="rounded" alt="Cinque Terre"
                                        style="max-width: 80px;">
                                </div>
                            </a>
                        </div>
                        <div>
                            <h6 class="card-subtitle text-muted">${compSession.compName}</h6>
                            <hr>
                            <ul class="nav flex-column nav-pills">
                                <li class="nav-item">
                                    <a class="nav-link a p-1 mb-1 active" aria-current="page" href="/comp/jobs">공고등록 /
                                        수정</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link a p-1 mb-1" href="/comp/apply">지원 / 제안</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link a p-1" href="/comp/resume/scrap">이력서 스크랩</a>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <a class="nav-link a p-1 mb-1" href="/comp/update" data-bs-toggle="modal"
                                        data-bs-target="#modal">정보수정</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link a p-1" href="/logout">로그아웃</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-9 my-2 pe-5">
                <div>
                    <div class="d-flex justify-content-between " style="height: 3em;">
                        <div>
                            <h6><b>전체 <div class="badge count-color px-2 " style="font-weight: 900; font-size: 16px;">
                                        ${jDtos.size()}</div></b></h6>
                        </div>
                        <div>
                            <button style="float: right;" type="button" class="btn btn-success mb-4"
                                onclick="location.href='/comp/jobs/write'">공고 작성</button>
                        </div>
                    </div>

                    <c:forEach items="${jDtos}" var="jDto">
                        <div class="card mb-4">
                            <div class="card-body row">
                                <div class="col-9">
                                    <a href="/jobs/${jDto.jobsId}">
                                        <div>
                                            <h5 class="card-title" style="text-align: left;"> ${jDto.title}</h5>
                                            <div class="m-2" style="float: left;">
                                                <div class="d-flex">
                                                    <div class="me-3">
                                                        <h6 class="card-subtitle text-muted">${jDto.position}</h6>
                                                    </div>

                                                    <div>
                                                        <h6 class="card-subtitle mb-2 text-muted">${jDto.career}</h6>
                                                    </div>
                                                    <input type="hidden" value="${jDto.jobsId}" id="jobsId">
                                                </div>
                                                <div>
                                                    <c:forEach items="${jDto.skillList}" var="skill" begin="0" end="3">
                                                        <span class="badge  skill-color">${skill}</span>
                                                    </c:forEach>
                                                </div>

                                            </div>
                                        </div>
                                    </a>
                                </div>

                                <div class="col-3">
                                    <div style="float: right;">
                                        <button type="button" style="width: 7em;" class="btn btn-danger btn-sm mb-2"
                                            data-bs-toggle="modal" data-bs-target="#dModal" style="float: right;"
                                            onclick="event.preventDefault();deleteBtn(event, `${jDto.jobsId}`);">공고
                                            삭제</button>
                                    </div>
                                    <div style="float: right;">
                                        <button type="button" style="width: 7em;" class="btn btn-primary btn-sm"
                                            onclick="location.href=`/jobs/`+`${jDto.jobsId}`+`/update`">공고
                                            수정</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">비밀번호 인증</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="inputPassword" class="form-label">Password</label>
                        <input type="password" class="form-control" id="inputPassword" aria-describedby="passwordHelp"
                            onkeypress="if(event.keyCode=='13'){event.preventDefault(); checkPS(`${compSession.compId}`);}">
                        <div id="passwordHelp" class="form-text">현재 비밀번호를 입력해 주세요.</div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary"
                    onclick="passwordCheckBtn(`${compSession.compId}`)">Check</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="dModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">공고 삭제</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body ">해당 공고를 삭제하시겠습니까?</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" onclick="deleteJobs()" class="btn btn-primary">삭제하기</button>
            </div>
        </div>
    </div>
</div>
<script>
    function checkPS(cId) {
        passwordCheckBtn(cId);
    }

    const passwordInputEl = document.querySelector('#inputPassword')
    const modalEl = document.querySelector('#modal')

    modalEl.addEventListener('shown.bs.modal', function () {
        passwordInputEl.focus()
    })

    function passwordCheckBtn(cId) {
        let data = {
            compId: cId,
            password: $('#inputPassword').val()
        }

        $.ajax({
            type: "post",
            url: "/comp/passwordCheck",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            datatype: "json"
        }).done((res) => {
            location.href = "/comp/update";
        }).fail((err) => {
            alert(err.responseJSON.msg);
        });
    }

    function deleteJobs() {
        $.ajax({
            type: "delete",
            url: "/jobs/" + $('#jobsId').val() + "/delete",
            dataType: "json"
        }).done((res) => { // 20X 일때
            alert(res.msg);
            location.href = "/comp/jobs";
        }).fail((err) => { // 40X, 50X 일때
            alert(err.responseJSON.msg);
        });
    }
</script>
<%@ include file="../layout/footer.jsp" %>