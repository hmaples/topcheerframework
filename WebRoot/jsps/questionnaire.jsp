<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String userId = request.getParameter("userId");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>上海天正员工满意度调查问卷</title>
		<link rel="shortcut icon" type="image/x-icon" href="<%=request.getContextPath()%>/images/favicon.ico" media="screen" />
		<script type="text/javascript">
		console.log("开发部门：交付三部");
		console.log("开发：王伟");
		console.log("开发：沈丞恭");
		console.log("开发：廖旭");
		console.log("美工：马琦睿");
		</script>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/questionnaire.css">
	<script src="<%=request.getContextPath()%>/js/jquery-1.9.1.js" type="text/javascript"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/surveySubmit.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/submitcheck.js"></script>
	</head>

	<body>
		<div
			class = "div-outside">
			<!-- 调查问卷头 -->
			<div
				class = "div-inside">
				<h1  >
					上海天正员工满意度调查问卷
				</h1>
			   <p>
					亲爱的同事，您好！
					<br />
					新的一年即将来临，感谢您在2016年度为公司发展做出的贡献！
					<br />
					员工是天正最宝贵的财富，公司的业绩提升来源于员工的敬业与勤奋，员工的满意度取决于对公司和就职部门各项工作改善的认可。我们鼓励大家对公司和部门的发展及管理做出及时客观的评价，以使公司和部门与您在事业上共同成长和进步。
					<br />
					我们非常重视您的合理建议，请您配合填写以下内容：
				</p>
			</div>
			<!--回答者信息 -->
			<!-- 提交内容 -->
			<form id="questionnaire" action="commonAction.do" method="post">
				<input type="hidden" name="actionNum" value="questionnaireSubmit" />
				<input type="hidden" id="radioValue" name="radioValue"/>
				<input type="hidden" id="checkValue" name="checkValue"/>
				<input type="hidden" id="subValue" name="subValue"/>
				<input type="hidden" id="suggestValue"name="suggestValue"/>
				<input type="hidden" id="restOne" name="restOne"/>
				<input type="hidden" id="restTwo"name="restTwo"/>	
				<input type="hidden" name="userId" id="userId" value="<%=userId %>">
				<input type="hidden" name="questionnaireId" id="questionnaireId" value="1">  		
				<input type="hidden" name="userName" id="userName"> 				
			<div
				class = "div-inside2" style = "color:#34352C;font-family:Microsoft YaHei;">
				<h2>
					回答者信息
				</h2>
				<br />
				<b>1.年龄：</b>
				<br /><br />
				<input type="radio" name="age" id="1_1_6">
				<label for="1_1_6">25岁以下</label>
				<input type="radio" name="age" id="1_1_7">
				<label for="1_1_7">25(含)-30岁</label>
				<input type="radio" name="age" id="1_1_8">
				<label for="1_1_8">30(含)-40岁</label>
				<input type="radio" name="age" id="1_1_9">
				<label for="1_1_9">40(含)岁以上</label>
				<br />
				<br />
				<b>2.性别：</b>
				<br /><br />
				<input type="radio" name="sex" id="1_2_10">
				<label for="1_2_10">男</label>
				<input type="radio" name="sex" id="1_2_11">
				<label for="1_2_11">女</label>
				<br />
				<br />
				<b>3.学历层次：</b>
				<br /><br />
				<input type="radio" id="1_3_12" name="education">
				<label for="1_3_12">高中及以下（含职高）</label>
				<input type="radio" id="1_3_13" name="education">
				<label for="1_3_13">大专</label>
				<input type="radio" id="1_3_14" name="education">
				<label for="1_3_14">本科</label>
				<input type="radio" id="1_3_15" name="education">
				<label for="1_3_15">硕士及以上</label>
				<br />
				<br />
				<b>4.为本公司服务的年限：</b>
				<br /><br />
				<input type="radio" id="1_4_16" name="year">
				<label for="1_4_16">不足一年</label>
				<input type="radio" id="1_4_17" name="year">
				<label for="1_4_17">满一年不足三年</label>
				<input type="radio" id="1_4_18" name="year">
				<label for="1_4_18">满三年不足五年</label>
				<input type="radio" id="1_4_19" name="year">
				<label for="1_4_19">满五年不足八年</label>
				<input type="radio" id="1_4_20" name="year">
				<label for="1_4_20">八年以上</label>
				<br />
				<br />
				<b>5.目前就职的部门：</b>
				<br />
				<ul>
					<li>
						天正信息<br /><br />
						<input type="radio" id="1_5_21" name="depart"><label for="1_5_21">行业客户部</label>
						<input type="radio" id="1_5_22" name="depart"><label for="1_5_22">大客户部</label>
						<input type="radio" id="1_5_23" name="depart"><label for="1_5_23">解决方案部</label>
						<input type="radio" id="1_5_24" name="depart"><label for="1_5_24">技术支持中心</label>
						<input type="radio" id="1_5_25" name="depart"><label for="1_5_25">行政人事部</label>
						<input type="radio" id="1_5_26" name="depart"><label for="1_5_26">资产财务部</label>
					</li><br/>
					<li>
						天正软件<br /><br />
						<input type="radio" id="1_5_27" name="depart"><label for="1_5_27">开发交付中心</label> 
						<input type="radio" id="1_5_28" name="depart"><label for="1_5_28">解决方案中心 </label>
						<input type="radio" id="1_5_29" name="depart"><label for="1_5_29">市场营销中心 </label>
						<input type="radio" id="1_5_30" name="depart"><label for="1_5_30">运营管理部</label>
					</li><br />
					<li>
						天正智能<br /><br />
						 <input type="radio" id="1_5_31" name="depart"><label for="1_5_31">交付一部</label>
						 <input type="radio" id="1_5_32" name="depart"><label for="1_5_32">交付二部</label>
						 <input type="radio" id="1_5_23" name="depart"><label for="1_5_23">解决方案部</label>
						 <input type="radio" id="1_5_33" name="depart"><label for="1_5_33">产品研发部</label>
					</li>
				</ul>
			</div><br />
			<!--多选题 -->
			<div class = "div-inside3" style="color:#34352C;font-family:Microsoft YaHei;" >
				<b>一、多选题（请选出您认为最符合实际的答案，每项最多可选3个）</b><br/><br />
				<b>1、	目前，我认为最满意的方面是：</b><br /><br/>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_34"><label for="3_1_34">公司前景</label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_35"><label for="3_1_35">锻炼与发展机会 </label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_36"><label for="3_1_36">薪酬福利 </label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_37"><label for="3_1_37">绩效管理 </label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_38"><label for="3_1_38">培训培养</label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_39"><label for="3_1_39">职业方向 </label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_40"><label for="3_1_40">团队配合     </label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_41"><label for="3_1_41">奖惩机制</label><br></br>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_42"><label for="3_1_42">工作认可 </label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_43"><label for="3_1_43">人际关系</label>
				<input type="checkbox"class = "input-2"  name="checkOne" id="3_1_0"><label for="3_1_0">其他(请注明)</label><br/>
				<input type="text" class = "line" id="else_1">
				<br/><br/>
				<b>2、	目前，我觉得需要改进的方面是：</b><br /><br/>
				<input type="checkbox"class = "input-2"  name="checkTwo" id="3_2_34"><label for="3_2_34">公司前景</label>
				<input type="checkbox"class = "input-2" name="checkTwo" id="3_2_35"><label for="3_2_35">锻炼与发展机会 </label>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_36"><label for="3_2_36">薪酬福利 </label>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_37"><label for="3_2_37">绩效管理 </label>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_38"><label for="3_2_38">培训培养</label>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_39"><label for="3_2_39">职业方向</label> 
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_40"><label for="3_2_40">团队配合</label>     
				<input type="checkbox"class = "input-2" name="checkTwo" id="3_2_41"><label for="3_2_41">奖惩机制</label><br></br>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_42"><label for="3_2_42">工作认可 </label>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_43"><label for="3_2_43">人际关系</label>
				<input type="checkbox" class = "input-2"name="checkTwo" id="3_2_0"><label for="3_2_44">其他(请注明)</label><br/>
				<input type="text"  class = "line"  id="else_2">
				<br/><br/>
				<b>3、我觉得制约我取得优异工作业绩的最大因素是:</b><br /><br/>
				<input type="checkbox" class = "input-2"name="checkThree" id="3_3_45"><label for="3_3_45">上级支持</label>
				<input type="checkbox" class = "input-2"name="checkThree" id="3_3_46"><label for="3_3_46">个人能力 </label>
				<input type="checkbox" class = "input-2"name="checkThree" id="3_3_47"><label for="3_3_47">部门配合</label>
				<input type="checkbox"class = "input-2" name="checkThree" id="3_3_48"><label for="3_3_48">工作氛围</label>
				<input type="checkbox"class = "input-2" name="checkThree" id="3_3_49"><label for="3_3_49">行业环境  </label>
				<br/><br/>
				<b>单选题</b><br /><br/>
				<b>4、我认为自己的才能在目前岗位是否得以发挥:</b><br/><br />
				<input type="radio"class = "input-2" name="radioFour" id="2_4_50"><label for="2_4_50">完全没有发挥</label>
				<input type="radio"class = "input-2"  name="radioFour" id="2_4_51"><label for="2_4_51">有些方面没有发挥</label>
				<input type="radio"class = "input-2"  name="radioFour" id="2_4_52"><label for="2_4_52">发挥尚可 </label>
				<input type="radio"class = "input-2"  name="radioFour" id="2_4_53"><label for="2_4_53">已充分发挥</label>
				<br/><br/>
				<b>5、我认为目前的工作积极性为:</b><br/><br />
				<input type="radio"class = "input-2"  name="radioFive" id="2_5_54"><label for="2_5_54">基本调动起来</label>
				<input type="radio"class = "input-2"  name="radioFive" id="2_5_55"><label for="2_5_55">一般</label>
				<input type="radio"class = "input-2"  name="radioFive" id="2_5_56"><label for="2_5_56">基本没有</label>
				<input type="radio"class = "input-2"  name="radioFive" id="2_5_57"><label for="2_5_57">完全没有</label>
				<br/><br/>
				<b>6、我认为在天正公司的发展空间是：</b><br/><br/>
				<input type="radio"class = "input-2"  name="radioSix" id="2_6_58"><label for="2_6_58">很大</label>
				<input type="radio"class = "input-2"  name="radioSix" id="2_6_59"><label for="2_6_59">比较大</label>
				<input type="radio"class = "input-2"  name="radioSix" id="2_6_60"><label for="2_6_60">不大</label>
				<input type="radio"class = "input-2"  name="radioSix" id="2_6_61"><label for="2_6_61">没有空间</label>
				<br/><br/>
				<b>7、我会留在天正公司，即使其他的公司有类似的空缺：</b><br/><br/>
				<input type="radio"class = "input-2"  name="radioSeven" id="2_7_62"><label for="2_7_62">继续留在公司</label>
				<input type="radio"class = "input-2"  name="radioSeven" id="2_7_63"><label for="2_7_63">不确定</label>
				<input type="radio"class = "input-2"  name="radioSeven" id="2_7_64"><label for="2_7_64">已经在寻找其他机会</label>
				<br/><br/>
			</div>
			<!-- 偏向选择 -->
			<div  class = "div-inside4" style = " width: 85%;
					         height: auto;
					         background-color:#F2F7F9;
					         margin: 0 auto; " >
	<b style = "line-height:150%;color:#34352C;">二、偏向选择（分值范围为1-7分，其中1分为“非常满意”，3分为比较满意，5分为“不满意”，7分为“极其不满意”，请在空格内填写具体分值。如果您的打分为5-7分，请务必在说明栏中说明原因，以便我们能做进一步的改善。）</b>
   <table style = " color:#34352C;border-spacing:10px;  font-family:Microsoft YaHei;text-align:center;width:100%" >
   <tr>
    <td   colspan=2 align = center ><b>对工作本身的满意度</b></td>
   </tr>
   
   <tr>
    <td align = left>1.	我清楚自身的工作职责与任务。</td>
    <td><input name = "m_radio_1" id="4_1_1"  class = "input-3"type = "radio"/><label for="4_1_1">1</label>
    	<input name = "m_radio_1" id="4_1_2"  class = "input-3"type = "radio"/><label for="4_1_2">2</label>
    	<input name = "m_radio_1" id="4_1_3"  class = "input-3"type = "radio"/><label for="4_1_3">3</label>
    	<input name = "m_radio_1" id="4_1_4"   class = "input-3"type = "radio"/><label for="4_1_4">4</label>
    	<input name = "m_radio_1" id="4_1_5"   class = "input-3"type = "radio"/><label for="4_1_5">5</label>
    	<input name = "m_radio_1" id="4_1_6"    class = "input-3"type = "radio"/><label for="4_1_6">6</label>
    	<input name = "m_radio_1" id="4_1_7"   class = "input-3"type = "radio"/><label for="4_1_7">7</label></td>
   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_1"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>2.	我清楚自身的工作内容和流程。</td>
