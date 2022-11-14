<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
@font-face {
   font-family: 'DungGeunMo';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/DungGeunMo.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

* {
   box-sizing: border-box;
   font-family: 'DungGeunMo';
   margin: auto;
   background-color: #03001e;
   color: white;
}

.signupForm {
   margin: auto;
}

.joinForm {
   float: left;
   margin: auto;
   display: inline-block;
}

.body {
   margin: auto;
   display: flex;
   overflow: hidden;
}

input {
   width: 400px;
   height: 30px;
}

#email {
   width: 281px;
}

.header {
   text-align: center;
   height: 80px;
}

.selectOption {
   height: 30px;
}

* {
   color: white;
}

.requiredField {
   color: red;
}

#result, #duplResult {
   margin: 0;
}

.id, .nickname, .pw, .pwcheck, .name, .phone, .email, .postcode,
   .address1, .address2, .margin_top, #result, #duplResultID,
   #duplResultNickname {
   margin: 15px 0;
}

.footer {
   margin-top: 10px;
   text-align: center;
}

#duplCheckID, #duplCheckNickname {
   width: 100px;
}

.btns button {
   height: 30px;
   width: 92px;
}

.footer {
   margin: auto;
}

.btns {
   width: 100%;
   margin-top: 10px;
   text-align: center;
}

/* div {border: 1px solid black;} */
</style>
</head>

