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
                <a class="navbar-brand" href="/"><i class="fa-brands fa-github-square" style="font-size: 2em;"></i></a>
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
                    <a href="/comp/comphome"><span class="badge bg-success">?????????</span>
                    </a>
                </div>
            </div>
        </div>
    </nav>
    <div class="container-fluid width-53 top-80">
        <div>
            <div style="font-size: 1.2em; font-weight : bold; display:inline; margin-left : 0em;">
                <a href="/help" style="color: black; text-decoration: none;"> ?????? ?????????</a>
            </div>
            <button type="submit" class="qButton" style="border-radius: 30px; padding: 1.5px 20px; margin-right: 0em;">
                <a href="/help/inquiryForm" style="text-decoration: none; color: rgb(253, 255, 255);"> ????????????</a>
            </button>
            <hr>
        </div>

        <div style="font-weight: bold; font-size: 0.8em; color: rgb(145, 143, 143); display:inline; margin-left : 0em;">
            ???????????? ??? ???????????? ???
        </div>
        <div style="font-weight: bold; font-size: 0.8em; display:inline; margin-left : 0.1em;">???????????????????????? ?????????</div>

        <div style="margin-top: 70px;"></div>
        <div style="font-weight: bold; font-size: 1.4em;">?????????????? ????????? ????????? ????????????????</div>
        <div style="margin-top: 30px;"></div>
        <div style="font-size: 1.6em; font-weight: bold; display:inline;">??? ??????</div>
        <div style="font-size: 1.6em; font-weight: bold; color: blue; display:inline;">??????</div>
        <div style="font-size: 1.6em; font-weight: bold; display:inline;">, ?????????</div>
        <div style="font-size: 1.6em; font-weight: bold; color: blue; display:inline;">??????</div>


        <h3 style="font-size: 1.1em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
            ????????? ????????? ??? ?????? ?????????</h3>
        <h3 style="font-size: 1.1em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline;">
            ???????????? ?????????</h3>
        <h3 style="font-size: 1.1em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-weight: bold; 
            display:inline;">
            ?????? 50????????? ?????????</h3>
        <h3 style="font-size: 1.1em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline;">
            ??? ?????????</h3>

        <div style="margin-top: 25px;"></div>
        <div style="font-weight: bold; font-size: 1.0em; display:inline;">??? ???????????? ???????????? ?????? ?????? : </div>
        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline; ">
            ??? 50?????? ??????</div>
        <br>
        <div style="font-weight: bold; font-size: 1.0em; display:inline;">??? ??????????????? ???????????? ?????? : </div>
        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline;">???????????? ?????? 50?????? ??????</div>
        <br>
        <div style="font-weight: bold; font-size: 1.0em; display:inline;">??? ???????????? ?????? ???????????? ?????? : </div>
        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline;">???????????? ?????? 50?????? ??????</div>

        <div style="margin-top: 25px;"></div>
        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
            ???????????? ?????? ?????? ????????? ???????????????, ????????? ?????? ????????? ??????????????????.</div>
        <div style="margin-top: 12px;"></div>
        <div style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
            3??????(93???) ?????? ???????????? ?????? ????????? ?????? ?????? ????????? ?????????????????? !</div>

        <div style="margin-top: 30px;"></div>
        <div style="font-size: 1.6em; font-weight: bold; color: blue; display:inline;">?????? ??????</div>
        <div style="font-size: 1.6em; font-weight: bold;display:inline;">??? ????????? ??????????</div>
        <br>
        <div style="font-size: 1.1em; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">????????? ????????? ?????? 3??????(93???) ?????? ?????? ??? ?????? ????????? ??????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display: inline;">
            ?????? ????????? ?????? ???????????? ?????? ?????????.</div>

        <div style="margin-top: 25px;"></div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????? ??? 3??????(93??? ?????? ??????) ?????? ?????? ???, </div>
        <div style="font-size: 1.0em; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;"> ?????? ???</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ?????? ????????? ?????? ?????? ????????? ????????????, ????????? ?????????</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????????</div>
        <div style="font-size: 1.0em; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????? 3?????????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????????????????? </div>
        <div style="font-size: 1.0em; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????? ??? 10???</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ???????????? ??????????????? ?????? 50????????? ???????????? ???????????????.</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">(ex. 3/1??? ???????????? 6/2????????? ?????? ???, 7/10?????? ????????? ??????)</div>
        <div style="margin-top: 15px;"></div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ????????? ???????????? ?????? ?????? ???????????? ??????, ????????? ??? ???????????? ???????????????.</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">(ex.</div>
        <div style="font-size: 1.6em; font-weight: bold; font-size: 1.0em; color: red; 
            display:inline;">2021-04-10 ????????? ??? 2021-04-09 ?????????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">)</div>


        <div style="margin-top: 50px;"></div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline;">
            ??? ????????? ?????? ?????? ?????? ?????? ????????? ??????????????? ??????, ?????? ????????? ?????????????????? ??????????????? ?????? ??? ?????? ??????</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; display:inline;">
            ???????????? ???????????? ???????????????.</div>

        <div style="margin-top: 50px;"></div>
        <div style="font-size: 1.6em; font-weight: bold; font-size: 1.0em; display:inline;">[??????]</div>
        <br>
        <div style="margin-top: 20px;"></div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? 3/1??? ???????????? 6/2????????? ?????? ???, 7/10??? ????????? ????????? ??????</div>
        <div style="font-size: 1.6em; font-weight: bold; font-size: 1.0em; display:inline;">7/3??? ??????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????? ????????? ???????????? ???</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ??? ????????? ?????? 7/4??? ?????? ????????? ????????? ???,</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????????????????? ????????? ???????????? ??????</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ?????? ?????? ???????????? ?????? ??????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display:inline;">??? ?????? ?????? ???????????? ?????? ??????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ?????? 8/10??? ????????? ??????</div>
        <div style="margin-top: 50px;"></div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">???????????? ??????,</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">[??????????????????]</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??????</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">[?????????????????? ?????????????????????]</div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ????????? ?????? ?????? ????????? ?????? ?????? ??? ???</div>
        <br>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">????????? ??????????????? ????????????.</div>
        <br>
        <div style="margin-top: 30px;"></div>
        <div style="font-size: 1.0em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">????????? ????????? ????????? 50??????, ????????? 50???????????? ????????? ?????? ?????? ????????? ????????? ??? ?????? ??? ?????? ????????????.</div>
        <br>
        <div style="margin-top: 10px;"></div>
        <div style="font-size: 1.6em; font-weight: bold; color: blue; font-size: 1.0em; display:inline;">
            ??? ????????? ?????? ???, ??????????????? ?????? ???????????????(8.8%)??? ???????????? ?????????.</div>
        <br>
        <div style="margin-top: 50px;"></div>
        <div style="font-size: 0.8em; color: red; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ?????????????????? 3?????? ??????(92???) ??? ????????? ??????????????? ?????? ????????? ?????? ????????? ?????? ???????????? ????????????,
            ?????? ?????? ???????????? ?????? ????????? ???</div>
        <br>
        <div style="font-size: 0.8em; color: red; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">?????? ?????? ?????? ??????, ?????? ?????????????????? ?????? ????????? ???????????? ??????????????? ??????????????? ?????? ????????? ????????????.</div>
        <div style="margin-top: 160px;"></div>

        <div style="font-size: 0.9em; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;">??? ?????? ????????? ????????????????</div>
        <div style="font-size: 0.9em; color: blue; font-weight: bold; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display:inline;"><a href="/help/inquiryForm"style="color: blue;"> ?????? ?????????????????????</a></div>
        <div style="margin-top: 100px;"></div>
    </div>


</body>

</html>
<%@ include file="../layout/footer.jsp" %>