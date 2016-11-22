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
		
	<link rel="stylesheet" type="text/css" href="css/questionnaire.css">
	<script src="/topcheerframework/js/jquery-1.9.1.js" type="text/javascript"></script>
	<script type="text/javascript" src="/topcheerframework/js/surveySubmit.js"></script>

	</head>

	<body>
		<div
			class = "div-outside">
			<!-- 调查问卷头 -->
			<div
				class = "div-inside">
				<h1 class = "h1" style="font-family : Microsoft JhengHei">
					上海天正员工满意度调查问卷
				</h1>
				<p >
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
			<!-- 提交内容 -->
			<form id="questionnaire" action="commonAction" method="post">
				<input type="hidden" name="actionNum" value="" />
			<div
				class = "div-inside2" style = "font-family:MingLiU;" >
				<h2  style = "font-family:STHeiti Light">
					回答者信息
				</h2>
				<br />
				<b>1.年龄：</b>
				<br /><br />
				<input type="radio" name="age" id="1" value="1_6">
				25岁以下
				<input type="radio" name="age" id="1" value="1_7">
				25(含)-30岁
				<input type="radio" name="age" id="1" value="1_8">
				30(含)-40岁
				<input type="radio" name="age" id="1" value="1_9">
				40(含)岁以上
				<br />
				<br />
				<b>2.性别：</b>
				<br /><br />
				<input type="radio" name="sex" id="1" value="2_10">
				男
				<input type="radio" name="sex" id="1" value="2_11">
				女
				<br />
				<br />
				<b>3.学历层次：</b>
				<br /><br />
				<input type="radio" id="1" name="education" value="3_12">
				高中及以下（含职高）
				<input type="radio" id="1" name="education" value="3_13">
				大专
				<input type="radio" id="1" name="education" value="3_14">
				本科
				<input type="radio" id="1" name="education" value="3_15">
				硕士及以上
				<br />
				<br />
				<b>4.为本公司服务的年限：</b>
				<br /><br />
				<input type="radio" id="1" name="year" value="4_16">
				不足一年
				<input type="radio" id="1" name="year" value="4_17">
				满一年不足三年
				<input type="radio" id="1" name="year" value="4_18">
				满三年不足五年
				<input type="radio" id="1" name="year" value="4_19">
				满五年不足八年
				<input type="radio" id="1" name="year" value="4_20">
				八年以上
				<br />
				<br />
				<b>5.目前就职的部门：</b>
				<br />
				<ul>
					<li>
						天正信息<br /><br />
						<input type="radio" id="1" name="tcmessage" value="5_21">行业客户部
						<input type="radio" id="1" name="tcmessage" value="5_22">大客户部
						<input type="radio" id="1" name="tcmessage" value="5_23">解决方案部<br /><br />
						<input type="radio" id="1" name="tcmessage" value="5_24">技术支持中心
						<input type="radio" id="1" name="tcmessage" value="5_25">行政人事部
						<input type="radio" id="1" name="tcmessage" value="5_26">资产财务部
					</li><br />
					<li>
						天正软件<br /><br />
						<input type="radio" id="1" name="tcsoftware" value="5_27">开发交付中心 
						<input type="radio" id="1" name="tcsoftware" value="5_28">解决方案中心 <br><br />
						<input type="radio" id="1" name="tcsoftware" value="5_29">市场营销中心 
						<input type="radio" id="1" name="tcsoftware" value="5_30">运营管理部
					</li><br />
					<li>
						天正智能<br /><br />
						 <input type="radio" id="1" name="tcsmart" value="5_31">交付一部
						 <input type="radio" id="1" name="tcsmart" value="5_32">交付二部
						 <input type="radio" id="1" name="tcsmart" value="5_23">解决方案部
						 <input type="radio" id="1" name="tcsmart" value="5_33">产品研发部
					</li>
				</ul>
			</div><br />
			<!--多选题 -->
			<div class = "div-inside3" >
				<b>一、多选题（请选出您认为最符合实际的答案，每项最多可选3个）</b><br/><br />
				<b>1、	目前，我认为最满意的方面是：</b><br /><br/>
				<input type="checkbox" name="checkOne" id="3" value="1_34">公司前景
				<input type="checkbox" name="checkOne" id="3" value="1_35">锻炼与发展机会 
				<input type="checkbox" name="checkOne" id="3" value="1_36">薪酬福利 
				<input type="checkbox" name="checkOne" id="3" value="1_37">绩效管理 
				<input type="checkbox" name="checkOne" id="3" value="1_38">培训培养<br/><br/>
				<input type="checkbox" name="checkOne" id="3" value="1_39">职业方向 
				<input type="checkbox" name="checkOne" id="3" value="1_40">团队配合     
				<input type="checkbox" name="checkOne" id="3" value="1_41">奖惩机制
				<input type="checkbox" name="checkOne" id="3" value="1_42">工作认可 
				<input type="checkbox" name="checkOne" id="3" value="1_43">人际关系<br/><br/>
				<input type="checkbox" name="checkTwo" id="3" value="1_0">其他(请注明)
				<input type="text" name="checkOne" class = "line" >
				<br/><br/>
				<b>2、	目前，我觉得需要改进的方面是：</b><br /><br/>
				<input type="checkbox" name="checkTwo" id="3" value="2_34">公司前景
				<input type="checkbox" name="checkTwo" id="3" value="2_35">锻炼与发展机会 
				<input type="checkbox" name="checkTwo" id="3" value="2_36">薪酬福利 
				<input type="checkbox" name="checkTwo" id="3" value="2_37">绩效管理 
				<input type="checkbox" name="checkTwo" id="3" value="2_38">培训培养<br/><br/>
				<input type="checkbox" name="checkTwo" id="3" value="2_39">职业方向 
				<input type="checkbox" name="checkTwo" id="3" value="2_40">团队配合     
				<input type="checkbox" name="checkTwo" id="3" value="2_41">奖惩机制
				<input type="checkbox" name="checkTwo" id="3" value="2_42">工作认可 
				<input type="checkbox" name="checkTwo" id="3" value="2_43">人际关系<br/><br/>
				<input type="checkbox" name="checkTwo" id="3" value="2_0">其他(请注明)
				<input type="text"  class = "line">
				<br/><br/>
				<b>3、我觉得制约我取得优异工作业绩的最大因素是:</b><br /><br/>
				<input type="checkbox" name="checkThree" id="3" value="3_45">上级支持
				<input type="checkbox" name="checkThree" id="3" value="3_46">个人能力 
				<input type="checkbox" name="checkThree" id="3" value="3_47">部门配合
				<input type="checkbox" name="checkThree" id="3" value="3_48">工作氛围
				<input type="checkbox" name="checkThree" id="3" value="3_49">行业环境  
				<br/><br/>
				<b>单选题</b><br /><br/>
				<b>4、我认为自己的才能在目前岗位是否得以发挥:</b><br/><br />
				<input type="radio" name="radioFour" id="2" value="4_50">完全没有发挥
				<input type="radio" name="radioFour" id="2" value="4_51">有些方面没有发挥
				<input type="radio" name="radioFour" id="2" value="4_52">发挥尚可 
				<input type="radio" name="radioFour" id="2" value="4_53">已充分发挥
				<br/><br/>
				<b>5、我认为目前的工作积极性为:</b><br/><br />
				<input type="radio" name="radioFive" id="2" value="5_54">基本调动起来
				<input type="radio" name="radioFive" id="2" value="5_55">一般
				<input type="radio" name="radioFive" id="2" value="5_56">基本没有
				<input type="radio" name="radioFive" id="2" value="5_57">完全没有
				<br/><br/>
				<b>6、我认为在天正公司的发展空间是：</b><br/><br/>
				<input type="radio" name="radioSix" id="2" value="6_58">很大
				<input type="radio" name="radioSix" id="2" value="6_59">比较大
				<input type="radio" name="radioSix" id="2" value="6_60">不大
				<input type="radio" name="radioSix" id="2" value="6_61">没有空间
				<br/><br/>
				<b>7、我会留在天正公司，即使其他的公司有类似的空缺：</b><br/><br/>
				<input type="radio" name="radioSeven" id="2" value="7_62">继续留在公司
				<input type="radio" name="radioSeven" id="2" value="7_63">不确定
				<input type="radio" name="radioSeven" id="2" value="7_64">已经在寻找其他机会
				<br/><br/>
			</div>
			<!-- 偏向选择 -->
			<div  class = "div-inside4" >
			<b>二、偏向选择（分值范围为1-7分，其中1分为“非常满意”，3分为比较满意，5分为“不满意”，7分为“极其不满意”，请在空格内填写具体分值。如果您的打分为5-7分，
			请务必在说明栏中说明原因，以便我们能做进一步的改善。）</b><br/><br/>
			<table class = "table" border = 1 cellspacing = "0"cellpadding = "0" bordercolor="black">
				<tr align="center">
					<td colspan="2">问题描述</td>
					<td>分值</td>
					<td>说明</td>
				</tr>
				
				<!-- 一 -->
				<tr>
					<td rowspan="5" width=4%>对工作本身的满意度</td>
					<td width=50%>1.	我清楚自身的工作职责与任务。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>2.	我清楚自身的工作内容和流程。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>3.	当前的工作职责和任务是根据我的能力设定的</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>4.	当前的工作内容会促使我的能力不断提高</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					<td>5.	当前的工作内容与我的期望相符，工作起来踏实。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<!-- 二 -->
				<tr>
					<td rowspan="5" width=4%>对工作回报的满意度</td>
					<td width=50%>6.  我认为我的薪酬与当前的工作职责关系密切。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>7.  我的业绩能对我的收入产生重大影响。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>8.  当前的工作职责和任务是根据我的能力设定的</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>9.	就我的业绩和能力而言，我认为目前的薪资水平是公平的。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>10.	当我的工作业绩十分突出，公司会给予更大的发展空间。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<!-- 三 -->
				<tr>
					<td rowspan="5" width=4%>对工作指导的满意度</td>
					<td width=50%>11.	我的上级能合理明确地给我设定工作目标以及目标达成标准。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>12.	我在工作过程中能够得到上级的跟踪和指导。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>13.	我的上级向我采用开放而诚恳的沟通方式。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>14.	我的上级在工作中会采纳我的合理意见和建议。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>15.	我认为绩效评估结果在现行的工作指导方式下有助于提高我的绩效。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<!-- 四 -->
				<tr>
					<td rowspan="5" width=4%>对技能提升的满意度</td>
					<td width=50%>16.	我所在的部门会经常开展多样化培训或技术交流活动。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>17.	公司会根据业务特性开展有针对性的通用培训课程。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>18.	我认为现有的培训能有效地提高专业技能。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>19.	我满意公司培训的组织形式。（场地、授课方式、时间安排等）</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>20.	我认为公司非常重视员工培训。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<!-- 五 -->
				<tr>
					<td rowspan="5" width=4%>对工作群体的满意度</td>
					<td width=50%>21.	我的同事能毫无保留地分享、传授自己的成功经验。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>22.	我可以获取必要的信息和资料，以便于顺利开展工作。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>23.	我所在的部门能够发挥集体作用，相互支持完成组织目标。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>24.	为完成同一目标，不同部门的同事能紧密合作。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>25.	我对公司的团队合作精神感到满意。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<!--六 -->
				<tr>
					<td rowspan="5" width=4%>对公司的满意度</td>
					<td width=50%>26.	公司制定的各项管理制度合理。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>27.	公司各项管理制度能够得到严格执行，在执行过程中保证了公平性。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>28.	我认同公司的企业文化。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>29.	我喜欢公司的工作氛围。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
				<tr>
					
					<td>30.	我认为公司能留住表现出色的员工。</td>
					<td width=20%><select><option>1</option><option>2</option><option>3</option><option>5</option><option>6</option><option>7</option></select></td>
					<td ><input type="text" width=100% height=100%/></td>
				</tr>
			</table>
			</div><br/><br />
			<!-- 最后一题 -->
			<div class = "lastquestion" >
				<b>三、	为了您和公司更好的发展，您对公司有哪些期望和建议？</b><br /><br />
				<textarea  class = "inpu" rows="10" cols="100" id="5"></textarea>
				</div>
				<!-- 提交按钮 -->
				<div style="width: 70%; margin:0 auto;  position: relative; z-index: 5">
				<br />
					<table align="center">
						<tr>
							<td>
								<input type="reset" value="重置">
								<input type="button"  value="提交" onclick="dataHandling()">
							</td>
						</tr>
					</table>
				</div> 
				</form>
		</div>
	</body>
</html>
