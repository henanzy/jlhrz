

var tem=""
	
/*$.ajax({
	url : "https://www.tianqiapi.com/api/", 
	async : false,
	dataType : "json",
	data : {
		
	},
	success : function(data) {
	tem=data.data[0].tem;
	tem="<tr>"+
                    	"<th style='font-size:17px;color:white;'> &nbsp;&nbsp;实时温度:</th>"+
                    	"<th style='font-size:17px;color:white;'>&nbsp;&nbsp;"+data.data[0].tem+"</th>"+
                    	"</tr>"
	$("#tab").html(tem);
	}

});*/


var a=self.setInterval("clock()",3600000);
function clock()
{
	/*$.ajax({
		url : "https://www.tianqiapi.com/api/", 
		async : false,
		dataType : "json",
		data : {
			
		},
		success : function(data) {
		 tem=data.data[0].tem;
		
		
		}

	});
	$("#sswd").text(tem);*/
	}
