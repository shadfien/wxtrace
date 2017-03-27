<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>姜老大蔬菜产业园溯源系统</title>
<link href="model.css" rel="stylesheet" type="text/css" />
<script>
	function mini() {

		var items = document.getElementsByName("category");
		var a = null;

		if (items[0].checked)
		// document.getElementById("node" + String(1)).innerHTML = "node1" + ":" + items[0].checked;
		// document.getElementById("node2" ).innerHTML = "node2" + ":" + items[1].checked;
		{
			a = items[0].value;

			document.getElementById('show_text').innerHTML = a;
		}

		else {
			a = '';
			document.getElementById('show_text').innerHTML = '';
		}

		if (items[1].checked) {
			a += '->' + items[1].value;

			document.getElementById('show_text').innerHTML = a;
		}

		if (items[2].checked) {
			a += '->' + items[2].value;

			document.getElementById('show_text').innerHTML = a;
		}

		if (items[3].checked) {
			a += '->' + items[3].value;

			document.getElementById('show_text').innerHTML = a;
		}
		if (items[4].checked) {
			a += '->' + items[4].value;

			document.getElementById('show_text').innerHTML = a;
		}

	}
</script>
</head>


<body>
	<input type="checkbox" name="category" value="生产" onclick="mini()" />生产
	<input type="checkbox" name="category" value="加工" onclick="mini()" />加工
	<input type="checkbox" name="category" value="仓储" onclick="mini()" />仓储
	<input type="checkbox" name="category" value="销售" onclick="mini()" />销售
	<input type="checkbox" name="category" value="运输" onclick="mini()" />运输


	<form action="creative2.action" method="post">
		<label> <span>我的产业链：</span>
			<div id="show_text"></div> </label> <label> <span>产业链名称 :</span> <input
			id="name" name="cylname" placeholder="输入产业链名称 " /><br /> </label> <label>
			<span>产业链编号 :</span> <textarea id="number" name="cylnumber"
				placeholder="输入产业链编号"></textarea><br /> </label> <label> <span>&nbsp;</span>
			<button type="submit" class="button" value="Send">提交</button> </label>
	</form>

</body>
</html>