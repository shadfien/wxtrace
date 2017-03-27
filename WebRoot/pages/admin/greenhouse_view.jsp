

<div class="pageContent">
	
	<div id="w_list_print">
	<table class="list" width="98%" targetType="navTab" asc="asc" desc="desc" layoutH="116">
		<thead>
			<tr>
				<th>地块编号</th>
				<th>地块面积</th>
				<th>地块类型</th>
				<th>地块描述</th>
				<th>位置</th>
				<th>当前负责人</th>
				<th>修改</th> 
			</tr>
			
		</thead>
		<tbody id="allgreenhouses">
			
		</tbody>
	</table>
	</div>
</div>
<script type="text/javascript">

					$.ajax({
							cache: false,
						    type: "POST",
							url: "greenhouseAction!findAllGreenhouse.action",
						    data:"",
						    dataType:'json',  
						    async: false,
						    error: function(request) {
						        alert("Connection error");
						    },
							success: function(data){
									$.each(data.greenhouses,function(i,item){
										$("#allgreenhouses").append(
											"<tr>"+
												"<td>"+item.name+"</td>"+
												"<td>"+ifnull(item.mj)+"</td>"+
												"<td>"+ifnull(item.px)+"</td>"+
												"<td>"+ifnull(item.jg)+"</td>"+
												"<td>"+ifnull(item.wz)+"</td>"+
												"<td>"+ifnull(item.fzr.realName)+"</td>"+
												"<td><a class='button' href='pages/admin/greenhouse_modify.jsp?id="+item.id+"' target='dialog' rel='greenhouse_modify' title='地块信息修改'><span>修改</span></a></td>"+
											"</tr>"
										);
									});
								}
						});  

</script>
