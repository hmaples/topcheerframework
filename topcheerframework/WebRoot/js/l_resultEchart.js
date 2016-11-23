var multipleChoiceResult1 = echarts.init(document.getElementById('multiple-choiceResult1')); 
var multipleChoiceResult2 = echarts.init(document.getElementById('multiple-choiceResult2')); 
var multipleChoiceResult3 = echarts.init(document.getElementById('multiple-choiceResult3'));
var singleChoiceResult1 = echarts.init(document.getElementById('single-choiceResult1'));
var singleChoiceResult2 = echarts.init(document.getElementById('single-choiceResult2'));
var singleChoiceResult3 = echarts.init(document.getElementById('single-choiceResult3'));
var singleChoiceResult4 = echarts.init(document.getElementById('single-choiceResult4'));


var multipleChoiceResult1option = {
    color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            data : ['公司前景', '锻炼与发展机会', '薪酬福利 ', '绩效管理', '培训培养', '职业方向', '团队配合', '奖惩机制', '工作认可', '人际关系','其他'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'选择人数',
            type:'bar',
            barWidth: '60%',
            data:[10, 52, 200, 334, 390, 330, 220,100,201,182,15]
        }
    ]
};


var multipleChoiceResult2option = {
	    color: ['#3398DB'],
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            data : ['公司前景', '锻炼与发展机会', '薪酬福利 ', '绩效管理', '培训培养', '职业方向', '团队配合', '奖惩机制', '工作认可', '人际关系','其他'],
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'选择人数',
	            type:'bar',
	            barWidth: '60%',
	            data:[10, 200, 52, 390, 334, 220, 330,201,100,182,15]
	        }
	    ]
	};

var multipleChoiceResult3option = {
	    color: ['#3398DB'],
	    tooltip : {
	        trigger: 'axis',
	        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
	            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
	        }
	    },
	    grid: {
	        left: '3%',
	        right: '4%',
	        bottom: '3%',
	        containLabel: true
	    },
	    xAxis : [
	        {
	            type : 'category',
	            data : ['上级支持', '个人能力', '部门配合 ', '工作氛围', '行业环境'],
	            axisTick: {
	                alignWithLabel: true
	            }
	        }
	    ],
	    yAxis : [
	        {
	            type : 'value'
	        }
	    ],
	    series : [
	        {
	            name:'选择人数',
	            type:'bar',
	            barWidth: '60%',
	            data:[100, 200, 300, 340, 240]
	        }
	    ]
	};

var singleChoiceResult1option = {
		
			    tooltip : {
			        trigger: 'item',
			        formatter: "{a} <br/>{b} : {c} ({d}%)"
			    },
			    legend: {
			        orient: 'vertical',
			        left: 'left',
			        data: ['完全没有发挥','有些方面没有发挥','发挥尚可','已充分发挥']
			    },
			    series : [
			        {
			            name: '选择人数',
			            type: 'pie',
			            radius : '55%',
			            center: ['50%', '60%'],
			            data:[
			                {value:33, name:'完全没有发挥'},
			                {value:110, name:'有些方面没有发挥'},
			                {value:234, name:'发挥尚可'},
			                {value:380, name:'已充分发挥'}
			            ],
			            itemStyle: {
			                emphasis: {
			                    shadowBlur: 10,
			                    shadowOffsetX: 0,
			                    shadowColor: 'rgba(0, 0, 0, 0.5)'
			                }
			            }
			        }
			    ]
			};

var singleChoiceResult2option = {
		
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: ['基本调动起来','一般','基本没有','完全没有']
	    },
	    series : [
	        {
	            name: '选择人数',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:380, name:'基本调动起来'},
	                {value:210, name:'一般'},
	                {value:45, name:'基本没有'},
	                {value:33, name:'完全没有'}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	};


var singleChoiceResult3option = {
		
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: ['很大','比较大','不大','没有空间']
	    },
	    series : [
	        {
	            name: '选择人数',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:500, name:'很大'},
	                {value:90, name:'比较大'},
	                {value:45, name:'不大'},
	                {value:33, name:'没有空间'}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	};


var singleChoiceResult4option = {
		
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: ['继续留在公司','不确定','已经在寻找其他机会']
	    },
	    series : [
	        {
	            name: '选择人数',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:500, name:'继续留在公司'},
	                {value:90, name:'不确定'},
	                {value:45, name:'已经在寻找其他机会'}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	};

multipleChoiceResult1.setOption(multipleChoiceResult1option);
multipleChoiceResult2.setOption(multipleChoiceResult2option);
multipleChoiceResult3.setOption(multipleChoiceResult3option);
singleChoiceResult1.setOption(singleChoiceResult1option);
singleChoiceResult2.setOption(singleChoiceResult2option);
singleChoiceResult3.setOption(singleChoiceResult3option);
singleChoiceResult4.setOption(singleChoiceResult4option);

