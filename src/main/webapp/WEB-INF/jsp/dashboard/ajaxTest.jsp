<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<style>
		table, td, th{ border:1px solid gray; }
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<form id="studentForm" action="" >
	<table>
		<thead>
		<tr>
			<th>이름</th>
			<th>나이</th>
			<th>학교</th>
		</tr>
		<tr>
			<td><input name = "name" id="name" placeholder="name"/></td>
			<td><input name = "age" id="age" placeholder="age"/></td>
			<td><input name = "shcoolName" id="schoolName" placeholder="schoolName"/></td>
		</tr>
	</table>
	<a href="#" id="submitBtn"  onclick="javascript:submit();">submit</a>
</form>
</body>


<script>
	function submit(){
		alert("여기 들어오니?");
		//$('#studentForm').submit();
		callAjax('rest/dashboard/addStudent','post','studentForm', function(data){
			console.log("작동 성공했니?: "+data);
		});
	}
	
	//TODO ajax 호출 공통
	function callAjax(callUrl, callType, callFormName, successFunction){		
		blur();
		$.ajax({
            url      : callUrl,
            type     : callType,
            data     : $('#' + callFormName).serialize(),
            dataType : 'json',
            success  : function(data){
            }
        });
	}
</script>
</html>