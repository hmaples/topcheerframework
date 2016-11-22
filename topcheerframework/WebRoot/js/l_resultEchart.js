
var multipleChoiceResult1 = echarts.init(document.getElementById('multiple-choiceResult1')); 

var option = {
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
            data : ['公司前景', '锻炼与发展机会', '薪酬福利 ', '绩效管理', '培训培养', '职业方向', '团队配合', '奖惩机制', '工作认可', '人际关系'],
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
            data:[10, 52, 200, 334, 390, 330, 220,100,201,182]
        }
    ]
};
multipleChoiceResult1.setOption(option);