<td><input name = "m_radio_2" id="4_2_1"  class = "input-3"type = "radio"/><label for="4_2_1">1</label>
    	<input name = "m_radio_2" id="4_2_2"  class = "input-3"type = "radio"/><label for="4_2_2">2</label>
    	<input name = "m_radio_2" id="4_2_3"  class = "input-3"type = "radio"/><label for="4_2_3">3</label>
    	<input name = "m_radio_2" id="4_2_4"   class = "input-3"type = "radio"/><label for="4_2_4">4</label>
    	<input name = "m_radio_2" id="4_2_5"   class = "input-3"type = "radio"/><label for="4_2_5">5</label>
    	<input name = "m_radio_2" id="4_2_6"    class = "input-3"type = "radio"/><label for="4_2_6">6</label>
    	<input name = "m_radio_2" id="4_2_7"   class = "input-3"type = "radio"/><label for="4_2_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_2"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>3.	当前的工作职责和任务是根据我的能力设定的。</td>
<td><input name = "m_radio_3" id="4_3_1"  class = "input-3"type = "radio"/><label for="4_3_1">1</label>
    	<input name = "m_radio_3" id="4_3_2"  class = "input-3"type = "radio"/><label for="4_3_2">2</label>
    	<input name = "m_radio_3" id="4_3_3"  class = "input-3"type = "radio"/><label for="4_3_3">3</label>
    	<input name = "m_radio_3" id="4_3_4"   class = "input-3"type = "radio"/><label for="4_3_4">4</label>
    	<input name = "m_radio_3" id="4_3_5"   class = "input-3"type = "radio"/><label for="4_3_5">5</label>
    	<input name = "m_radio_3" id="4_3_6"    class = "input-3"type = "radio"/><label for="4_3_6">6</label>
    	<input name = "m_radio_3" id="4_3_7"   class = "input-3"type = "radio"/><label for="4_3_7">7</label></td></tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_3"/>
    </td>
   </tr>
    
   <tr>
    <td align = left>4.	当前的工作内容会促使我的能力不断提高</td>
