        // 基于准备好的dom，初始化echarts实例
	for (i = 0; i < 8; i++) {
		var temp = 'main' + (i + 1);

        var myChart = echarts.init(document.getElementById(temp));

        // 指定图表的配置项和数据
        myChart.setOption({
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            series : [
                {
                    name: '评分',
                    type: 'pie',
                    radius: '55%',

                    data:[
                        {value:0, name:'1星'},
                        {value:1, name:'2星'},
                        {value:1, name:'3星'},
                        {value:5, name:'4星'},
                        {value:20, name:'5星'}
                    ]
                }
            ]
        })
	}
//        var option = {
//        	    title : {
//        	        text: '某站点用户访问来源',
//        	        subtext: '纯属虚构',
//        	        x:'center'
//        	    },
//        	    tooltip : {
//        	        trigger: 'item',
//        	        formatter: "{a} <br/>{b} : {c} ({d}%)"
//        	    },
//        	    legend: {
//        	        orient: 'vertical',
//        	        left: 'left',
//        	        data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
//        	    },
//        	    series : [
//        	        {
//        	            name: '访问来源',
//        	            type: 'pie',
//        	            radius : '55%',
//        	            center: ['50%', '60%'],
//        	            data:[
//        	                {value:335, name:'直接访问'},
//        	                {value:310, name:'邮件营销'},
//        	                {value:234, name:'联盟广告'},
//        	                {value:135, name:'视频广告'},
//        	                {value:1548, name:'搜索引擎'}
//        	            ],
//        	            itemStyle: {
//        	                emphasis: {
//        	                    shadowBlur: 10,
//        	                    shadowOffsetX: 0,
//        	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
//        	                }
//        	            }
//        	        }
//        	    ]
//        	};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

