<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<script src="/topcheerframework/js/jquery-1.9.1.js"  type="text/javascript"></script>
<script>
function submit1(){
	var str = null;
	var chk_value =[]; 
	
	$(":checked").each(function(){ 
		chk_value.push($(this).attr("id")+"@@@@"); 
	}); 
	$("input[type='text']").each(function(){ 
		var mytext =  $(this).attr("id")+"$$"+$(this).val();
		chk_value.push(mytext);
	});
	alert(JSON.stringify(chk_value));
	$.ajax({  
		    async : false,  
		    type: 'POST',  
		    dataType : "json",  
		    url: "commonAjax",//请求的action路径 
		    data:{"actionKbn":"submitMyAnswer","data1":JSON.stringify(chk_value),"actionNum":"ycQuestionService"},  //JSON.stringify(chk_value)
		    error: function () {//请求失败处理函数  
		        alert('请求失败'); 
		    },  
		    success:function(data){
		    	alert(data['messege']);
		     },
	});
}
</script>
</head>
<body>

	 <form action="commonAction" method="post" id="myform">
		<input type="hidden" name="list" value = "" id="listData">
		<c:forEach items="${data['questionList']}" var="tmp1" varStatus="i">
			${tmp1['issue_id']}、${tmp1['content']}<br>
			<c:if test="${tmp1['type']==3}">
				<input type="text" id="${tmp1['issue_id']}">
			</c:if>
			<c:if test="${tmp1['type']!=3}">
				<c:forEach items="${data['optionList']}" var="tmp2" varStatus="j">
					<c:if test="${tmp2['issue_id']==tmp1['issue_id']}">
						<c:if test="${tmp1['type']==1}">
							<input type="radio"    name="radio_${tmp1['issue_id']}"    id="radio_${tmp1['issue_id']}_${tmp2['sort']}">${tmp2.content}
						</c:if>
						<c:if test="${tmp1['type']==2}">
							<input type="checkbox" name="checkbox_${tmp1['issue_id']}" id="checkbox_${tmp1['issue_id']}_${tmp2['sort']}">${tmp2.content}
						</c:if>
					</c:if>
			</c:forEach>
			</c:if>
			<br>
		</c:forEach>
		<input type="button" onclick="submit1()" value="提交">
	</form> 
	<form action="commonAction" method="post">
		<input type="hidden" name="actionNum" value = "ycQuestionService">
		<input type="hidden" name="actionKbn" value = "enterMyQuestion">
		<input type="submit" name="submit" value = "进入我的调查问卷">
	</form>
</body>
</html>