<td><input name = "m_radio_4" id="4_4_1"  class = "input-3"type = "radio"/><label for="4_4_1">1</label>
    	<input name = "m_radio_4" id="4_4_2"  class = "input-3"type = "radio"/><label for="4_4_2">2</label>
    	<input name = "m_radio_4" id="4_4_3"  class = "input-3"type = "radio"/><label for="4_4_3">3</label>
    	<input name = "m_radio_4" id="4_4_4"   class = "input-3"type = "radio"/><label for="4_4_4">4</label>
    	<input name = "m_radio_4" id="4_4_5"   class = "input-3"type = "radio"/><label for="4_4_5">5</label>
    	<input name = "m_radio_4" id="4_4_6"    class = "input-3"type = "radio"/><label for="4_4_6">6</label>
    	<input name = "m_radio_4" id="4_4_7"   class = "input-3"type = "radio"/><label for="4_4_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_4"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>5.	当前的工作内容与我的期望相符，工作起来踏实。</td>
<td><input name = "m_radio_5" id="4_5_1"  class = "input-3"type = "radio"/><label for="4_5_1">1</label>
    	<input name = "m_radio_5" id="4_5_2"  class = "input-3"type = "radio"/><label for="4_5_2">2</label>
    	<input name = "m_radio_5" id="4_5_3"  class = "input-3"type = "radio"/><label for="4_5_3">3</label>
    	<input name = "m_radio_5" id="4_5_4"   class = "input-3"type = "radio"/><label for="4_5_4">4</label>
    	<input name = "m_radio_5" id="4_5_5"   class = "input-3"type = "radio"/><label for="4_5_5">5</label>
    	<input name = "m_radio_5" id="4_5_6"    class = "input-3"type = "radio"/><label for="4_5_6">6</label>
    	<input name = "m_radio_5" id="4_5_7"   class = "input-3"type = "radio"/><label for="4_5_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_5"/>
    </td>
   </tr>
   <tr>
   
   </tr>
                                                                 <!-- second -->
   <tr>
    <td   colspan=2><b>对工作回报的满意度</b></td>
   </tr>
   <tr>
    <td align = left>6.	我认为我的薪酬与当前的工作职责关系密切。</td>
