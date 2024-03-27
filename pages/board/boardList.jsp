
<%@page import="java.io.PrintWriter"%>
<%@page import="model.BoardQnaDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="model.BoardQnaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String home = (String)request.getContextPath();
	String id = (String)session.getAttribute("id");
	if(id == null){
// 		response.sendRedirect(home+"/index.jsp");
		// 검색결과가 없습니다
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("location.href='"+home+"/pages/auth/login.jsp'");
		script.println("</script>");
	}
	ArrayList<BoardQnaDTO> list = (ArrayList)request.getAttribute("list");
	BoardQnaDAO dao = new BoardQnaDAO();
	BoardQnaDTO reple;
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-1:1문의</title>
    <!-- í°í¸ì´ì¸ cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pcì© íë¹ì½ -->
    <link rel="shortcut icon" href="<%= home %>/images/favicon/favicon_yes.ico">
    <!-- ëë°ì´ì¤ì© íë¹ì½ -->
    <link rel="apple-touch-icon=precomposed" href="<%= home %>/images/favicon/favicon_yes.ico">
    <!-- prefix jsíì¼ -->
    <script src="<%= home %>/js/prefixfree.min.js"></script>
    <!-- ë¦¬ì -->
    <link rel="stylesheet" href="<%= home %>/css/reset.css">
    <!-- íì´ì§ CSS -->
    <link rel="stylesheet" href="<%= home %>/css/boardList.css">
    <!-- JS íë¬ê·¸ì¸ íì¼ -->
    <script src="<%= home %>/js/jquery-1.12.4.min.js"></script>
    <script src="<%= home %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%= home %>/js/jquery.scrollTo.min.js"></script>

    <style>
        .title_sub{
            position:relative;
        }
    	.btn_ask{
			padding:10px;
			background:#0080ff;
			color:#fff;
			border-radius:5px;
			position:absolute;
			top:-10px; 
			right:0;
            font-size:14px;
            transition:opacity 0.3s;
		}
    	.btn_ask:hover{
            opacity: 0.7;
        }
    </style>
    
</head>
<body>
    <!-- íë²í¼/ê´ê³  -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="<%= home %>/images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="<%= home %>/images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /íë²í¼/ê´ê³  -->
    <div id="wrap">
        <!-- Header -->
        <header class="header w1200">
			<jsp:include page="/includes/header.jsp" />
        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section>
                <!-- Content Box -->
                <div class="faq_wrap w1200">
                    <!-- SNB ìì­ -->
                    <aside class="w220">
                        <jsp:include page="./side.jsp"/>
                    </aside>

                    <!-- FAQ contents ìì­ -->
                    <div class="w980">
                        <h2>1:1문의</h2>
                        
                       
                        <h3 class="title_sub">문의내역 <button type="button" class="btn_ask" onclick="location.href = '<%= home %>/pages/board/boardWrite.jsp'">1:1 문의하기</button></h3>
                        <div class="best_10_wrap">
                        <% if(list != null){ %>
                            <div class="contact_list">
                                <ul>
                                    
									<% 
										for(int i=0; i<list.size(); i++){
											reple = dao.getReBoard(list.get(i).getNum());
											String type = null;
											switch (list.get(i).getType()) {
												case "delivery" : type = "배송/수령안내"; break;
												case "payment" : type = "주문/결제"; break;
												case "refund" : type = "반품/교환/환불"; break;
												case "membership" : type = "회원정보"; break;
											}
									%>
                                    <li class="contact_item">
                                    	<div class="contact_h">
                                        	<% if(reple != null){ %>
                                        	<span class="reple_confirm">답변완료</span>
                                        	<% } %>
                                        	<span><%= type  %></span>
                                        	<span><%= list.get(i).getRegdate()  %></span>
                                        </div>
                                        <div class="contact_title"><i class="fa fa-quora" aria-hidden="true"></i><%= list.get(i).getTitle() %></div>
                                        
                                        <button type="button" class="btn_toggle" onclick="askToggle(this);"><i class="fa fa-chevron-down" aria-hidden="true"></i></button>
                                        <div class="contact_content">
	                                        <div class="contact_ask">
		                                        <div class="contact_main">
		                                        	<%= list.get(i).getContent() %>
		                                        </div>
	                                        	<div class="contact_sub">
	                                        	<% if(reple == null){ %>
	                                        		<button onclick="location.href = 'UpdateCtrl?num=<%= list.get(i).getNum() %>'">수정</button>
                                        		<% } %>
	                                        		<button onclick="location.href = 'DeleteCtrl?num=<%= list.get(i).getNum() %>'">삭제</button>
	                                        	</div>
	                                        </div>
	                                        <!-- 리플 -->
	                                        <% if(reple != null){ %>
	                                        <div class="contact_re">
	                                        	<span class="contact_re_date"><%= reple.getRegdate() %></span>
	                                       	 	<div class="contact_main" id="contact_main_<%= i %>">
	                                       	 		
	                                        		<%= reple.getContent() %>
	                                        		
	                                        	</div>
	                                        	<div class="contact_sub">
	                                        		<button onclick="editForm(this,<%= i %>,'<%= reple.getContent() %>',<%= reple.getNum() %>);">수정</button>
	                                        		<button onclick="return submitForm('repleForm_<%= i %>');" style="display:none;">완료</button>
	                                        		<button onclick="location.href = 'BoardRepleCtrl?num=<%=reple.getNum()%>&step=1&action=del'">삭제</button>
	                                        	</div>
	                                        </div>
	                                        <% }else{ %>
	                                        <div class="contact_re">
	                                       	 	<div class="contact_main" id="contact_main_<%= i %>">
	                                       	 		<form action="BoardRepleCtrl" method="post" id="repleForm_<%= i %>">
	                                       	 			<input type="hidden" name="ref" value="<%= list.get(i).getNum() %>" />
	                                       	 			<input type="hidden" name="type" value="<%= list.get(i).getType() %>" />
	                                       	 			<input type="hidden" name="title" value="<%= list.get(i).getTitle() %>" />
	                                       	 			<textarea name="content" class="contact_reple"  rows="10"></textarea>
	                                       	 		</form>
	                                        	</div>
	                                        	<div class="contact_sub">
	                                        		<button onclick="return submitForm('repleForm_<%= i %>');">등록</button>
	                                        	</div>
	                                        </div>
	                                        <% } %>
                                        </div>
                                        
                                    </li>
                                    
									<% } %>
                                    
                                </ul>
                            </div>
                        <% }else{ %>
                            <div class="contact_text">
                                <i class="fa fa-exclamation-circle" aria-hidden="true"></i>
                                문의내역이 없습니다. <button onclick="location.href = '<%= home %>/BoardListCtrl';"><i class="fa fa-repeat" aria-hidden="true"></i></button>
                            </div>
                        <% } %>
                        </div>
                    </div>

                </div>
                <!-- /Content Box -->
            </section>
        </main>
        <!-- /Main -->
        
        
      
        
        <!-- Footer -->
        <footer>
			<jsp:include page="/includes/footer.jsp" />
        </footer>
        <!-- /Footer -->
    </div>
   
