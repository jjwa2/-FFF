<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script type="text/javascript">
$(document).ready(function() {
    
	$("#hiBbsTitle").focus();
	
	$("#btnWrite").on("click", function() {	
		
		$("#btnWrite").prop("disabled", true);  //저장 버튼 비활성화 버튼 2번누르는거 방지
		
		if($.trim($("#hiBbsTitle").val()).length<=0)
		{
			alert("제목을 입력 하세요");
			$("#hiBbsTitle").val("");
			$("#hiBbsTitle").focus();
			
			$("#btnWrite").prop("disabled", false); //저장 버튼 활성화
			return;
		}
		
		if($.trim($("#hiBbsContent").val()).length <=0)
		{
			alert("내용을 입력하세요.");
			$("#hiBbsContent").val("");
			$("#hiBbsContent").focus();
			$("#btnWrite").prop("disabled", false); //저장 버튼 활성화
			
			return;
		}
		
		var form =$("#writeForm")[0];
		var formData = new FormData(form);
		
		$.ajax({
			
			type:"POST",
			enctype:"multipart/form-data",
			url:"/board/writeProc", //컨트롤러로
			data:formData,
			processData:false, 					//formdata를 string으로 변환하지않음
			contentType:false,					//comtent-type헤어가  multipart/form-data로 전송
			cache:false,
			beforeSend:function(xhr){
				xhr.setRequestHeader("AJAX", "true");
			},
			success:function(response)
			{
				if(response.code == 0)
				{
					alert("게시물이 등록되었습니다.")
					location.href = "/board/list";
				}
				else if(response.code == 400)
				{
					alert("파라미터 값이 올바르지 않습니다.")
					$("#btnWrite").prop("disable", false);
				}
				else
				{
					alert("게시물 등록 중 오류가 발생하였습니다.");
					$("#btnWrite").prop("disable", false);
				}
			},
			error:function(error)
			{
				icia.common.error(error);
				alert("게시물 등록 중 오류가 발생하였습니다.");
				$("#btnWrite").prop("disdabed", false);
			}
			
	             });
	});
	
	$("#btnList").on("click", function() {
		
	});
});
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/navigation.jsp" %>
<div class="container">
	<h2>게시물 쓰기</h2>
	<form name="writeForm" id="writeForm" method="post" enctype="multipart/form-data">
		<input type="text" name="userName" id="userName" maxlength="20" value="${user.userName}" style="ime-mode:active;" class="form-control mt-4 mb-2" placeholder="이름을 입력해주세요." readonly />
		<input type="text" name="userEmail" id="userEmail" maxlength="30" value="${user.userEmail }" style="ime-mode:inactive;" class="form-control mb-2" placeholder="이메일을 입력해주세요." readonly />
		<input type="text" name="hiBbsTitle" id="hiBbsTitle" maxlength="100" style="ime-mode:active;" class="form-control mb-2" placeholder="제목을 입력해주세요." required />
		<div class="form-group">
			<textarea class="form-control" rows="10" name="hiBbsContent" id="hiBbsContent" style="ime-mode:active;" placeholder="내용을 입력해주세요" required></textarea>
		</div>
		<input type="file" id="hiBbsFile" name="hiBbsFile" class="form-control mb-2" placeholder="파일을 선택하세요." required />
		<div class="form-group row">
			<div class="col-sm-12">
				<button type="button" id="btnWrite" class="btn btn-primary" title="저장">저장</button>
				<button type="button" id="btnList" class="btn btn-secondary" title="리스트">리스트</button>
			</div>
		</div>
	</form>
	<form name="bbsForm" id="bbsForm" method="post">
		<input type="hidden" name="searchType" value="" />
		<input type="hidden" name="searchValue" value="" />
		<input type="hidden" name="curPage" value="" />
	</form>
</div>
</body>
</html>