<%@page import="model.BoardQnaDTO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String home = request.getContextPath();
	String id = (String)session.getAttribute("id");
	
	if(id==null){
		// 검색결과가 없습니다
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("location.href='"+home+"/pages/auth/login.jsp'");
		script.println("</script>");
	}
	BoardQnaDTO bean = (BoardQnaDTO)request.getAttribute("bean");
	String title = (bean != null)?(bean.getTitle() != null && bean != null)?bean.getTitle():"" : "";
	String content = (bean != null)?(bean.getContent() != null && bean != null)?bean.getContent():"":"";
	String type = (bean != null)?(bean.getType() != null && bean != null)?bean.getType():"":"";
	int num = (bean != null)?(request.getParameter("num") != null && bean != null)?bean.getNum():0:0;
	String action = (bean != null)?home+"/UpdateCtrl":home+"/WriteCtrl";
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1문의 작성</title>
    <!-- 폰트어썸 cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pc용 파비콘 -->
    <link rel="shortcut icon" href="<%= home %>/images/favicon/favicon_yes.ico">
    <!-- 디바이스용 파비콘 -->
    <link rel="apple-touch-icon=precomposed" href="<%= home %>/images/favicon/favicon_yes.ico">
    <!-- prefix js파일 -->
    <script src="<%= home %>/js/prefixfree.min.js"></script>
    <!-- 리셋 -->
    <link rel="stylesheet" href="<%= home %>/css/reset.css">
    <!-- 페이지 CSS -->
    <link rel="stylesheet" href="<%= home %>/css/board.css">
    <link rel="stylesheet" href="<%= home %>/css/boardWrite.css">
    <!-- JS 플러그인 파일 -->
    <script src="<%= home %>/js/jquery-1.12.4.min.js"></script>
    <script src="<%= home %>/js/jquery-3.3.1.min.js"></script>
    <script src="<%= home %>/js/jquery.scrollTo.min.js"></script>
</head>

<body>
    <!-- 탑버튼/광고 -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="<%= home %>/images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="<%= home %>/images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /탑버튼/광고 -->
    <div id="wrap">
        <!-- Header -->
        <header class="header w1200">
			<jsp:include page="/includes/header.jsp" />
        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section >
                <!-- Content Box -->
                <div class="faq_wrap w1200">
                    <!-- SNB 영역 -->
                    <aside class="w220">
                        <jsp:include page="./side.jsp"/>
                    </aside>

                    <!-- Write Form -->
                    <div class="write w980">
                        <h2 class="write_title">1:1 문의 접수</h2>
                        <div class="line"></div>
                        <form action="<%= action %>" method="post">
                            <table class="table">
                                <tr>
                                    <th>문의유형*</th>
                                    <td class="type">
                                        <select name="type" id="type" class="write_box" required>
                                            <option value="" selected disabled>문의 유형을 선택해주세요.</option>
                                            <option value="delivery" <% if(type.equals("delivery")){out.println("selected");} %>>배송/수령안내</option>
                                            <option value="payment" <% if(type.equals("payment")){out.println("selected");} %>>주문/결제</option>
                                            <option value="refund" <% if(type.equals("refund")){out.println("selected");} %>>반품/교환/환불</option>
                                            <option value="membership" <% if(type.equals("membership")){out.println("selected");} %>>회원정보</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>제목*</th>
                                    <td>
                                        <input type="text" name="title" id="title" placeholder="제목을 입력해 주세요." class="write_box" value="<%= title %>" required>
                                    </td>
                                </tr>
                                <tr>
                                    <th>내용*</th>
                                    <td>
                                        <textarea name="content" id="content" cols="30" rows="15" placeholder="문의 유형을 먼저 선택후 입력 해주세요." class="write_box" required><%= content %></textarea>
                                    </td>
                                </tr>
                            </table>
                            <div class="line" style="background-color: #d5d5d5;"></div>
                            <div class="btn_box">
                            <% if(bean != null){ %>
                            	<input type="hidden" name="num" value="<%=num %>"/>
                            	<input type="hidden" name="action" value="update"/>
                           	<% } %>
                                <input type="submit" value="<% if(bean != null){ %>수정완료<% }else{ %>문의접수<% } %>" class="btn sub_btn">
                                <button type="button" class="btn reset_btn" onclick="location.href = '<%= home %>/BoardListCtrl'">취소</button>
                            </div>
                        </form>
                        <div class="qna_notice">
                            <h3>문의내용 답변 안내</h3>
                            <ul>
                                <li><span>·</span> 답변은 마이룸 또는 회원정보에 등록된 이메일로 확인 가능합니다. (문의내용에 따라 고객센터 또는 매장에서 연락드릴 수 있습니다.)</li>
                                <li><span>·</span> 당일 17시 이후 문의건과 공휴일 1:1 문의는 문의 유형과 이름/연락처/이메일 주소를 남겨 주시면 확인 후 운영시간에 통지해 드립니다.</li>
                                <li><span>·</span> 정상근무일 기준이며, 통지예정일이 휴일인 경우 다음 정상 근무일에 진행 됩니다.</li>
                                <li><span>·</span> 설/추석 연휴 기간 동안은 고객센터 휴무로 인해 1:1 문의 답변이 불가 합니다.</li>
                                <li><span>·</span> 설/추석 연후 끝난 이후부터 순차적으로 답변드릴 예정이니 양해 부탁드립니다.</li>
                                <li><span>·</span> 신학기(3월, 9월)에는 문의량이 급증하여 답변이 지연될 수 있습니다.</li>
                            </ul>
                        </div>


                    </div>
                </div>
            </section>
        </main>
        <!-- /Main -->
        
        <!-- Footer -->
        <footer>
			<jsp:include page="/includes/footer.jsp"></jsp:include>
        </footer>
        <!-- /Footer -->
    </div>
   

<!-- 페이지 관련 JS -->
<script src="<%= home %>/js/board.js"></script>


<!-- *** header | footer *** -->
<script src="<%= home %>/js/common.js"></script>
<!-- Header Scroll -->
<script src="<%= home %>/js/scroll_header.js"></script>

</body>
</html>