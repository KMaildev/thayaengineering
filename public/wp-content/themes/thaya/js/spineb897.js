$(document).ready(function(){
			var slider = $("#spinemain, body");
			$('.hamburger').on('click',function(){
				if($(".menu").hasClass('expand')){
					$(".menu").addClass('collapse');
					$(".menu").removeClass('expand');
					$(slider).vegas('play');
					$(".arrow").addClass('show').removeClass('hidden');
					$(".project-info").addClass('show').removeClass('hidden');
					$(".container").addClass('show').removeClass('hidden');
					$("#footer").addClass('show').removeClass('hidden');
					$("#gallery").addClass('show').removeClass('hidden');
				}else{
					$(".menu").addClass('expand');
					$(".menu").removeClass('collapse');
					$(slider).vegas('pause');
					$(".arrow").addClass('hidden').removeClass('show');
					$(".project-info").addClass('hidden').removeClass('show');
					$(".container").addClass('hidden').removeClass('show');
					$("#footer").addClass('hidden').removeClass('show');
					$("#gallery").addClass('hidden').removeClass('show');
				}
			});
			var count =  $("#carousel ul li").length;
				var width = $("#carousel ul li").width();
					$("#carousel ul").css('width',((count+1)*width) + "px");
			$(".arrow").on('click',function(){
				
				$(slider).vegas($(this).attr('rel'));

			});

		});