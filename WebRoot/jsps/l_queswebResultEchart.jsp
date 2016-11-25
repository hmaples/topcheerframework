<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>上海天正员工满意度调查统计结果</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="js/s_display.js"></script>
<script src="js/scoreresult.js"></script>


<link rel="stylesheet" type="text/css" href="css/result.css">

<!-- 引入 ECharts 文件 -->
    <script src="js/echarts.js"></script>

</head>

<body>
	<h2 align="center">上海天正员工满意度调查统计结果</h2>
	<table border=1 align="center" width=80%>
		<tr>
			<td align="center" onclick="display(1)">多选题统计结果
			<td align="center" onclick="display(2)">单选题统计结果
			<td align="center" onclick="display(3)">偏向选择统计结果
			<td align="center" onclick="display(4)">员工期望与建议</td>
			<td align="center" onclick="display(5)">数据导出</td>
		</tr>
	</table>
	<p />


	<div id="result1" name="resulttable" style="display:block" align="center">
		1、	目前，我认为最满意的方面是：<br/>
		<div id="multiple-choiceResult1" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>
		2、	目前，我觉得需要改进的方面是：<br/>
		<div id="multiple-choiceResult2" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>
		3、 我觉得制约我取得优异工作业绩的最大因素是<br/>
		<div id="multiple-choiceResult3" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>

	</div>

	
	
	


	<div id="result2" name="resulttable" style="display:none" align="center">

