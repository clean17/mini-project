<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=\, initial-scale=1.0">
            <title>Blog</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
            <script src="https://kit.fontawesome.com/32aa2b8683.js" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
            <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
            <link rel="stylesheet" href="/css/style.css">
            <style>
                .qButton {
                    font-size: 1em;
                    font-weight: bold;
                    width: 124px;
                    height: 35px;
                    display: inline;
                    float: right;
                    margin-right: 3em;
                    background-color: rgb(20, 73, 233);
                    cursor: pointer;
                    color: rgb(255, 255, 255);
                    border: none;
                    padding: 0.2em 2em;

                }

                .qButton:hover {
                    background-color: rgb(59, 103, 235);
                    cursor: pointer;
                }

                .width-53 {
                    width: 53%;
                }
            </style>
        </head>

        <body>
            <nav class="navbar navbar-expand-sm bg-light navbar-light  ">
                <div class="container-fluid width-53">
                    <div class="">
                        <a class="navbar-brand" href="/"><i class="fa-brands fa-github-square"
                                style="font-size: 2em;"></i></a>
                    </div>
                    <div class="d-flex">
                        <div class="me-4">
                        </div>
                        <div class="my-auto me-5">
                            <a href="/user/myhome">
                                <i class="fa-regular fa-user"></i>
                            </a>
                        </div>
                        <div class="my-auto pb-1">
                            <a href="/comp/comphome"><span class="badge bg-success">기업홈</span>
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
            <div class="container-fluid width-53 top-80">
                <div>
                    <div style="font-size: 1.2em; font-weight : bold; display:inline; margin-left : 0em;">
                        고객 서비스
                    </div>
                    <button type="submit" class="qButton"
                        style="border-radius: 30px; padding: 1.5px 20px; margin-right: 0em;">
                        문의하기
                    </button>
                    <hr>
                </div>

                <div
                    style="font-weight: bold; font-size: 0.8em; color: rgb(145, 143, 143); display:inline; margin-left : 0em;">
                    고객센터 ＞ 기업회원 ＞
                </div>
                <div style="font-weight: bold; font-size: 0.8em; display:inline; margin-left : 0.1em;">매치업</div>

                <div style="margin-top: 70px;"></div>
                <div style="font-weight: bold; font-size: 1.4em;">매치업 후보자의 각 상태별 의미가 궁금합니다</div>
                <div style="margin-top: 35px;"></div>


                <div style="font-weight: bold; font-size: 1.0em; display:inline; color: blue;">① 이력서 미리보기 (원티드 추천)
                </div>
                <br>
                <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    원티드에서 추천하는 후보자입니다.</div>
                <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    다른 회사에서도 눈여겨 보는 인재인 만큼 얼른 확인해보세요.</div>
                <br>
                <div style="font-weight: bold; font-size: 1.0em; display:inline;">② 이력서 미리보기 (일반)</div>
                <br>
                <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    후보자의 이력서를 간략히 확인할 수 있습니다.</div>
                <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    더 많은 내용이 궁금하시다면 상세 이력서를 열람해보세요.</div>
                <br>
                <div style="font-weight: bold; font-size: 1.0em; display:inline;">③ 열람한 이력서</div>
                <br>
                <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    상세 이력서 확인 후 열람한 이력서로 반영된 상태입니다.</div>
                <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
                    관심있는 후보자라면 면접을 제안해보세요.</div>


                <br>

                <div style="margin-top: 200px;"></div>

                <div style="font-size: 0.9em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">또 다른 질문이 있으십니까?</div>
                <div style="font-size: 0.9em; color: blue; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;"><a href="/help/inquiryForm"> 다른 문의등록하기＞</a></div>
                <div style="margin-top: 100px;"></div>
            </div>


        </body>

        </html>