<body>
   <form action="/signup.member" method="post" id="frm">
      <div class="container signupForm col-12" style="min-width: 350px;">
         <div class="header col-12">logo</div>
         <div class="body col-12 ">
            <div class="joinForm col-12">
               <div class="id col-12">
                  <span>아이디<span class="requiredField">*<span></span>
                        <div class="margin_top col-12">
                           <input type="text" name="id" id="id"
                              placeholder="6~20자의 영문 소문자, 숫자와 특수기호(_)">
                           <div id="duplResultID"></div>
                        </div>
               </div>
               <div class="nickname col-12">
                  <span>닉네임<span class="requiredField">*<span></span>
                        <div class="margin_top col-12">
                           <input type="text" name="nickname" id="nickname"
                              placeholder="2~8자 영문 대 소문자,한글">
                           <div id="duplResultNickname"></div>
                        </div>
               </div>
               <div class="pw col-12">
                  <span>패스워드<span class="requiredField">*<span></span>
                        <div class="margin_top col-12">
                           <input type="password" name="pw" id="pw"
                              placeholder="8~20자 영문 대 소문자,숫자,특수문자(~!@#$%)">
                        </div>
               </div>
               <div class="pwcheck col-12">
                  <span>패스워드 확인</span>
                  <div class="margin_top col-12">
                     <input type="password" id="checkpw">
                     <div id="result"></div>
                  </div>
               </div>
               <div class="name col-12">
                  <span>이름<span class="requiredField">*<span></span>
                        <div class="margin_top col-12">
                           <input type="text" name="name" id="name" placeholder="2~5자 한글">
                        </div>
               </div>
               <div class="phone col-12">
                  <span>전화번호<span class="requiredField">*<span></span>
                        <div class="margin_top col-12">
                           <input type="text" name="phone" id="phone" placeholder="숫자만 입력">
                        </div>
               </div>
               <div class="email col-12">
                  <span>이메일<span class="requiredField">*<span></span>
                        <div class="margin_top col-12">
                           <input type="text" name="email" id="email"
                              placeholder="영어 대 소문자, 숫자"> @ <select
                              id="emailAddress" name="emailAddress" class="selectOption">
                              <option value="gmail.com">gmail.com</option>
                              <option value="naver.com">naver.com</option>
                              <option value="hanmail.net">hanmail.net</option>
                              <option value="nate.com">nate.com</option>
                           </select>
                        </div>
               </div>
               <div class="postcode col-12">
                  <div class="col-12">
                     <span>우편번호</span>&nbsp&nbsp
                     <!-- <input type="button"
                        onclick="postcode()" value="우편번호 찾기" id="btnsearch"
                        style="width: 100px;"> -->
                     <a href="#" id="btnsearch"> <span></span> <span></span> <span></span>
                        <span></span> 우편번호 찾기
                     </a>
                  </div>
                  <div class="margin_top col-12">
                     <input type="text" name="postcode" id="postcode"
                        placeholder="우편번호">
                  </div>
               </div>
               <div class="address1 col-12">
                  <span>주소</span>
                  <div class="margin_top col-12">
                     <input type="text" name="address1" id="address1" placeholder="주소">
                  </div>
               </div>
               <div class="address2 col-12">
                  <span>상세주소</span>
                  <div class="margin_top col-12">
                     <input type="text" name="address2" id="address2"
                        placeholder="상세주소">
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="footer col-12">
         <div class="btns">
            <a href=/index.jsp><button id=signup>회원가입</button></a>&nbsp&nbsp<a
               href=/index.jsp><button type="button">뒤로 가기</button></a>&nbsp
            <button type="reset">다시 입력</button>
         </div>
      </div>

   </form>
   <script>
      // 우편번호
      $("#btnsearch")
            .on(
                  "click",
                  function() {
                     new daum.Postcode(
                           {
                              oncomplete : function(data) {
                                 document.getElementById('postcode').value = data.zonecode;
                                 document.getElementById("address1").value = data.jibunAddress;
                              }
                           }).open();
                  })
      $("#pw,#checkpw").on("input", function() {
         if (!($("#pw").val() == $("#checkpw").val())) {
            $("#result").text("패스워드가 일치하지 않습니다.");
            $("#result").css("color", "red");
            pwCheck = false;
         } else {
            $("#result").text("패스워드가 일치합니다.");
            $("#result").css("color", "green");
            pwCheck = true;
         }
      })
      $("#id").on("input", function() { // 한 글자 쓸 때마다 ajax가 나간다(쏴라)
         idCheck = false;
         let id = $("#id").val();
         $.ajax({
            url : "/idDuplCheck.member",
            data : {
               "id" : id
            }
         }).done(function(resp) {
            if (resp == "true") { // 아이디가 이미 존재하므로 사용할 수 없는 경우
               $("#duplResultID").html("중복된 ID 입니다.");
               $("#duplResultID").css("color", "red");
            } else { // 아이디가 존재하지 않으므로 사용할 수 있는 경우
               $("#duplResultID").html("중복되지 않은 ID 입니다.");
               $("#duplResultID").css("color", "green");
               idCheck = true;
            }
         })
      })
      $("#nickname").on("input", function() {
         nicknameCheck = false;
         let nickname = $("#nickname").val();
         $.ajax({
            url : "/nicknameDuplCheck.member",
            data : {
               "nickname" : nickname
            }
         }).done(function(resp) {
            if (resp == "true") { // 닉네임이 이미 존재하므로 사용할 수 없는 경우
               $("#duplResultNickname").html("중복된 닉네임입니다.");
               $("#duplResultNickname").css("color", "red");

            } else { // 닉네임이 존재하지 않으므로 사용할 수 있는 경우
               $("#duplResultNickname").html("중복되지 않은 닉네임입니다.");
               $("#duplResultNickname").css("color", "green");
               nicknameCheck = true;
            }
         })
      })

      $("#frm").on(
            "submit",
            function() {
               if ($("#id").val() == "" || $("#pw").val() == ""
                     || $("#name").val() == ""
                     || $("#nickname").val() == ""
                     || $("#phone").val() == ""
                     || $("#email").val() == "") {
                  alert("아이디, 패스워드, 닉네임, 이름, 전화번호, 이메일은 필수입력값입니다.");
                  return false;
               }
               if (!idCheck) {
                  alert("아이디 중복체크를 먼저 수행해주세요.");
                  return false;
               }
               if (!nicknameCheck) {
                  alert("닉네임 중복체크를 먼저 수행해주세요.");
                  return false;
               }
               if (!pwCheck) {
                  alert("두 패스워드가 일치하지 않습니다.");
                  return false;
               }
               let idRegex = /^[a-z0-9_]{6,20}$/; //6~20자의 영문 소문자, 숫자와 특수기호(_) 가능
               let nicknameRegex = /^[가-힣a-zA-Z]{2,8}$/; //2~8자 한글,영문 대 소문자 가능
               let pwRegex = /^[A-Za-z0-9~!@#$%]{8,20}$/; //8~20자 영문 대 소문자, 숫자, 특수문자(~!@#$%) 가능
               let nameRegex = /^[가-힣]{2,5}$/; // 한글 2~5자
               let phoneRegex = /^01\d\d{3,4}\d{4}$/; //010으로 시작하고 숫자만 입력
               let emailRegex = /^[a-zA-Z0-9]{1,20}$/; //숫자,영어 대 소문자 가능
               if ($("#id").val() != "") {
                  if (!idRegex.test($("#id").val())) {
                     alert("아이디 형식을 확인해주세요.");
                     return false;
                  }
               }
               if ($("#nickname").val() != "") {
                  if (!nicknameRegex.test($("#nickname").val())) {
                     alert("닉네임 형식을 확인해주세요.");
                     return false;
                  }
               }
               if ($("#pw").val() != "") {
                  if (!pwRegex.test($("#pw").val())) {
                     alert("패스워드 형식을 확인해주세요.");
                     return false;
                  }
               }
               if ($("#name").val() != "") {
                  if (!nameRegex.test($("#name").val())) {
                     alert("이름 형식을 확인해주세요.");
                     return false;
                  }
               }
               if ($("#phone").val() != "") {
                  if (!phoneRegex.test($("#phone").val())) {
                     alert("전화번호 형식을 확인해주세요.");
                     return false;
                  }
               }
               if ($("#email").val() != "") {
                  if (!emailRegex.test($("#email").val())) {
                     alert("이메일 형식을 확인해주세요.");
                     return false;
                  }
               }
            })
   </script>
</body>

</html>
