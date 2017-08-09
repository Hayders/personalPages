window.onload = function init(){
	
	var data = $.ajax({
		type : "GET",
		url : getRootPath_web() + '/climax/getRecentHotMoives',
		contentType : "application/json; charset=utf-8",
		dataType : "json",
		success : function(hotMovies){
			
		},
		error : function(){
			
		}
	});
};