<td><input name = "m_radio_6" id="4_6_1"  class = "input-3"type = "radio"/><label for="4_6_1">1</label>
    	<input name = "m_radio_6" id="4_6_2"  class = "input-3"type = "radio"/><label for="4_6_2">2</label>
    	<input name = "m_radio_6" id="4_6_3"  class = "input-3"type = "radio"/><label for="4_6_3">3</label>
    	<input name = "m_radio_6" id="4_6_4"   class = "input-3"type = "radio"/><label for="4_6_4">4</label>
    	<input name = "m_radio_6" id="4_6_5"   class = "input-3"type = "radio"/><label for="4_6_5">5</label>
    	<input name = "m_radio_6" id="4_6_6"    class = "input-3"type = "radio"/><label for="4_6_6">6</label>
    	<input name = "m_radio_6" id="4_6_7"   class = "input-3"type = "radio"/><label for="4_6_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_6"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>7.	我的业绩能对我的收入产生重大影响。</td>
<td><input name = "m_radio_7" id="4_7_1"  class = "input-3"type = "radio"/><label for="4_7_1">1</label>
    	<input name = "m_radio_7" id="4_7_2"  class = "input-3"type = "radio"/><label for="4_7_2">2</label>
    	<input name = "m_radio_7" id="4_7_3"  class = "input-3"type = "radio"/><label for="4_7_3">3</label>
    	<input name = "m_radio_7" id="4_7_4"   class = "input-3"type = "radio"/><label for="4_7_4">4</label>
    	<input name = "m_radio_7" id="4_7_5"   class = "input-3"type = "radio"/><label for="4_7_5">5</label>
    	<input name = "m_radio_7" id="4_7_6"    class = "input-3"type = "radio"/><label for="4_7_6">6</label>
    	<input name = "m_radio_7" id="4_7_7"   class = "input-3"type = "radio"/><label for="4_7_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_7"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>8.	就我的业绩和能力而言，我认为目前的薪资水平是公平的。</td>
<td><input name = "m_radio_8" id="4_8_1"  class = "input-3"type = "radio"/><label for="4_8_1">1</label>
    	<input name = "m_radio_8" id="4_8_2"  class = "input-3"type = "radio"/><label for="4_8_2">2</label>
    	<input name = "m_radio_8" id="4_8_3"  class = "input-3"type = "radio"/><label for="4_8_3">3</label>
    	<input name = "m_radio_8" id="4_8_4"   class = "input-3"type = "radio"/><label for="4_8_4">4</label>
    	<input name = "m_radio_8" id="4_8_5"   class = "input-3"type = "radio"/><label for="4_8_5">5</label>
    	<input name = "m_radio_8" id="4_8_6"    class = "input-3"type = "radio"/><label for="4_8_6">6</label>
    	<input name = "m_radio_8" id="4_8_7"   class = "input-3"type = "radio"/><label for="4_8_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_8"/>
    </td>
   </tr>
    
   <tr>
    <td align = left>9.	与外单位同行相比，我对自己的收入感觉很满意。</td>
<td><input name = "m_radio_9" id="4_9_1"  class = "input-3"type = "radio"/><label for="4_9_1">1</label>
    	<input name = "m_radio_9" id="4_9_2"  class = "input-3"type = "radio"/><label for="4_9_2">2</label>
    	<input name = "m_radio_9" id="4_9_3"  class = "input-3"type = "radio"/><label for="4_9_3">3</label>
    	<input name = "m_radio_9" id="4_9_4"   class = "input-3"type = "radio"/><label for="4_9_4">4</label>
    	<input name = "m_radio_9" id="4_9_5"   class = "input-3"type = "radio"/><label for="4_9_5">5</label>
    	<input name = "m_radio_9" id="4_9_6"    class = "input-3"type = "radio"/><label for="4_9_6">6</label>
    	<input name = "m_radio_9" id="4_9_7"   class = "input-3"type = "radio"/><label for="4_9_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_9"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>10. 当我的工作业绩十分突出，公司会给予更大的发展空间。</td>
<td><input name = "m_radio_10" id="4_10_1"  class = "input-3"type = "radio"/><label for="4_10_1">1</label>
    	<input name = "m_radio_10" id="4_10_2"  class = "input-3"type = "radio"/><label for="4_10_2">2</label>
    	<input name = "m_radio_10" id="4_10_3"  class = "input-3"type = "radio"/><label for="4_10_3">3</label>
    	<input name = "m_radio_10" id="4_10_4"   class = "input-3"type = "radio"/><label for="4_10_4">4</label>
    	<input name = "m_radio_10" id="4_10_5"   class = "input-3"type = "radio"/><label for="4_10_5">5</label>
    	<input name = "m_radio_10" id="4_10_6"    class = "input-3"type = "radio"/><label for="4_10_6">6</label>
    	<input name = "m_radio_10" id="4_10_7"   class = "input-3"type = "radio"/><label for="4_10_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_10"/>
    </td>
   </tr>
                                                      <!-- third -->
   <tr>
    <td  colspan=2><b>对工作指导的满意度</b></td>
   </tr>
   <tr>
    <td align = left>11.	我的上级能合理明确地给我设定工作目标以及目标达成标准</td>
