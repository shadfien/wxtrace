<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>姜老大产业园追溯平台</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="description" content="姜老大蔬菜产业园追溯平台" />
		<meta name="keywords" content="姜老大蔬菜产业园追溯平台" />
		<meta name="robots" content="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" /> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
        <meta http-equiv="X-UA-Compatible" content="IE=9" />
        <link href="biaofan/css/bootstrap.css" rel="stylesheet"/>
        <link href="biaofan/css/flexslider.css" rel="stylesheet"/>
        <link href="biaofan/css/am.css" rel="stylesheet"/>
        <link href="biaofan/css/font-awesome.min.css" rel="stylesheet"/>
        <link href="biaofan/css/style.css" rel="stylesheet"/>
        <!--[if IE 8]>
			<link rel="stylesheet" href="css/ie8.css" />
		<![endif]-->
        <script src="biaofan/js/jquery.js"></script>
		<script src="biaofan/js/bootstrap.js"></script>
        <script src="biaofan/js/npm.js"></script>
        <script src="biaofan/js/jquery.flexslider.js"></script>
        <script src="biaofan/js/base.js"></script>
        <script src="biaofan/js/easing.js"></script>
        <!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
        <!--[if IE 7]>
			<div class="browers-tip">
				<div id="ie7tip">
					<h3>您的浏览器版本太低!</h3>
					<p class="msg">请升级您的浏览器获取更好的浏览体验!</p>
					<p>推荐浏览器:</p>
					<ul class="col-4 clearfix">
						<li class="fl"><a title="火狐浏览器" target="_blank" href="https://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=1&rsv_idx=1&tn=baidu&wd=%E7%81%AB%E7%8B%90%E6%B5%8F%E8%A7%88%E5%99%A8&oq=%E7%81%AB%E7%8B%90&rsv_pq=e889a5050018055c&rsv_t=afbaPMzHyPfZ67BRMuGOM6bkMaiBHpPNPLQcHLiAXlG0hd7rscGuZBnzaNA&rsv_enter=1&rsv_sug3=12&rsv_sug1=10&rsv_sug7=100&rsv_sug2=1&prefixsug=%E7%81%AB%E7%8B%90&rsp=0&rsv_sug4=1291">火狐</a></li>
						<li class="fl"><a title="谷歌浏览器" target="_blank" href="https://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=1&rsv_idx=1&tn=baidu&wd=chrome&oq=chrome&rsv_pq=9afbc4e70023048c&rsv_t=22a7BpshFS44b9fJXyHJ8wXYmYeshp562LQGzA6%2BA2rv%2Bvp4P7nw9Z29yko&rsv_enter=0&prefixsug=chrome&rsp=0">谷歌</a></li>
						<li class="fl"><a title="360极速浏览器" target="_blank" href="https://www.baidu.com/s?ie=utf-8&f=3&rsv_bp=1&rsv_idx=1&tn=baidu&wd=360%E6%B5%8F%E8%A7%88%E5%99%A8&oq=%26lt%3B60%E6%B5%8F%E8%A7%88%E5%99%A8&rsv_pq=e9e3f264001a4ff1&rsv_t=19ef876JU8rJX9cJz%2BMgUUbsgk9vLBMO2tohA%2Bawj6obHlmcNoBlNL5IcXQ&rsv_enter=0&prefixsug=%3C60%E6%B5%8F%E8%A7%88%E5%99%A8&rsp=0">360极速</a></li>
						<li class="fl"><a title="IE11浏览器" target="_blank" href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=baidu&wd=ie11&oq=%26lt%3B60%E6%B5%8F%E8%A7%88%E5%99%A8&rsv_pq=ffad8e0b001a9302&rsv_t=5e79YerDZbh9tPm8YkFwps6YafouF7VfhLFvcgMqjcUkcKzWEvDH3rAZmc0&rsv_enter=0&rsv_sug3=32&rsv_sug1=30&rsv_sug7=100&bs=360%E6%B5%8F%E8%A7%88%E5%99%A8">ie11</a></li>
					</ul>
				</div>
			</div>
			<style type="text/css">
            	ul.col-4 li{ width:25%;}
				.browers-tip{position:fixed;background:#f9f9f9;width:100%;height:100%;z-index:200;top:0;left:0;}
				#ie7tip{background:#fff;font-size:16px;width:400px;position:absolute;left:50%;margin-left:-200px;top:30%;padding:20px;}
				#ie7tip h3{text-align:center;font-size:20px;margin-bottom:10px;padding-bottom:8px;border-bottom:2px solid #f4c538;}
				#ie7tip .msg{margin:5px 0;}
				#ie7tip ul{margin-top:15px;}
				#ie7tip ul li{text-align:center;}
				#ie7tip ul li a{color:#000;}
				#ie7tip ul li a:hover{text-decoration:underline;}
				#ie7tip #goon{display:block;background:#0096e0;color:#fff;padding:3px 0;text-align:center;width:140px;margin:30px auto 0;}
				#ie7tip #goon:hover{background:#777;}
			</style>
			<script>
				$('#goon').on('click',function(){
					$('.browers-tip').fadeOut(200);
				})
			</script>
			<link rel="stylesheet" href="/Public/App/css/font-awesome-ie7.min.css" />
		<![endif]-->
	</head>
    
    
    
    <body>
    
    <!-- header -->
    	<div id="header">
            <div class="header-content clearfix">
                <a class="logo fl" href="#">姜老大蔬菜产业园<span>-追溯平台</span></a>
                <nav class="navigation fr" role="navigation">
                    <ul class="primary-nav">
                        <li><a class="animate" href="index.jsp">首 页</a></li>
                        <li><a class="animate" href="login-firm.html">企业管理入口</a></li>
                        <li><a class="animate" href="login-government.html">政府管理入口</a></li>
                        <li><a class="animate company-nav" href="#company">企业介绍</a></li>
                        <li><a class="animate company-nav" href="http://mall.jd.com/index-199899.html">网上商城</a></li>
                    </ul>
                </nav>
                <a href="#" class="nav-toggle">Menu<span></span></a>
            </div>
        </div><!-- header end -->
        
        <!-- banner  -->
        <div class="banner-content">
        	<div id="slider" class="flexslider">
				<ul class="slides">
                	<li class="banner-one">
                    	<div class="banner-description">
                            <div class="search-all container">
                                <div class="search-conter row">
                                    <div class="search-test col-lg-3">
                                        <i class="icon"></i>
                                        <p class="title">产品追溯码<span>Product traceability</span></p>
                                    </div>
                                    <div class="search-bar col-lg-9">
                                        <div class="no-select-search">
                                            <i class="icon"></i>
                                           <!--  <form action="{:U('/Index-search')}" method="post"> -->
                                                <input value="006010405" id="batchNum" name="keyword" type="text" autocomplete="off" placeholder="输入产品追溯码" value="输入产品追溯码" onfocus="if(value=='输入产品追溯码') {value=''}" onblur="if (value=='') {value='输入产品追溯码'}" />
                                                <label></label>
                                                <input type="submit" name="button" value="查 询" onclick="webTrace()"/>
                                            <!-- </form> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
				</ul>
			</div>
        </div>
    	<!-- banner end  -->
    
    <!--  company  -->
    <div class="company-all" id="company">
    	<div class="container">
            <div class="company-conter row">
                <div class="company-test col-lg-5 col-md-6 col-sm-12 pad-l">
                    <h3 class="title">企业介绍<span class="en">Company Introduction</span></h3>
                </div>
                <div class="company-bar col-lg-7 col-md-6 col-sm-12">
                	<ul class="clearfix company-add">
                    	<li class="fr two"><i class="icon"></i><p class="test">Email： 13706396419@163.com</p></li>
                    	<li class="fr one"><i class="icon"></i><p class="test">联系电话：13706396419</p></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    
    
    <!--  Introduction  -->
    
    
    <div class="introduction">
    	<div class="introduction-one introduction-all">
            <div class="container">
            	<div class="row introduction-conter">
                	<div class="present-l col-lg-6 col-md-6 col-sm-12">
                    	<img class="present-pic" src="biaofan/images/p1.png" alt=""/>
                    </div>
                    <div class="present-r col-lg-6 col-md-6 col-sm-12">
                    	<h3 class="title">统一规划<span class="subtitle">科学指导农产品生产，增加农产品产量，提高农产品质量</span></h3>
                        <p class="description">按照“一圈一带”和区委区府规划总体要求，本着蔬菜基地规模化、园区化、标准化、设施化和高效化的“五化”思路，统筹发展，基地选择远离工业区，无大气和水源等污染，土质肥沃、水源和交通条件好的地块。实现了基地标准化、设施现代化、种植与管理统一化、产品化验、安全追溯、生产记录、品牌销售一致化。科学指导农产品生产，增加农产品产量，提高农产品质量。</p>
                    </div>
                </div>
                
            </div>
        </div>
        
        
        <div class="introduction-two introduction-all">
            <div class="container">
            	<div class="row introduction-conter">
                	<div class="present-r col-lg-6 col-md-6 col-sm-12 pad-l">
                    	<h3 class="title">统一投入品使用<span class="subtitle">保证了农资市场规范，又保证了基地安全生产</span></h3>
                        <p class="description">我区先后制定了《农业投入品管理制度》、《农资经营管理办法》、《农产品生产基地管理制度》等多项制度，约束规范农业投入品使用，区建立农资经营监管平台，建立健全了农资经营备案制、实名购买制、销售台帐制、产品二维码追溯制，做到农业投入品进货有备案、销货有渠道、使用有记录、中间的监管、后期有追溯，即保证了农资市场规范，又保证了基地安全生产。</p>
                    </div>
                	<div class="present-l col-lg-6 col-md-6 col-sm-12">
                    	<img class="present-pic" src="biaofan/images/p2.png" alt=""/>
                    </div>
                    
                </div>
                
            </div>
        </div>
        
        <div class="introduction-one introduction-all">
            <div class="container">
            	<div class="row introduction-conter">
                	<div class="present-l col-lg-6 col-md-6 col-sm-12">
                    	<img class="present-pic" src="biaofan/images/p3.png" alt=""/>
                    </div>
                    <div class="present-r col-lg-6 col-md-6 col-sm-12">
                    	<h3 class="title">统一 化验、包装、销售<span class="subtitle">合作社和市场经济人统一包装，标识商标和三品认证后进入市场销售</span></h3>
                        <p class="description">结合2012年农产品质量安全县项目（日前该项目已于2014年6月验收通过），投资400余万元，建成县级农产品质量安全监管平台，实现了与省农业厅的联网，化验过程和结果双方随时可看，目前化验结果合格率达99.4%（不合格率部分也有试剂和操作等原因）。对于进入市场的合格产品，由合作社和市场经济人统一包装，标识商标和三品认证后进入市场销售。</p>
                    </div>
                </div>
                
            </div>
        </div>
        
        
        <div class="introduction-two introduction-all">
            <div class="container">
            	<div class="row introduction-conter">
                	<div class="present-r col-lg-6 col-md-6 col-sm-12 pad-l">
                    	<h3 class="title">健康可追溯<span class="subtitle">达到有问题能追溯，追溯能到源头，处理有依据的要求。</span></h3>
                        <p class="description">“陵县西葫”产品销售实行定期检测与不定期抽查相结合的办法进行产品定性化验，化验过程结果通过山东省农产品质量安全监管统一门户网走到联网可视，对结果合格者发放市场准入证，不合格产品严禁进入市场，并由农业执法部门查根溯源，产品分级包装，统一张贴绿色食品标识和二维码，后进入市场销售，达到有问题能追溯，追溯能到源头，处理有依据的要求。</p>
                    </div>
                	<div class="present-l col-lg-6 col-md-6 col-sm-12">
                    	<img class="present-pic" src="biaofan/images/p4.png" alt=""/>
                    </div>
                    
                </div>
                
            </div>
        </div>
    </div>
    
    <!--  footer  -->
    <div class="footer">
    	<div class="container">
            <div class="row footer-conter">
            	<div class="footer-test col-lg-6 col-md-6 col-sm-12 pad-l">
                    <p class="cop">Copyright © 2015 - 2016 Key Lab of Smart Agriculture SDAU . All Rights Reserved </p>
                    <p class="add">版权所有：<a href="#">山东农业大学智慧农业重点实验室</a></p>
                </div>
                <div class="footer-bar col-lg-6 col-md-6 col-sm-12">
                	<ul class="clearfix footer-add">
                    	<li class="fr two"><i class="icon"></i><p class="test">Email： 13706396419@163.com</p></li>
                    	<li class="fr one"><i class="icon"></i><p class="test">联系电话：13706396419</p></li>
                    </ul>
                    
                </div>
            </div>
        </div>
    </div>
    
    
    <div id="error-tip" class="animate-10"></div>
    <a href="#header" class="go-top"></a>
    <script type="text/javascript">
    	var batchNum=$("#batchNum").val();
    	function webTrace(){
    		window.location.href="webTrace.jsp?batchNum="+batchNum;
    	};
    
    
    </script>
    </body>
    </html>