<script>

	function submitForm(tar){
		let targetForm = document.getElementById(tar);
		targetForm.submit();
		return false;
	}
	
	function editForm(tar,i,con,num){
		let targetForm = document.getElementById("contact_main_"+i);
		tar.style.display = "none";
		tar.nextElementSibling.style.display = "block";
		let data = '<form action="BoardRepleCtrl" method="post" id="repleForm_'+i+'">';
		data += '<input type="hidden" name="action" value="edit" />';
		data += '<input type="hidden" name="num" value="'+num+'" />';
		data += '<input type="hidden" name="step" value="1" />';
		data += '<textarea name="content" class="contact_reple" rows="10">'+con+'</textarea>';
		data += '</form>';
		targetForm.innerHTML = data;
	}

	
	function askToggle(tar){
		console.log(tar.nextElementSibling);
		if(tar.parentElement.classList.contains("on") == false){
			tar.parentElement.classList.add("on");
			tar.firstElementChild.classList.remove("fa-chevron-down");
			tar.firstElementChild.classList.add("fa-chevron-up");
			
		}else{
			tar.parentElement.classList.remove("on");
			tar.firstElementChild.classList.remove("fa-chevron-up");
			tar.firstElementChild.classList.add("fa-chevron-down");
	
		}
		
	}
</script>
<!-- íì´ì§ ê´ë ¨ JS -->
<script src="<%= home %>/js/board.js"></script>


<!-- *** header | footer *** -->
<script src="<%= home %>/js/common.js"></script>
<script>
    
   
    
    $('a[href="#"]').click(removeHref);
    // EVT
    function removeHref(e){
        e.preventDefault();
    };
    $('body').append('<div class="alert yes24"><img src="<%= home %>/images/alert1.png" alt="경고이미지"></div>');

    $('a[href="#"]').click(function(e){
    e.preventDefault();
    // 경고창 나타나기
    $('.alert').stop().fadeIn(500);
    // 경고창 사라지기
    setTimeout(function(){
        $('.alert').stop().fadeOut(500);
    },2000);

    });
    
</script>
<!-- Header Scroll -->
<script src="<%= home %>/js/scroll_header.js"></script>

</body>
</html>