<td><input name = "m_radio_11" id="4_11_1"  class = "input-3"type = "radio"/><label for="4_10_1">1</label>
    	<input name = "m_radio_11" id="4_11_2"  class = "input-3"type = "radio"/><label for="4_10_2">2</label>
    	<input name = "m_radio_11" id="4_11_3"  class = "input-3"type = "radio"/><label for="4_10_3">3</label>
    	<input name = "m_radio_11" id="4_11_4"   class = "input-3"type = "radio"/><label for="4_10_4">4</label>
    	<input name = "m_radio_11" id="4_11_5"   class = "input-3"type = "radio"/><label for="4_10_5">5</label>
    	<input name = "m_radio_11" id="4_11_6"    class = "input-3"type = "radio"/><label for="4_10_6">6</label>
    	<input name = "m_radio_11" id="4_11_7"   class = "input-3"type = "radio"/><label for="4_11_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_11"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>12.	我在工作过程中能够得到上级的跟踪和指导。</td>
<td><input name = "m_radio_12" id="4_12_1"  class = "input-3"type = "radio"/><label for="4_12_1">1</label>
    	<input name = "m_radio_12" id="4_12_2"  class = "input-3"type = "radio"/><label for="4_12_2">2</label>
    	<input name = "m_radio_12" id="4_12_3"  class = "input-3"type = "radio"/><label for="4_12_3">3</label>
    	<input name = "m_radio_12" id="4_12_4"   class = "input-3"type = "radio"/><label for="4_12_4">4</label>
    	<input name = "m_radio_12" id="4_12_5"   class = "input-3"type = "radio"/><label for="4_12_5">5</label>
    	<input name = "m_radio_12" id="4_12_6"    class = "input-3"type = "radio"/><label for="4_12_6">6</label>
    	<input name = "m_radio_12" id="4_12_7"   class = "input-3"type = "radio"/><label for="4_12_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_12"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>13.	我的上级向我采用开放而诚恳的沟通方式。</td>
<td><input name = "m_radio_13" id="4_13_1"  class = "input-3"type = "radio"/><label for="4_13_1">1</label>
    	<input name = "m_radio_13" id="4_13_2"  class = "input-3"type = "radio"/><label for="4_13_2">2</label>
    	<input name = "m_radio_13" id="4_13_3"  class = "input-3"type = "radio"/><label for="4_13_3">3</label>
    	<input name = "m_radio_13" id="4_13_4"   class = "input-3"type = "radio"/><label for="4_13_4">4</label>
    	<input name = "m_radio_13" id="4_13_5"   class = "input-3"type = "radio"/><label for="4_13_5">5</label>
    	<input name = "m_radio_13" id="4_13_6"    class = "input-3"type = "radio"/><label for="4_13_6">6</label>
    	<input name = "m_radio_13" id="4_13_7"   class = "input-3"type = "radio"/><label for="4_13_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_13"/>
    </td>
   </tr>
    
   <tr>
    <td align = left>14.	我的上级在工作中会采纳我的合理意见和建议。</td>
<td><input name = "m_radio_14" id="4_14_1"  class = "input-3"type = "radio"/><label for="4_14_1">1</label>
    	<input name = "m_radio_14" id="4_14_2"  class = "input-3"type = "radio"/><label for="4_14_2">2</label>
    	<input name = "m_radio_14" id="4_14_3"  class = "input-3"type = "radio"/><label for="4_14_3">3</label>
    	<input name = "m_radio_14" id="4_14_4"   class = "input-3"type = "radio"/><label for="4_14_4">4</label>
    	<input name = "m_radio_14" id="4_14_5"   class = "input-3"type = "radio"/><label for="4_14_5">5</label>
    	<input name = "m_radio_14" id="4_14_6"    class = "input-3"type = "radio"/><label for="4_14_6">6</label>
    	<input name = "m_radio_14" id="4_14_7"   class = "input-3"type = "radio"/><label for="4_14_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_14"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>15.	我认为绩效评估结果在现行的工作指导方式下有助于提高我的绩效。</td>
<td><input name = "m_radio_15" id="4_15_1"  class = "input-3"type = "radio"/><label for="4_15_1">1</label>
    	<input name = "m_radio_15" id="4_15_2"  class = "input-3"type = "radio"/><label for="4_15_2">2</label>
    	<input name = "m_radio_15" id="4_15_3"  class = "input-3"type = "radio"/><label for="4_15_3">3</label>
    	<input name = "m_radio_15" id="4_15_4"   class = "input-3"type = "radio"/><label for="4_15_4">4</label>
    	<input name = "m_radio_15" id="4_15_5"   class = "input-3"type = "radio"/><label for="4_15_5">5</label>
    	<input name = "m_radio_15" id="4_15_6"    class = "input-3"type = "radio"/><label for="4_15_6">6</label>
    	<input name = "m_radio_15" id="4_15_7"   class = "input-3"type = "radio"/><label for="4_15_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_15"/>
    </td>
   </tr>
                            <!-- fifth -->
   <tr>
    <td  colspan=2><b>对技能提升的满意度</b></td>
   </tr>
   <tr>
    <td align = left>16.	我所在的部门会经常开展多样化培训或技术交流活动。</td>
