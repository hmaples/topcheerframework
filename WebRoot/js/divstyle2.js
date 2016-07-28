//以下五个变量为DIV拖动使用变量
var bDrag = false;
var disX = disY = 0;
var panel = "";
var title = "";
var titleStr = "";
var mainHeader = "";
$(function() {
	//鼠标按下时计算DIV相对位置
   	$("#title,#titleDetail,#titleConfig,#titleOrder,#titleOrder2,#title_tcSystem,#title_tcOrg,#title_tcUser," +
   			"#title_tcTask,#title_businessUser,#title_tcFrontfunc,#title_tcRole,#cpy_title_tcRole," +
   			"#task_title_tcRole,#func_title_tcRole,#org_title_tcRole").mousedown(function() {
		var event = event || window.event;
        bDrag = true;
        disX = event.clientX - panel.offsetLeft;
        disY = event.clientY - panel.offsetTop;
        this.setCapture && this.setCapture();
	});
	//鼠标移动时计算DIV的相对位置
   	document.onmousemove = function(event) {
        if(!bDrag) return;
        var event = event || window.event;
        var scollWidth = document.body.offsetWidth - document.body.clientWidth;//滚动条宽度
        var scollHeight = document.body.offsetHeight - document.body.clientHeight;
        var maxWidth = document.body.offsetWidth - scollWidth - panel.offsetWidth;//最大移动宽度
        var maxHeight = document.body.offsetHeight - scollHeight - panel.offsetHeight;//最大移动高度
        var maxHeight = document.body.offsetHeight - panel.offsetHeight;//最大移动高度
        var minHeight = mainHeader.clientHeight;//最小移动高度
        var leftWidth = event.clientX - disX > maxWidth ? maxWidth : event.clientX - disX;
        var topHeight = event.clientY - disY > maxHeight ? maxHeight : event.clientY - disY;
        topHeight = topHeight < minHeight ? minHeight : topHeight;
        leftWidth = leftWidth < 0 ? 0 : leftWidth;
        topHeight = topHeight < 0 ? 0 : topHeight;
        panel.style.marginTop = panel.style.marginLeft = 0;
        panel.style.left = leftWidth + "px";//DIV相对左边宽度
        panel.style.top = topHeight + "px";//DIV相对顶端高度
        return false;
    };
    //鼠标松开时DIV停止移动
    document.onmouseup = window.onblur = title.onlosecapture = function() {
        bDrag = false;
        title.releaseCapture && title.releaseCapture();
    };
});

function panelchange(p, t) {
	panel = document.getElementById(p);
	title = document.getElementById(t);
	mainHeader = document.getElementById("main-header");//main-header为main-header.jsp中最外层div容器的id
	//var tmp = document.body.offsetHeight - panel.offsetHeight;
	//alert(tmp);
	//var top = tmp < 300 ? tmp : 300;
	panel.style.left = "400px";
   	panel.style.top = "300px";
}