<!-- 		<table border=1 align="center" width=85%>
			<tr>
				<td align="center">部门</td>
				<td align="center">自己的才能在目前岗位是否得以发挥</td>
				<td align="center">目前的工作积极性</td>
				<td align="center">在天正公司的发展空间</td>
				<td align="center">会留在天正公司，即使其他的公司有类似的空缺</td>
			</tr>
			<tr>
				<td align="center">开发交付中心</td>
				<td align="center">已充分发挥</td>
				<td align="center">基本调动起来</td>
				<td align="center">很大</td>
				<td align="center">继续留在公司</td>
			</tr>
		</table><br/><br/><br/> -->
		
				4、 我认为自己的才能在目前岗位是否得以发挥<br/>
		<div id="single-choiceResult1" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>
				5、 我认为目前的工作积极性为<br/>
		<div id="single-choiceResult2" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>
				6、我认为在天正公司的发展空间是<br/>
		<div id="single-choiceResult3" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>
				7、我会留在天正公司，即使其他的公司有类似的空缺<br/>
		<div id="single-choiceResult4" style="width: 1200px;height:450px;"></div>
		<script src="js/l_resultEchart.js"></script><p/><br/><br/>
	
	</div><br/><br/>
				



	<div id="result3" name="resulttable" style="display:none">
		<table border="1" align="center" width=85%>
			<tr>
				<td onclick="display2(1)">对工作本身的满意度</td>
				<td onclick="display2(2)">对工作回报的满意度</td>
				<td onclick="display2(3)">对工作指导的满意度</td>
				<td onclick="display2(4)">对技能提升的满意度</td>
				<td onclick="display2(5)">对工作群体的满意度</td>
				<td onclick="display2(6)">对公司的满意度</td>
			</tr>
		</table>
		<br />

		<div id="ques21" name="ques2table" style="display:block" width=85%>

 			<table border="1px" width=85% align="center">
				<tr>
					<td colspan="6" class="smalltd">1. 我清楚自身的工作职责与任务。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">2. 我清楚自身的工作内容和流程。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">3. 当前的工作职责和任务是根据我的能力设定的。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">4. 当前的工作内容会促使我的能力不断提高。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">5. 当前的工作内容与我的期望相符，工作起来踏实。</td>
				</tr>

				<tr>
					<td width=25%>部门</td>
					<td>问题1分值</td>
					<td>问题2分值</td>
					<td>问题3分值</td>
					<td>问题4分值</td>
					<td>问题5分值</td>
				</tr>

				<tr>
					<td width=25%>行业客户部</td>
					<td>1</td>
					<td>2</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>行政人事部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付三部</td>
					<td>1</td>
					<td>1</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>市场营销中心</td>
					<td>1</td>
					<td>3</td>
					<td>3</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>产品研发部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>

			</table>

		</div>

		<div id="ques22" name="ques2table" style="display:none" width=85%>

			<table border="1px" width=85% align="center">
				<tr>
					<td colspan="6" class="smalltd">6. 我认为我的薪酬与当前的工作职责关系密切。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">7. 我的业绩能对我的收入产生重大影响。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">8. 就我的业绩和能力而言，我认为目前的薪资水平是公平的。
					</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">9. 与外单位同行相比，我对自己的收入感觉很满意。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">10. 当我的工作业绩十分突出，公司会给予更大的发展空间。
					</td>
				</tr>

				<tr>
					<td width=25%>部门</td>
					<td>问题1分值</td>
					<td>问题2分值</td>
					<td>问题3分值</td>
					<td>问题4分值</td>
					<td>问题5分值</td>
				</tr>

				<tr>
					<td width=25%>开发交付中心</td>
					<td>4</td>
					<td>1</td>
					<td>2</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>解决方案中心</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付三部</td>
					<td>1</td>
					<td>1</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>资产财务部</td>
					<td>1</td>
					<td>3</td>
					<td>1</td>
					<td>3</td>
					<td>1</td>
				</tr>
				<tr>
					<td width=25%>产品研发部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>

			</table>

		</div>

		<div id="ques23" name="ques2table" style="display:none" width=85%>

			<table border="1px" width=85% align="center">
				<tr>
					<td colspan="6" class="smalltd">11.
						我的上级能合理明确地给我设定工作目标以及目标达成标准。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">12. 我在工作过程中能够得到上级的跟踪和指导。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">13. 我的上级向我采用开放而诚恳的沟通方式。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">14. 我的上级在工作中会采纳我的合理意见和建议。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">15.
						我认为绩效评估结果在现行的工作指导方式下有助于提高我的绩效。</td>
				</tr>

				<tr>
					<td width=25%>部门</td>
					<td>问题1分值</td>
					<td>问题2分值</td>
					<td>问题3分值</td>
					<td>问题4分值</td>
					<td>问题5分值</td>
				</tr>

				<tr>
					<td width=25%>资产财务部</td>
					<td>1</td>
					<td>3</td>
					<td>1</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>大客户部</td>
					<td>1</td>
					<td>3</td>
					<td>3</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付三部</td>
					<td>3</td>
					<td>1</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>市场营销中心</td>
					<td>1</td>
					<td>3</td>
					<td>1</td>
					<td>2</td>
					<td>1</td>
				</tr>
				<tr>
					<td width=25%>产品研发部</td>
					<td>2</td>
					<td>3</td>
					<td>3</td>
					<td>2</td>
					<td>2</td>
				</tr>

			</table>

		</div>
		<div id="ques24" name="ques2table" style="display:none" width=85%>

			<table border="1px" width=85% align="center">
				<tr>
					<td colspan="6" class="smalltd">16. 我所在的部门会经常开展多样化培训或技术交流活动。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">17. 公司会根据业务特性开展有针对性的通用培训课程。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">18. 我认为现有的培训能有效地提高专业技能。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">19.
						我满意公司培训的组织形式。（场地、授课方式、时间安排等）</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">20. 我认为公司非常重视员工培训。</td>
				</tr>

				<tr>
					<td width=25%>部门</td>
					<td>问题1分值</td>
					<td>问题2分值</td>
					<td>问题3分值</td>
					<td>问题4分值</td>
					<td>问题5分值</td>
				</tr>

				<tr>
					<td width=25%>运营管理部</td>
					<td>1</td>
					<td>2</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>行政人事部</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付三部</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付一部</td>
					<td>1</td>
					<td>2</td>
					<td>1</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>产品研发部</td>
					<td>1</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>3</td>
				</tr>

			</table>

		</div>

		<div id="ques25" name="ques2table" style="display:none" width=85%>

			<table border="1px" width=85% align="center">
				<tr>
					<td colspan="6" class="smalltd">21. 我的同事能毫无保留地分享、传授自己的成功经验。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">22. 我可以获取必要的信息和资料，以便于顺利开展工作。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">23. 我所在的部门能够发挥集体作用，相互支持完成组织目标。
					</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">24. 为完成同一目标，不同部门的同事能紧密合作。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">25. 我对公司的团队合作精神感到满意。</td>
				</tr>

				<tr>
					<td width=25%>部门</td>
					<td>问题1分值</td>
					<td>问题2分值</td>
					<td>问题3分值</td>
					<td>问题4分值</td>
					<td>问题5分值</td>
				</tr>

				<tr>
					<td width=25%>行业客户部</td>
					<td>1</td>
					<td>2</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>行政人事部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付一部</td>
					<td>1</td>
					<td>1</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>市场营销中心</td>
					<td>1</td>
					<td>3</td>
					<td>3</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>产品研发部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>

			</table>

		</div>
		<div id="ques26" name="ques2table" style="display:none" width=85%>

			<table border="1px" width=85% align="center">
				<tr>
					<td colspan="6" class="smalltd">26. 公司制定的各项管理制度合理。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">27.
						公司各项管理制度能够得到严格执行，在执行过程中保证了公平性。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">28. 我认同公司的企业文化。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">29. 我喜欢公司的工作氛围。</td>
				</tr>
				<tr>
					<td colspan="6" class="smalltd">30. 我认为公司能留住表现出色的员工。</td>
				</tr>

				<tr>
					<td width=25%>部门</td>
					<td>问题1分值</td>
					<td>问题2分值</td>
					<td>问题3分值</td>
					<td>问题4分值</td>
					<td>问题5分值</td>
				</tr>

				<tr>
					<td width=25%>行业客户部</td>
					<td>1</td>
					<td>2</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>行政人事部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>交付三部</td>
					<td>1</td>
					<td>1</td>
					<td>5</td>
					<td>1</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>市场营销中心</td>
					<td>1</td>
					<td>3</td>
					<td>3</td>
					<td>2</td>
					<td>2</td>
				</tr>
				<tr>
					<td width=25%>产品研发部</td>
					<td>2</td>
					<td>3</td>
					<td>5</td>
					<td>2</td>
					<td>2</td>
				</tr>

			</table>

		</div>
		</div>
	<div id="result4" name="resulttable" style="display:none">
	<h3 align="center">员工的期望与建议汇总</h3>
		<table border="1px" width=60% align="center">
		<tr>
			<td colspan="6" class="smalltd">为客户创造价值</td>
		</tr>
		<tr>
			<td colspan="6" class="smalltd">为社会创造进步</td>
		</tr>
		<tr>
			<td colspan="6" class="smalltd">为广大客户提供及时、周到、专业、优质、一流的产品、技术和服务。</td>
		</tr>
		<tr>
			<td colspan="6" class="smalltd">上海天正信息科技有限公司是浙江天正信息科技有限公司（前身为浙江省计算技术研究所，省内最早从事计算机技术及应用开发的专业研究所）在上海设立的，面向上海及周边地区用户的IT公司。公司凭借雄厚的技术实力和优质的客户服务，赢得了大量客户的广泛信任与支持。公司正处于一个稳健、高速发展的势态，公司先后设立了浙江办事处，山东办事处，江苏办事处、成都办事处等机构。
</td>
		</tr>
		</table>
	</div>
	
	
	<div id="result5" name="resulttable" style="display:none">
    <h2 align="center">
    <form action="downLoadCommon.do" method="post">  
		<input type="hidden" name="actionNum" value = "downLoad">
		<input type="submit" value="导出数据" />
	</form> 
    </h2>
	</div>











</body>
</html>