<td><input name = "m_radio_16" id="4_16_1"  class = "input-3"type = "radio"/><label for="4_15_1">1</label>
    	<input name = "m_radio_16" id="4_16_2"  class = "input-3"type = "radio"/><label for="4_15_2">2</label>
    	<input name = "m_radio_16" id="4_16_3"  class = "input-3"type = "radio"/><label for="4_15_3">3</label>
    	<input name = "m_radio_16" id="4_16_4"   class = "input-3"type = "radio"/><label for="4_15_4">4</label>
    	<input name = "m_radio_16" id="4_16_5"   class = "input-3"type = "radio"/><label for="4_15_5">5</label>
    	<input name = "m_radio_16" id="4_16_6"    class = "input-3"type = "radio"/><label for="4_15_">6</label>
    	<input name = "m_radio_16" id="4_16_7"   class = "input-3"type = "radio"/><label for="4_16_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_16"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>17.	公司会根据业务特性开展有针对性的通用培训课程。</td>
<td><input name = "m_radio_17" id="4_17_1"  class = "input-3"type = "radio"/><label for="4_17_1">1</label>
    	<input name = "m_radio_17" id="4_17_2"  class = "input-3"type = "radio"/><label for="4_17_2">2</label>
    	<input name = "m_radio_17" id="4_17_3"  class = "input-3"type = "radio"/><label for="4_17_3">3</label>
    	<input name = "m_radio_17" id="4_17_4"   class = "input-3"type = "radio"/><label for="4_17_4">4</label>
    	<input name = "m_radio_17" id="4_17_5"   class = "input-3"type = "radio"/><label for="4_17_5">5</label>
    	<input name = "m_radio_17" id="4_17_6"    class = "input-3"type = "radio"/><label for="4_17_6">6</label>
    	<input name = "m_radio_17" id="4_17_7"   class = "input-3"type = "radio"/><label for="4_17_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_17"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>18.	我认为现有的培训能有效地提高专业技能。</td>
<td><input name = "m_radio_18" id="4_18_1"  class = "input-3"type = "radio"/><label for="4_18_1">1</label>
    	<input name = "m_radio_18" id="4_18_2"  class = "input-3"type = "radio"/><label for="4_18_2">2</label>
    	<input name = "m_radio_18" id="4_18_3"  class = "input-3"type = "radio"/><label for="4_18_3">3</label>
    	<input name = "m_radio_18" id="4_18_4"   class = "input-3"type = "radio"/><label for="4_18_4">4</label>
    	<input name = "m_radio_18" id="4_18_5"   class = "input-3"type = "radio"/><label for="4_18_5">5</label>
    	<input name = "m_radio_18" id="4_18_6"    class = "input-3"type = "radio"/><label for="4_18_6">6</label>
    	<input name = "m_radio_18" id="4_18_7"   class = "input-3"type = "radio"/><label for="4_18_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_18"/>
    </td>
   </tr>
    
   <tr>
    <td align = left>19.	我满意公司培训的组织形式。（场地、授课方式、时间安排等）</td>
<td><input name = "m_radio_19" id="4_19_1"  class = "input-3"type = "radio"/><label for="4_19_1">1</label>
    	<input name = "m_radio_19" id="4_19_2"  class = "input-3"type = "radio"/><label for="4_19_2">2</label>
    	<input name = "m_radio_19" id="4_19_3"  class = "input-3"type = "radio"/><label for="4_19_3">3</label>
    	<input name = "m_radio_19" id="4_19_4"   class = "input-3"type = "radio"/><label for="4_19_4">4</label>
    	<input name = "m_radio_19" id="4_19_5"   class = "input-3"type = "radio"/><label for="4_19_5">5</label>
    	<input name = "m_radio_19" id="4_19_6"    class = "input-3"type = "radio"/><label for="4_19_6">6</label>
    	<input name = "m_radio_19" id="4_19_7"   class = "input-3"type = "radio"/><label for="4_19_7">7</label></td>   </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_19"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>20.	我认为公司非常重视员工培训。</td>
<td><input name = "m_radio_20" id="4_20_1"  class = "input-3"type = "radio"/><label for="4_20_1">1</label>
    	<input name = "m_radio_20" id="4_20_2"  class = "input-3"type = "radio"/><label for="4_20_2">2</label>
    	<input name = "m_radio_20" id="4_20_3"  class = "input-3"type = "radio"/><label for="4_20_3">3</label>
    	<input name = "m_radio_20" id="4_20_4"   class = "input-3"type = "radio"/><label for="4_20_4">4</label>
    	<input name = "m_radio_20" id="4_20_5"   class = "input-3"type = "radio"/><label for="4_20_5">5</label>
    	<input name = "m_radio_20" id="4_20_6"    class = "input-3"type = "radio"/><label for="4_20_6">6</label>
    	<input name = "m_radio_20" id="4_20_7"   class = "input-3"type = "radio"/><label for="4_20_7">7</label></td>     </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_20"/>
    </td>
   </tr>
                                     <!-- sixth -->
                                     
       <tr>
    <td  colspan=2><b>对工作群体的满意度</b></td>
   </tr>
   <tr>
    <td align = left>21.	我的同事能毫无保留地分享、传授自己的成功经验。</td>
<td><input name = "m_radio_21" id="4_21_1"  class = "input-3"type = "radio"/><label for="4_21_1">1</label>
    	<input name = "m_radio_21" id="4_21_2"  class = "input-3"type = "radio"/><label for="4_21_2">2</label>
    	<input name = "m_radio_21" id="4_21_3"  class = "input-3"type = "radio"/><label for="4_21_3">3</label>
    	<input name = "m_radio_21" id="4_21_4"   class = "input-3"type = "radio"/><label for="4_21_4">4</label>
    	<input name = "m_radio_21" id="4_21_5"   class = "input-3"type = "radio"/><label for="4_21_5">5</label>
    	<input name = "m_radio_21" id="4_21_6"    class = "input-3"type = "radio"/><label for="4_21_6">6</label>
    	<input name = "m_radio_21" id="4_21_7"   class = "input-3"type = "radio"/><label for="4_21_7">7</label></td>     </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_21"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>22.	我可以获取必要的信息和资料，以便于顺利开展工作。</td>
