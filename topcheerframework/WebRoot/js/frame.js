	$(function(){

		//快捷菜单
		bindQuickMenu();

		//菜单切换(测试)
		bindAdminMenu();
		ChangeNav("jg");

		//菜单开关
		LeftMenuToggle();

		//全部功能开关
		AllMenuToggle();

		//取消菜单链接虚线
		$(".head").find("a").click(function(){$(this).blur()});
		$(".menu").find("a").click(function(){$(this).blur()});

         //展开关闭面板
		 expand();
        

	}).keydown(function(event){//快捷键
		if(event.keyCode ==116 ){
			url = $("#main").attr("src");
			main.location.href = url;
			return false;
		}
		if(event.keyCode ==27 ){
			$("#qucikmenu").slideToggle("fast")
		}
	});

	function bindQuickMenu(){//快捷菜单
		$("#ac_qucikmenu").bind("mouseenter",function(){
			$("#qucikmenu").slideDown("fast");
		}).dblclick(function(){
			$("#qucikmenu").slideToggle("fast");
		}).bind("mouseleave",function(){
			hidequcikmenu=setTimeout('$("#qucikmenu").slideUp("fast");',700);
			$(this).bind("mouseenter",function(){clearTimeout(hidequcikmenu);});
		});
		$("#qucikmenu").bind("mouseleave",function(){
			hidequcikmenu=setTimeout('$("#qucikmenu").slideUp("fast");',700);
			$(this).bind("mouseenter",function(){clearTimeout(hidequcikmenu);});
		}).find("a").click(function(){
			$(this).blur();
			$("#qucikmenu").slideUp("fast");
			$("#ac_qucikmenu").text($(this).text());
		});
	}


	function bindAdminMenu(){
		$("#nav").find("a").click(function(){
			ChangeNav($(this).attr("_for"));
		});

		$("#menu").find("dt").click(function(){
			dt = $(this);
			dd = $(this).next("dd");
			if(dd.css("display")=="none"){
				dd.slideDown("fast");
				dt.css("background-position","left bottom");
			}else{
				dd.slideUp("fast");
				dt.css("background-position","left top");
			}
		});

        /*
         * 判断target是否为main 为main将中间部分隐藏,并重置宽度,否则显示中间部分,并重置宽
         */
		$("#menu dd ul li a").click(function(){
			$(this).addClass("thisclass").blur().parents("#menu").find("ul li a").not($(this)).removeClass("thisclass");
            var target = $(this).attr("target");
            if(target == "main"){
                $(".center").hide();
                $(".right .close_bar").show();
                $(".right").width($(window).width() - 190);
            } else {
                $("#main").attr("src","blank.html");
                $(".center").show();
                var width = $(window).width();
                var right = (width - 187) * 0.8;
                var center = (width - 187) * 0.2;
                $(".center").width(center);
                $(".right").width(right);
                $(".center .close_bar").show();
                $(".right .close_bar").show();
            }
		});
	}

	function ChangeNav(nav){//菜单跳转
        $("#main").attr("src","blank.html");
        $(".right .close_bar").hide();
        $(".center .close_bar").hide()
		$("#nav").find("a").removeClass("thisclass");
		$("#nav").find("a[_for='"+nav+"']").addClass("thisclass").blur();
		$("body").attr("class","showmenu");
		$("#menu").find("div[id^=items]").hide();
		$("#menu").find("#items_"+nav).show().find("dl dd").show().find("ul li a").removeClass("thisclass");
		$("#menu").find("#items_"+nav).show().find("dd ul li a").eq(0).addClass("thisclass").blur();
	}

	function LeftMenuToggle(){
		$("#togglemenu").click(function(){
			if($("body").attr("class")=="showmenu"){
				$("body").attr("class","hidemenu");
				$(this).html("显示菜单");
			}else{
				$("body").attr("class","showmenu");
				$(this).html("隐藏菜单");
			}
		});
	}

	function AllMenuToggle(){
		mask = $(".pagemask,.iframemask,.allmenu");
		$("#allmenu").click(function(){
				mask.show();
		});
		//mask.mousedown(function(){alert("123");});
		mask.click(function(){mask.hide();});
	}
	
	//展开关闭面板
	function expand(){
	   $('.center_close_gif').bind('click',function(){
			if($('.left:visible').length>0){
			   $('.left').hide('slow',function(){
                   $('body').removeClass('showmenu');
               });
			   $(this).addClass('expand-bar');
			}else{
				 $('.left').show('slow',function(){
                     $('body').addClass('showmenu');
                 });
			     $(this).removeClass('expand-bar');
			}
		});
        $('.right_close_gif').bind('click',function(){
			if($('.center:visible').length>0){
			   $('.center').hide('slow');
			   $(this).addClass('expand-bar');
			}else{
			     if($(this).attr('class') == 'right_close_gif'){
				   // $('.center_close_gif').addClass('expand-bar');
				    $('.left').hide('slow');
					$(this).addClass('expand-bar');  
				 }else{
				    if($('#dl_items_1_1 .thisclass').attr('target')=='tree'){
						 $('.center').show('slow');
						 $(this).removeClass('expand-bar');
						 $('.right').width('800px');
					}else if($('#dl_items_1_1 .thisclass').attr('target')=='main'){
						 
						$('.left').show('slow');
						$(this).removeClass('expand-bar');  
					}
					 
				 }
			}
		});

        $('a[target=tree]').bind('click',function(){
	     $('.right_close_gif').show();
	   });
	    $('a[target=main]').bind('click',function(){
	     $('.right_close_gif').show();
	   });
	}
