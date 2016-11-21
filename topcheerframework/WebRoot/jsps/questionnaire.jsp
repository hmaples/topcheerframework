<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'questionnaire.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<div
			style="width: 80%; margin-left: 10%; height: 4000px; position: absolute; z-index: 1">
			<!-- 调查问卷头 -->
			<div
				style="width: 70%; margin:0 auto;  position: relative; z-index: 5">
				<h1 align="center">
					上海天正员工满意度调查问卷
				</h1>
				<p>
					亲爱的同事，您好！
					<br />
					新的一年即将来临，感谢您在2016年度为公司发展做出的贡献！
					<br />
					员工是天正最宝贵的财富，公司的业绩提升来源于员工的敬业与勤奋，员工的满意度取决于对公司和就职部门各项工作改善的认可。我们鼓励大家对公司和部门的发展及管理做出及时客观的评价，以使公司和部门与您在事业上共同成长和进步。
					<br />
					我们非常重视您的合理建议，烦请配合填写以下内容：
				</p>
			</div>
			<!--回答者信息 -->
			<div
				style="width: 70%; margin:0 auto; border-style:solid;border-width:5pt; border-color:#CDC9C9； position: relative; z-index: 5">
				<h3 align="center">
					回答者信息
				</h3>
				<br />
				<b>年龄：</b>
				<br />
				<input type="radio" name="age">
				25岁以下
				<input type="radio" name="age">
				25(含)-30岁
				<input type="radio" name="age">
				30(含)-40岁
				<input type="radio" name="age">
				40(含)岁以上
				<br />
				<br />
				<b>性别：</b>
				<br />
				<input type="radio" name="sex">
				男
				<input type="radio" name="sex">
				女
				<br />
				<br />
				<b>学历层次：</b>
				<br />
				<input type="radio" name="education">
				高中及以下（含职高）
				<input type="radio" name="education">
				大专
				<input type="radio" name="education">
				本科
				<input type="radio" name="education">
				硕士及以上
				<br />
				<br />
				<b>为本公司服务的年限：</b>
				<br />
				<input type="radio" name="year">
				不足一年
				<input type="radio" name="year">
				满一年不足三年
				<input type="radio" name="year">
				满三年不足五年
				<input type="radio" name="year">
				满五年不足八年
				<input type="radio" name="year">
				八年以上
				<br />
				<br />
				<b>目前就职的部门：</b>
				<br />
				<ul>
					<li>
						天正信息<br /><br />
						<input type="radio" name="tcmessage">行业客户部
						<input type="radio" name="tcmessage">大客户部
						<input type="radio" name="tcmessage">解决方案部<br />
						<input type="radio" name="tcmessage">技术支持中心
						<input type="radio" name="tcmessage">行政人事部
						<input type="radio" name="tcmessage">资产财务部
					</li>
					<li>
						天正软件<br /><br />
						<input type="radio" name="tcsoftware">开发交付中心 
						<input type="radio" name="tcsoftware">解决方案中心 <br>
						<input type="radio" name="tcsoftware">市场营销中心 
						<input type="radio" name="tcsoftware">运营管理部
					</li>
					<li>
						天正智能<br /><br />
						 <input type="radio" name="tcsmart">交付一部
						 <input type="radio" name="tcsmart">交付二部
						 <input type="radio" name="tcsmart">解决方案部
						 <input type="radio" name="tcsmart">产品研发部
					</li>
				</ul>
			</div><br />
			<!--多选题 -->
			<div style="width: 70%; margin:0 auto;  position: relative; z-index: 5">
				<b>一、多选题（请选出您认为最符合实际的答案，每项最多可选3个）</b><br/><br />
				<b>1、	目前，我认为最满意的方面是：</b><br /><br/>
				<input type="checkbox" name="checkOne">公司前景
				<input type="checkbox" name="checkOne">锻炼与发展机会 
				<input type="checkbox" name="checkOne">薪酬福利 
				<input type="checkbox" name="checkOne">绩效管理 
				<input type="checkbox" name="checkOne">培训培养<br/><br/>
				<input type="checkbox" name="checkOne">职业方向 
				<input type="checkbox" name="checkOne">团队配合     
				<input type="checkbox" name="checkOne">奖惩机制
				<input type="checkbox" name="checkOne">工作认可 
				<input type="checkbox" name="checkOne">人际关系<br/><br/>
				<input type="checkbox" name="checkOne">其他(请注明)___________________________________________
				<br/><br/>
				<b>2、	目前，我觉得需要改进的方面是：</b><br /><br/>
				<input type="checkbox" name="checkTwo">公司前景
				<input type="checkbox" name="checkTwo">锻炼与发展机会 
				<input type="checkbox" name="checkTwo">薪酬福利 
				<input type="checkbox" name="checkTwo">绩效管理 
				<input type="checkbox" name="checkTwo">培训培养<br/><br/>
				<input type="checkbox" name="checkTwo">职业方向 
				<input type="checkbox" name="checkTwo">团队配合     
				<input type="checkbox" name="checkTwo">奖惩机制
				<input type="checkbox" name="checkTwo">工作认可 
				<input type="checkbox" name="checkTwo">人际关系<br/><br/>
				<input type="checkbox" name="checkTwo">其他(请注明)___________________________________________
				<br/><br/>
				<b>3、我觉得制约我取得优异工作业绩的最大因素是:</b><br /><br/>
				<input type="checkbox" name="checkThree">上级支持
				<input type="checkbox" name="checkThree">个人能力 
				<input type="checkbox" name="checkThree">部门配合
				<input type="checkbox" name="checkThree">工作氛围
				<input type="checkbox" name="checkThree">行业环境  
				<br/><br/>
				<b>单选题</b><br /><br/>
				<b>4、我认为自己的才能在目前岗位是否得以发挥:</b><br/><br />
				<input type="radio" name="radioFour">完全没有发挥
				<input type="radio" name="radioFour">有些方面没有发挥
				<input type="radio" name="radioFour">发挥尚可 
				<input type="radio" name="radioFour">已充分发挥
				<br/><br/>
				<b>5、我认为目前的工作积极性为:</b><br/><br />
				<input type="radio" name="radioFive">基本调动起来
				<input type="radio" name="radioFive">一般
				<input type="radio" name="radioFive">基本没有
				<input type="radio" name="radioFive">完全没有
				<br/><br/>
				<b>6、我认为在天正公司的发展空间是：</b><br/><br/>
				<input type="radio" name="radioSix">很大
				<input type="radio" name="radioSix">比较大
				<input type="radio" name="radioSix">不大
				<input type="radio" name="radioSix">没有空间
				<br/><br/>
				<b>7、我会留在天正公司，即使其他的公司有类似的空缺：</b><br/><br/>
				<input type="radio" name="radioSeven">继续留在公司
				<input type="radio" name="radioSeven">不确定
				<input type="radio" name="radioSeven">已经在寻找其他机会
				<br/><br/>
			</div>
			<!-- 偏向选择 -->
			<div style="width: 70%; margin:0 auto;  position: relative; z-index: 5">
			<b>二、偏向选择（分值范围为1-7分，其中1分为“非常满意”，3分为比较满意，5分为“不满意”，7分为“极其不满意”，请在空格内填写具体分值。如果您的打分为5-7分，
			请务必在说明栏中说明原因，以便我们能做进一步的改善。）</b><br/><br/>
			<table border=1 width=100%>
				<tr align="center">
					<td colspan="2">问题描述</td>
					<td>分值</td>
					<td>说明</td>
				</tr>
				<tr>
					<td rowspan="5" width=4%>对工作本身的满意度</td>
					<td width=50%>1.	我清楚自身的工作职责与任务。</td>
					<td width=20%><input type="text" width=100% height=30px/></td>
					<td ><input type="text" width=100% height=30px/></td>
				</tr>
				<tr>
					
					<td>2.	我清楚自身的工作内容和流程。</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					
					<td>3.	当前的工作职责和任务是根据我的能力设定的</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					
					<td>4.	当前的工作内容会促使我的能力不断提高</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					
					<td>5.	当前的工作内容与我的期望相符，工作起来踏实。</td>
					<td></td>
					<td></td>
				</tr>
			</table>
			</div>
		</div>
	</body>
</html>