<td><input name = "m_radio_22" id="4_22_1"  class = "input-3"type = "radio"/><label for="4_22_1">1</label>
    	<input name = "m_radio_22" id="4_22_2"  class = "input-3"type = "radio"/><label for="4_22_2">2</label>
    	<input name = "m_radio_22" id="4_22_3"  class = "input-3"type = "radio"/><label for="4_22_3">3</label>
    	<input name = "m_radio_22" id="4_22_4"   class = "input-3"type = "radio"/><label for="4_22_4">4</label>
    	<input name = "m_radio_22" id="4_22_5"   class = "input-3"type = "radio"/><label for="4_22_5">5</label>
    	<input name = "m_radio_22" id="4_22_6"    class = "input-3"type = "radio"/><label for="4_22_6">6</label>
    	<input name = "m_radio_22" id="4_22_7"   class = "input-3"type = "radio"/><label for="4_22_7">7</label></td>     </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_22"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>23.	我所在的部门能够发挥集体作用，相互支持完成组织目标。</td>
<td><input name = "m_radio_23" id="4_23_1"  class = "input-3"type = "radio"/><label for="4_23_1">1</label>
    	<input name = "m_radio_23" id="4_23_2"  class = "input-3"type = "radio"/><label for="4_23_2">2</label>
    	<input name = "m_radio_23" id="4_23_3"  class = "input-3"type = "radio"/><label for="4_23_3">3</label>
    	<input name = "m_radio_23" id="4_23_4"   class = "input-3"type = "radio"/><label for="4_23_4">4</label>
    	<input name = "m_radio_23" id="4_23_5"   class = "input-3"type = "radio"/><label for="4_23_5">5</label>
    	<input name = "m_radio_23" id="4_23_6"    class = "input-3"type = "radio"/><label for="4_23_6">6</label>
    	<input name = "m_radio_23" id="4_23_7"   class = "input-3"type = "radio"/><label for="4_23_7">7</label></td>     </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_23"/>
    </td>
   </tr>
    
   <tr>
    <td align = left>24.	为完成同一目标，不同部门的同事能紧密合作。</td>
    <td><input name = "m_radio_24" id="4_24_1"  class = "input-3"type = "radio"/><label for="4_24_1">1</label>
    	<input name = "m_radio_24" id="4_24_2"  class = "input-3"type = "radio"/><label for="4_24_2">2</label>
    	<input name = "m_radio_24" id="4_24_3"  class = "input-3"type = "radio"/><label for="4_24_3">3</label>
    	<input name = "m_radio_24" id="4_24_4"   class = "input-3"type = "radio"/><label for="4_24_4">4</label>
    	<input name = "m_radio_24" id="4_24_5"   class = "input-3"type = "radio"/><label for="4_24_5">5</label>
    	<input name = "m_radio_24" id="4_24_6"    class = "input-3"type = "radio"/><label for="4_24_6">6</label>
    	<input name = "m_radio_24" id="4_24_7"   class = "input-3"type = "radio"/><label for="4_24_7">7</label></td>     </tr>

    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_24"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>25.	我对公司的团队合作精神感到满意。</td>
<td><input name = "m_radio_25" id="4_25_1"  class = "input-3"type = "radio"/><label for="4_25_1">1</label>
    	<input name = "m_radio_25" id="4_25_2"  class = "input-3"type = "radio"/><label for="4_25_2">2</label>
    	<input name = "m_radio_25" id="4_25_3"  class = "input-3"type = "radio"/><label for="4_25_3">3</label>
    	<input name = "m_radio_25" id="4_25_4"   class = "input-3"type = "radio"/><label for="4_25_4">4</label>
    	<input name = "m_radio_25" id="4_25_5"   class = "input-3"type = "radio"/><label for="4_25_5">5</label>
    	<input name = "m_radio_25" id="4_25_6"    class = "input-3"type = "radio"/><label for="4_25_6">6</label>
    	<input name = "m_radio_25" id="4_25_7"   class = "input-3"type = "radio"/><label for="4_25_7">7</label></td>     </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_25"/>
    </td>
   </tr>
                                  <!-- WELL DONE -->
                                      <tr>
    <td  colspan=2><b>对公司的满意度</b></td>
   </tr>
   <tr>
    <td align = left>26.	公司制定的各项管理制度合理。</td>
<td><input name = "m_radio_26" id="4_26_1"  class = "input-3"type = "radio"/><label for="4_26_1">1</label>
    	<input name = "m_radio_26" id="4_26_2"  class = "input-3"type = "radio"/><label for="4_26_2">2</label>
    	<input name = "m_radio_26" id="4_26_3"  class = "input-3"type = "radio"/><label for="4_26_3">3</label>
    	<input name = "m_radio_26" id="4_26_4"   class = "input-3"type = "radio"/><label for="4_26_4">4</label>
    	<input name = "m_radio_26" id="4_26_5"   class = "input-3"type = "radio"/><label for="4_26_5">5</label>
    	<input name = "m_radio_26" id="4_26_6"    class = "input-3"type = "radio"/><label for="4_26_6">6</label>
    	<input name = "m_radio_26" id="4_26_7"   class = "input-3"type = "radio"/><label for="4_26_7">7</label></td>     </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_26"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>27.	公司各项管理制度能够得到严格执行，在执行过程中保证了公平性。</td>
