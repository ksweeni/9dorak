<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<form action="${pageContext.request.contextPath }/register/register.do" method="post">
		아이디 : <input type="text" value="aaaa" id="mem_id" name ="mem_id"/><button id="idCheck">중복확인</button><br />
		이름 : <input type="text" value="홍찬기" id="mem_name" name ="mem_name"/> <br />
		 
		비밀번호 : <input type="text" value="abc111!"  name ="mem_pw"/><br /> 
		
		이메일 : <input type="text" value="hcghcg17@naver.com" name ="mem_email"/> <br />
		 
		생년월일 : <input type="date" value="1997-05-05" name ="mem_bd"/> <br /> 
		
		전화번호 : <input type="text" value="01096681635" name ="mem_phone" > <br /><br />
		<h>추천인 입력</h> <br />
		추천인 코드 :<input type="text" placeholder="추천인 코드" name = "mem_code" id="mem_code" value="test111"/> <br /> 
		<input type="hidden" value="idUncheck" id="idCheckValue" />
		<button id = "register">회원가입</button>
	</form>

</body>
<script type="text/javascript">
	$("#idCheck").on("click", function(e) {
		e.preventDefault();
		if ($("#mem_id").val().length == 0) {
			alert("아이디를 입력해주세요");
			return;
		}

		$.ajax({
			url : "${pageContext.request.contextPath}/register/idCheck.do",
			data : {
				mem_id : $("#mem_id").val()
			},
			success : function(data) {
				if (data === "false") {
					$("#idCheckValue").val("idUncheck");
					alert("사용 불가능한 아이디 입니다.")
				} else if (data === "true") {
					$("#idCheckValue").val("idcheck");
					alert("사용 가능한 아이디 입니다.")
				}
			}

		}); // ajax

	}); // idcheck
	

	$("#register").on("click", function(e) {
	    // e.preventDefault(); // 이 부분을 주석 처리 또는 삭제
	    if ($("#idCheckValue").val() == "idUncheck") {
	        alert("아이디 중복 체크하세요 ");
	        e.preventDefault();
	        return;
	    }

	    e.preventDefault();
	    if ($("#mem_code").val().length != 0) {
	    
	        $.ajax({
	            url: "${pageContext.request.contextPath}/register/codeCheck.do",
	            data: {
	                mem_code: $("#mem_code").val()
	            },
	            success: function(data) {
	                if (data === "false") {
	                    alert("추천인 코드를 확인하세요");                
	                } else if( data=="true"){
	            		$("form").submit();
	                }
		                
	            }
	        });
	    } else{
	    	$("form").submit();	
	    } // 추천인 코드 체크 + 회원가입
	    

	
	});

</script>
</html>