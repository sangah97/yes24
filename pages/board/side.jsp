<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
    String home = request.getContextPath();
%>
    
    
<h2>고객센터</h2>
<ul class="snb_list">
    <li>
        <a href="#">메인</a>
    </li>
    <li>
        <a href="<%=home %>/pages/board/board.jsp">자주 묻는 질문</a>
        <ul class="snb_sub_list">
            <li><a href="#">BEST 10</a></li>
            <li><a href="#">회원</a></li>
            <li><a href="#">도서/상품정보/교과서</a></li>
            <li><a href="#">주문/결제</a></li>
            <li><a href="#">배송/수령일 안내</a></li>
            <li><a href="#">반품/교환/환불</a></li>
            <li><a href="#">세금계산서/증빙</a></li>
            <li><a href="#">서비스</a></li>
            <li><a href="#">eBook</a></li>
        </ul>
    </li>
    <li>
        <a href="<%= home %>/BoardListCtrl">1:1 문의</a>
        <ul class="snb_sub_list">
            <li><a href="<%= home %>/pages/board/boardWrite.jsp">1:1 문의 접수</a></li>
            <li><a href="<%= home %>/BoardListCtrl">1:1 문의 내역</a></li>
        </ul>
        
    </li>
    <li>
        <a href="#">공지사항</a>
    </li>
    <li>
        <a href="#">세금계산서 신청/내역</a>
    </li>
    <li>
        <a href="#">법인회원 대량주문 안내</a>
    </li>
</ul>
<div class="snb_service">
    <h3><i class="fa fa-headphones" aria-hidden="true"></i>&nbsp;고객센터 이용안내</h3>
    <p>
        <span>1544-1900</span> (유료)
    </p>
    <p>
        평일 09:00~18:00<br>
        (주말 및 공휴일 휴무)
    </p>
</div>
<div class="snb_service">
    <h3>보이는 ARS</h3>
    <p>
        앱스토어에서 ‘보이는 ARS’<br>
        앱 설치 후 이용
    </p>
    <div class="service_btn">
        <a href="#">전화상담서비스 안내도&nbsp;<i class="fa fa-angle-right" aria-hidden="true"></i></a>
    </div>
</div>