<td><input name = "m_radio_27" id="4_27_1"  class = "input-3"type = "radio"/><label for="4_27_1">1</label>
    	<input name = "m_radio_27" id="4_27_2"  class = "input-3"type = "radio"/><label for="4_27_2">2</label>
    	<input name = "m_radio_27" id="4_27_3"  class = "input-3"type = "radio"/><label for="4_27_3">3</label>
    	<input name = "m_radio_27" id="4_27_4"   class = "input-3"type = "radio"/><label for="4_27_4">4</label>
    	<input name = "m_radio_27" id="4_27_5"   class = "input-3"type = "radio"/><label for="4_27_5">5</label>
    	<input name = "m_radio_27" id="4_27_6"    class = "input-3"type = "radio"/><label for="4_27_6">6</label>
    	<input name = "m_radio_27" id="4_27_7"   class = "input-3"type = "radio"/><label for="4_27_7">7</label></td>        </tr>
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_27"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>28.	我认同公司的企业文化。</td>
<td><input name = "m_radio_28" id="4_28_1"  class = "input-3"type = "radio"/><label for="4_28_1">1</label>
    	<input name = "m_radio_28" id="4_28_2"  class = "input-3"type = "radio"/><label for="4_28_2">2</label>
    	<input name = "m_radio_28" id="4_28_3"  class = "input-3"type = "radio"/><label for="4_28_3">3</label>
    	<input name = "m_radio_28" id="4_28_4"   class = "input-3"type = "radio"/><label for="4_28_4">4</label>
    	<input name = "m_radio_28" id="4_28_5"   class = "input-3"type = "radio"/><label for="4_28_5">5</label>
    	<input name = "m_radio_28" id="4_28_6"    class = "input-3"type = "radio"/><label for="4_28_6">6</label>
    	<input name = "m_radio_28" id="4_28_7"   class = "input-3"type = "radio"/><label for="4_28_7">7</label></td>     </tr> 
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_28"/>
    </td>
   </tr>
    
   <tr>
    <td align = left>29.	我喜欢公司的工作氛围。</td>
<td><input name = "m_radio_29" id="4_29_1"  class = "input-3"type = "radio"/><label for="4_29_1">1</label>
    	<input name = "m_radio_29" id="4_29_2"  class = "input-3"type = "radio"/><label for="4_29_2">2</label>
    	<input name = "m_radio_29" id="4_29_3"  class = "input-3"type = "radio"/><label for="4_29_3">3</label>
    	<input name = "m_radio_29" id="4_29_4"   class = "input-3"type = "radio"/><label for="4_29_4">4</label>
    	<input name = "m_radio_29" id="4_29_5"   class = "input-3"type = "radio"/><label for="4_29_5">5</label>
    	<input name = "m_radio_29" id="4_29_6"    class = "input-3"type = "radio"/><label for="4_29_6">6</label>
    	<input name = "m_radio_29" id="4_29_7"   class = "input-3"type = "radio"/><label for="4_29_7">7</label></td>     </tr>   
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_29"/>
    </td>
   </tr>
   <tr>
   
   </tr>
   
   <tr>
    <td align = left>30.	我认为公司能留住表现出色的员工。</td>
<td><input name = "m_radio_30" id="4_30_1"  class = "input-3"type = "radio"/><label for="4_30_1">1</label>
    	<input name = "m_radio_30" id="4_30_2"  class = "input-3"type = "radio"/><label for="4_30_2">2</label>
    	<input name = "m_radio_30" id="4_30_3"  class = "input-3"type = "radio"/><label for="4_30_3">3</label>
    	<input name = "m_radio_30" id="4_30_4"   class = "input-3"type = "radio"/><label for="4_30_4">4</label>
    	<input name = "m_radio_30" id="4_30_5"   class = "input-3"type = "radio"/><label for="4_30_5">5</label>
    	<input name = "m_radio_30" id="4_30_6"    class = "input-3"type = "radio"/><label for="4_30_6">6</label>
    	<input name = "m_radio_30" id="4_30_7"   class = "input-3"type = "radio"/><label for="4_30_7">7</label></td>     </tr>  
    <!-- 说明输入 -->
   <tr>
    <td style = "text-align:left;" colspan = 2>
          说明 <input style = "width:95%;height:23px;font-family:Microsoft YaHei;font-size:100%;
						border-bottom:1px black solid;
						border-left-style:none;
						border-right-style:none;
						border-top-style:none;
						background-color:#F2F7F9;" type = "text" id="subb_30"/>
    </td>
   </tr>
        
   
   </table>
   </div>
  
   
			<!-- 最后一题 -->
			<div class = "lastquestion"style = "color:#34352C;font-family:Microsoft YaHei;" >
				<b>三、	为了您和公司更好的发展，您对公司有哪些期望和建议？</b><br /><br />
				<textarea  class = "inpu"  id="5_1_null" ></textarea>
				</div>
				<!-- 提交按钮 -->
				<div style="width: 85%; margin:0 auto;  position: relative; z-index: 5">
				<br />
					<table class="tb"style = "border:none;"align="center">
						<tr>
							<td align = "right">
								<input type="reset" onclick="if(confirm('您确定清空所有答案？')){questionnaire.reset();}return false;" value="重置">
								<input type="button"  value="提交" onclick="dataHandling()">
							</td>
						</tr>
					</table>
				</div> 
				</form>
		</div>
		<!-- 开发者信息 -->
			<div style = "background-color:EFF0DC;width:90%;padding:20px; margin: 0 auto;">
			<div align = center style = "padding-left:10%;color:#34352C;font-size:13px;font-family:Microsoft YaHei;width:85%" >匿名承诺<br/>本次调查采取匿名收集数据，我们非常重视您的合理建议，请您不要有任何顾虑配合填写以下内容 </div>
			 
			</div>
					
					
				
	</body>
</html>
