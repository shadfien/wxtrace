

<h2 class="contentTitle">添加地块</h2>


<div class="pageContent">
	
	<form method="post" action="greenhouseAction!saveGreenhouse.action" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent nowrap" layoutH="97">
			<!-- 大棚编号（1-18）、大棚面积（长宽高）、棚型、结构（山墙高度、宽度、厚度）、负责人、位置、 -->
			
			<dl>
				<dt>大棚编号：</dt>
				<dd style="width:1000px;">
					<input style="width:300px;" type="text" name="greenhouse.name" min="1" max="18" class="required digits" alt="请输入大棚编号"/>
					<span class="info">大棚编号是01-18的数字</span>
				</dd>
			</dl>
			<dl>
				<dt>地块 面积：</dt>
				<dd style="width:1000px;">
					<input style="width:300px;" type="text" name="greenhouse.mj" alt="请输入大棚面积" value="100米；宽：100米；高：10米"/>
					<span class="info">大棚面积可用长宽高表示，如长：100米；宽：100米；高：10米</span>
				</dd>
			</dl>
			<dl>
				<dt>地块类型：</dt>
				<dd style="width:1000px;">
					<input style="width:300px;" type="text" name="greenhouse.px" value="拱棚"/>
					<span class="info">大棚棚型如：拱棚</span>
				</dd>
			</dl>
			<dl>
				<dt>地块描述：</dt>
				<dd style="width:1000px;">
					<input style="width:300px;" type="text" name="greenhouse.jg" value="山墙高度4米、宽度100米、厚度4米"/>
					<span class="info">土壤地质、宽度、厚度</span>
				</dd>
			</dl>
			<dl>
				<dt>大棚负责人：</dt>
				<dd style="width:1000px;">
					<!-- <input style="width:300px;" type="text" name="fzr"  alt="负责人"/> -->
					<select name="id" id="fzr">
						
					</select>
					<span class="info">负责人是已经在人员管理中添加的种植户</span>
				</dd>
			</dl>
			
			<dl>
				<dt>大棚位置：</dt>
				<dd style="width:1000px;">
					<input style="width:300px;" type="text" name="greenhouse.wz"/>
					<span class="info">大棚的位置</span>
				</dd>
			</dl>
			
			</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
				<li><div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div></li>
			</ul>
		</div>
	</form>
	
</div>
<script type="text/javascript">
					$.ajax({
							cache: false,
						    type: "POST",
							url: "userAction!findUserByUserType.action",
						    data:{userType:"zhongzhi"},
						    dataType:'json',  
						    async: false,
						    error: function(request) {
						        alert("Connection error");
						    },
							success: function(data){
									$.each(data.users,function(i,item){
										$("#fzr").append(
											"<option value="+item.id+">"+item.realName+"</option>"
										);
									});
								}
						});  

</script>
