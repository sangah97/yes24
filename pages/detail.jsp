<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String home = request.getContextPath();
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yes24-상세페이지</title>
    <!-- 폰트어썸 cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- pc용 파비콘 -->
    <link rel="shortcut icon" href="../images/favicon/favicon_yes.ico"> 
    <!-- 디바이스용 파비콘 -->
    <link rel="apple-touch-icon=precomposed" href="../images/favicon/favicon_yes.ico">
    <!-- prefix js파일 -->
    <script src="../js/prefixfree.min.js"></script>
    <!-- 리셋 -->
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/detail.css">
    <!-- JS 플러그인 파일 -->
    <script src="../js/jquery-1.12.4.min.js"></script>
    <script src="../js/jquery-3.3.1.min.js"></script>
    <!-- 스크롤 플러그인 -->
    <script src="../js/jquery.scrollTo.min.js"></script>
</head>
<body>
    <!-- 탑버튼/광고 -->
    <div class="circle_btn">
        <div class="circle_ad">
            <div class="ad_btn"><a href="#"><img src="../images/icon_ad_1.png" alt="Ad Image"></a></div>
        </div>
        <div class="circle_top">
            <div class="top_btn"><a href="#wrap"><img src="../images/icon_stepOut_48.png" alt="Top Button"></a></div>
        </div>
    </div>
    <!-- /탑버튼/광고 -->
    
    <div id="wrap">
        
        <!-- Header -->
        <header class="header w1200">
            <jsp:include page="../includes/header.jsp"/>
        </header>
        <!-- Header -->
        <!-- Main -->
        <main>
            <section>
                <!-- Content Box - 상세페이지 하단 -->
                <div id="footerPurchaseInfo">
                    <div class="w1200 flx_bt_c">
                        <p class="total_price"><span>총 상품 금액</span><b><input type="text" class="totalCount" value="16920"></b>원</p>
                        <div class="flx_fs_c">
                            <div class="counting_num flx_fs">
                                <button class="btn_minus"><i class="fa fa-minus" aria-hidden="true"></i></button>
                                <input type="text" class="bookCount" value="1">
                                <button class="btn_plus"><i class="fa fa-plus" aria-hidden="true"></i></button>
                            </div>
                            <a href="#" class="btn_gift flx_fs_c"><i class="fa fa-gift" aria-hidden="true"></i> 선물하기</a>
                            <a href="../pages/board/cart.jsp" class="btn_wish flx_fs_c">장바구니</a>
                            <div class="btn_pay flx_fs_c">
                                <a href="#">바로드림</a>
                                <a href="#">바로구매</a>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 상세페이지 인덱스 -->
                <div class="w1200 container" id="detailIndexBox">
                    <ul class="index_list">
                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                        <li><a href="#" class="btn_open">국내도서&nbsp;<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a></li>
                        <li><a href="#" class="btn_open">인문&nbsp;<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a></li>
                        <li><a href="#" class="btn_open">인문학일반&nbsp;<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a></li>
                        <li><a href="#" class="btn_open">인문교양&nbsp;<span><i class="fa fa-angle-down" aria-hidden="true"></i></span></a></li>
                    </ul>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 상세페이지 메인 -->
                <div class="w1200 container" id="detailMainBox">
                    <div class="item_box">
                        <div class="thumb_box">
                            <img src="../images/detail_main_book_1.jpeg" alt="" >
                            <ul class="preview_list">
                                <li><a href="#"><i class="fa fa-book" aria-hidden="true"></i> 미리보기</a></li>
                            </ul>
                        </div>
                        <div class="txt_box">
                            <h2 class="book_title">이토록 멋진 인생이라니</h2>
                            <p class="book_subTitle">모리가 화요일에 다하지 못한 마지막 이야기</p>
                            <p class="book_info">모리 슈워츠 저/공경희 역 | 나무옆의자 | 2023년 11월 24일 | 원제 : The Wisdom of Morrie</p>
                            <div class="book_point">
                                <div class="point_box flx_bt_c">
                                    <div class="star_box">
                                        <div class="star_average">9.8&#47;10</div>
                                        <div>
                                            <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                            <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                            <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                            <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                            <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        </div>
                                        
                                        <div class="review_count">69개의 회원 리뷰</div>
                                    </div>
                                    <div class="line_v"></div>
                                    <div class="sell_box">
                                        <i class="fa fa-thumbs-up" aria-hidden="true"></i>
                                        <div>판매지수</div>
                                        <div>15,150</div>
                                    </div>
                                </div>
                                <div class="tag_box">
                                    <ul class="tag_list">
                                        <li>인문 48위</li>
                                        <li>인문 top100 3주</li>
                                        <li>무료배송</li>
                                        <li>사은품</li>
                                        <li>소득공제</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="purchase_box">
                                <div class="price_box">
                                    <div class="purchase_item">
                                        <span class="discount">10%</span>
                                        <b>16,920</b>원
                                        <span class="regular">18,800원</span>
                                    </div>
                                </div>
                                <div class="save_box tooltip_box">
                                    <div class="purchase_item flx_bt_c">
                                        <b>적립&#47;혜택</b>
                                        <div class="save_point">
                                            <span>940원</span>
                                            <label class="btn_open" for="saveInput"><span><i class="fa fa-angle-down" aria-hidden="true"></i></span></label>
                                            <input type="checkbox" class="tooltip_input" id="saveInput">
                                            <div class="tooltip">
                                                <div class="tooltip_part">
                                                    <div class="tooltip_title">기본적립</div>
                                                    <ul class="tooltip_list">
                                                        <li>5% 적립940P</li>
                                                    </ul>
                                                </div>
                                                <div class="tooltip_part">
                                                    <div class="tooltip_title">추가적립</div>
                                                    <ul class="tooltip_list">
                                                        <li>5만원 이상 구매 시 추가2,000P</li>
                                                        <li>3만원 이상 구매 시, 등급별 2~4% 추가최대 940P</li>
                                                        <li>리뷰 작성 시, e교환권 추가최대 300원</li>
                                                    </ul>
                                                </div>
                                                <div class="tooltip_title">부가혜택 안내</div>
                                                <div class="tooltip_link">
                                                    <a href="#">제휴포인트</a>
                                                    <a href="#">도서소득공제</a>
                                                    <a href="#">쿠폰/혜택</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="delivery_box tooltip_box">
                                    <div class="purchase_item flx_bt_c">
                                        <b>배송안내</b>
                                        <div class="delivery_price">
                                            <span>무료배송</span>
                                            <label class="btn_open" for="deliveryInput"><span><i class="fa fa-exclamation" aria-hidden="true"></i></span></label>
                                            <input type="checkbox" class="tooltip_input" id="deliveryInput">
                                            <div class="tooltip">
                                                <div class="tooltip_part">
                                                    <div class="tooltip_title">아침배송</div>
                                                    <ul class="tooltip_list">
                                                        <li>오늘 밤 10시 전 주문하시면 내일 아침 7시 전에 받으실 수 있습니다.</li>
                                                    </ul>
                                                </div>
                                                <div class="tooltip_part">
                                                    <div class="tooltip_title">당일배송</div>
                                                    <ul class="tooltip_list">
                                                        <li>표시상품을 주문하시면 당일에 받으실 수 있습니다.</li>
                                                    </ul>
                                                </div>
                                                <div class="tooltip_part">
                                                    <div class="tooltip_title">하루배송</div>
                                                    <ul class="tooltip_list">
                                                        <li>표시상품을 주문하시면 다음날에 받으실 수 있습니다.</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="delivery_date">
                                        13시까지 주문하면 오늘(12/11, 월) 도착 예정
                                        <button class="btn_open"><span><i class="fa fa-exclamation" aria-hidden="true"></i></span></button>
                                    </div>
                                    <div class="delivery_address">
                                        <span>당일 배송</span>
                                        서울특별시 영등포구 은행로 11(여의도동,일신빌딩)
                                        <button class="btn_open"><a href="#">&#91;&nbsp;변경&nbsp;&#93;</a></button>
                                    </div>
                                    
                                </div>
                                <div class="sale_box">
                                    <div class="purchase_item flx_bt_c">
                                        <b>판매중</b>
                                        <div class="sale_status">
                                            <span>수량</span>
                                            <div class="count_num">
                                                <button class="btn_minus"><i class="fa fa-minus" aria-hidden="true"></i></button>
                                                <input type="text" class="bookCount" value="1">
                                                <button class="btn_plus"><i class="fa fa-plus" aria-hidden="true"></i></button>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="saleBtn_box">
                                    <a href="../pages/board/cart.html" class="btn_wishlist">카트에 넣기</a>
                                    <a href="#" class="btn_purchase">바로 구매</a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 함께 구매한 책 -->
                <div class="w1200 container" id="bookRecommendBox">
                    <div class="item_head">
                        <h2 class="con_title">함께 구매한 책</h2>
                    </div>
                    <div class="item_box">
                        <ul class="book_list">
                            <li>
                                <div class="book_list_img">
                                    <img src="../images/detail_recommend_book_1.jpeg" alt="함께 구매한 책 1">
                                </div>
                                <dl>
                                    <dt>도둑맞은 집중력</dt>
                                    <dd>요한 하리. 김하현</dd>
                                    <dd><b>16,920</b>원</dd>
                                </dl>
                            </li>
                            <li>
                                <div class="book_list_img">
                                    <img src="../images/detail_recommend_book_2.jpeg" alt="함께 구매한 책 2">
                                </div>
                                <dl>
                                    <dt>관계의 언어</dt>
                                    <dd>문요한</dd>
                                    <dd><b>15,300</b>원</dd>
                                </dl>
                            </li>
                            <li>
                                <div class="book_list_img">
                                    <img src="../images/detail_recommend_book_3.jpeg" alt="함께 구매한 책 3">
                                </div>
                                <dl>
                                    <dt>인간다움</dt>
                                    <dd>김기현</dd>
                                    <dd><b>17,820</b>원</dd>
                                </dl>
                            </li>
                            <li>
                                <div class="book_list_img">
                                    <img src="../images/detail_recommend_book_4.jpeg" alt="함께 구매한 책 4">
                                </div>
                                <dl>
                                    <dt>남에게 보여주려고 인생을 낭비하지 마라</dt>
                                    <dd>쇼펜하우어. 박제헌</dd>
                                    <dd><b>15,750</b>원</dd>
                                </dl>
                            </li>
                            <li>
                                <div class="book_list_img">
                                    <img src="../images/detail_recommend_book_5.jpeg" alt="함께 구매한 책 5">
                                </div>
                                <dl>
                                    <dt>마흔에 읽는 쇼펜하우어</dt>
                                    <dd>강용수</dd>
                                    <dd><b>15,300</b>원</dd>
                                </dl>
                            </li>
                        </ul>
                    </div>
                </div>                
                <!-- /Content Box -->

                <!-- Content Box - 탭메뉴 -->
                <div class="container" id="detailTabBox">
                    <div class="w1200 item_box">
                        <ul class="tab_list">
                            <li class="on"><a href="#bookInfoBox">도서정보</a></li>
                            <li><a href="#reviewBox">리뷰<span>&#40;37&#41;</span></a></li>
                            <li><a href="#exchangeBox">반품정보</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 도서정보 -->
                <div class="w1200 container" id="bookInfoBox">
                    <div class="item_box">
                        <img src="../images/detail_intro_book_1.jpeg" alt="이토록 멋진 인생이라니 도서정보 이미지" id="intro_book">
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 책소개 -->
                <div class="w1200 container" id="bookIntroduceBox">
                    <div class="item_head">
                        <h2 class="con_title">책소개</h2>
                    </div>
                    
                    <p class="con_txt">이 책이 속한 분야</p>
                    <span class="con_sub">국내&nbsp;&gt;&nbsp;인문&nbsp;&gt;&nbsp;인문학일반&nbsp;&gt;&nbsp;인문교양</span>
                    <div class="line"></div>
                    <div class="item_box">
                        <p class="item_title">
                            “우리 모두가 눈감는 순간까지<br>
                            적극적이고 충만하게 살 수 있다면”<br>
                            『모리와 함께한 화요일』의 영원한 인생 스승 모리의 미발표 유고<br>
                        </p>
                        <p class="item_txt">
                            전 세계 4000만 독자가 사랑한 『모리와 함께한 화요일』Tuesdays with Morrie의 
                            모리 슈워츠 교수가 학자가 아닌 작가로서 독자들에게 남긴 처음이자 마지막 책이다. 
                            사회학자이자 심리치료사 그리고 한 사람으로서 누구도 소외받지 않으며, 
                            환경으로 평가받지 않는 세상을 꿈꿨던 모리 교수는 삶을 마지막 날까지 성장할 수 있는 무한한 가능성과 기회의 시간이라 보았다. 
                            나이 듦은 태어난 이상 누구나 겪는 자연스러운 과정이다. 
                            앞으로 주어질 시간을 그 누구도 아닌 ‘내가 바라는’ ‘자기만의 세계’로 완성한다면 생의 어느 단계에 있든 큰 행복과 만족을 얻을 수 있다. 
                            『모리와 함께한 화요일』에서 세상, 가족, 죽음, 자기 연민, 사랑에 대해 미치 앨봄의 목소리로 대신 
                            전해 들었던 영혼의 가르침을 모리 교수의 육성으로 직접 만나는 특별한 기회가 될 것이다.
                        </p>
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 작가정보 -->
                <div class="w1200 container" id="authorInfoBox">
                    <div class="item_head">
                        <h2 class="con_title">작가정보</h2>
                    </div>
                    
                    <div class="item_box bd_box">
                        <div class="item_head">
                            <p class="item_title">저자(글) 모리 슈워츠</p>
                            <button class="btn_info"><i class="fa fa-exclamation-circle" aria-hidden="true"></i>인물정보</button>
                        </div>
                        
                        <p class="item_txt">
                            1916년 태어나 시카고 대학교에서 사회학 석사와 박사 학위를 받았다. 
                            루게릭병으로 병상에 오르기 전까지 35년 동안 브랜다이스 대학교에서 사회학 교수로 
                            학생들을 가르치는 한편 메사추세츠주 케임브리지 그린하우스의 저명한 심리치료사로서 사람들의 마음을 돌봤다. 
                            어린 시절 한 모피 공장에서 착취 현장을 목격한 이후, 누구도 소외받지 않고 환경이나 나이로 평가받지...
                        </p>
                        
                        <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 목차 | 책 속으로 | 출판사 서평 -->
                <div class="w1200 container" id="bookIndexBox">
                    <div class="item_head">
                        <ul class="tab_box">
                            <li class="con_title on">목차</li>
                            <li class="con_title">책 속으로</li>
                            <li class="con_title">출판사 서평</li>
                        </ul>
                    </div>
                    
                    <div class="item_box">
                        <div class="item_tab">
                            <p class="item_txt">
                                서문<br>
                                들어가며 | 삶의 마지막 성장기<br><br>
                                
                                1장 우리는 모두 나이를 먹는다<br>
                                2장 감정 밸런스 게임<br>
                                3장 인생이라는 하모니<br>
                                4장 멈추기, 보기, 듣기<br>
                                5장 노병은 죽지 않는다, 다만 사라질 뿐<br>
                                6장 무엇이 두려운가<br>
                                7장 렛 잇 비(Let It Be)<br>
                                8장 이토록 멋진 인생이라니<br>
                                9장 멘시(mensch), 좋은 사람<br><br>
                                
                                나오며 | 아버지가 서재에서 꿈꾼 세상<br>
                                부록 | 보살핌 공동체<br>
                                옮긴이의 말
                            </p>
                            <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                        </div>
                        <div class="item_tab">
                            <p class="item_txt">
                                
                                노후는 독특한 제약과 기회가 있는 특별한 성장기이다. 또 인생에서 가장 중요한 기간이기도 하다. 진심으로 원한다면 노후에 큰 변화를 이룰 수 있다. (9)
                                우리의 생명력은 갇혀서 풀려나기를 기다리고 있을지 모른다. 밖으로 나오려고 밀어대는 중일지 모른다. 그 내적 생명력의 원천을 활용하는 일은 본인에게 달렸다. 그것을 풀어내고, 꺼내고, 부추기고, 달랠 방도를 찾는 것은 자기 몫이다. 잘 늙으려면 이 생기와 접하고 익숙해지고 그 기운을 키워야 한다. 생기를 불러들여 목표와 꿈을 추구하는 지속적인 힘으로 삼아야 한다. (26)
                                오늘날 내가 살고 만들어가고 경험하는 ‘지금’이 인생의 화양연화임을 이제는 안다. (34)
                                혼자인 것과 혼자라는 느낌은 어느 정도는 인간의 기본 조건이며, 현대 사회에서 필연적이다. (…) 고독이 고통스럽고 부정적으로 느껴진다면 고독을 받아들이고 긍정적으로 타협하는 법을 배울 필요가 있다. 원치 않는 고독을 혼자서 호젓하게 보내는 시간으로 바꿀 방법을 찾아야 한다. 어느 쪽이든 혼자인 시간을 잘 보내면 힘을 얻고 삶을 통제하는 기분을 느낄 수 있다. (50~51)
                                인간으로서 현실을 부정하고 회피하는 것은 다반사이며 나쁜 일도 아니다. 때로 부정과 회피가 두려움을 눌러주기도 하지만 반대로 해가 되기도 한다. 현실 인식을 꾸준히 거부하면서 상황이나 상태가 악화되기 때문이다. 핵심은 어떤 상황에서 어느 정도까지 회피하거나 부정하면 별문제 없이 위태롭지 않을지 아는 것이다. 이따금 현실을 왜곡, 회피, 부정하는 일은 괜찮다. 자족감을 지켜주고 자기 생각이 맞는다고 증명해준다. 또 원하는 상황에서 자기 모습에 흡족하도록 돕는다. 긍정적인 허상은 장래에 희망을 갖게 하고, 앞날을 긍정적으로 기대해 나아가게 한다. (75~76)
                                희망은 좋은 일이 있다는, 바라는 대로 된다는 신념과 기대이다. 순전한 우연이나 노력으로 생긴다. 희망은 어떤 소망이 이뤄진다는 믿음이다. 희망은 삶을 빛, 열의, 열정, 미래지향적 태도로 채운다. 희망은 계속 나아가게 한다. 계속 싸우고 저항하고, 역경 더미를 없애려고 노력하게 한다. 힘든 상황에서도 패배를 인정하지 않게 한다. 자신감을 높여 미래의 성공을 위해 노력하도록 동기를 부여한다. (85)
                                삶에 적극적이고 충만하게 뛰어들라. 현실을 되도록 많이 대면하라. 최대한 자립하라. 미래를 희망적이고 낙관적으로 대하라. 친밀한 관계들을 유지하되 필요할 때는 고독을 누려라. 세상과 소통하는 일에 에너지를 쏟아라. 비난, 고립, 공동체에서 멀어지려는 유혹에 저항하라. 의존을 최대한 피하되 필요할 때는 의지하라. 절망을 극복하고 가능한 모든 방식으로 희망을 찾으라. (92~93)
                                싸움은 승리만큼 중요하다. 그 행위에서 생기가 더 불끈 솟아 지속되기 때문이다. 고통이 일어났다 가라앉는 사이 내가 그 과정에 개입하고 몰입할 수 있다면 원하는 결과가 자연스럽게 나타날 것이다. 또 어떤 승리든 일시적이라는 사실도 안다. 다른 싸움, 또 다른 싸움이 언제일지 몰라도 끝없이 나올 테고, 싸움과 싸움 사이 나는 계속 힘껏 살아갈 것이다. (106)
                                우리는 대개 보고 싶은 것을 보고, 듣고 싶은 것을 듣는다. 믿고 싶은 것을 증거로 발견하고, 내 신념에 반대하는 이들에게 부정적으로 반응하며 반대 의견을 물리친다. 통상적인 것들을 당연시하고, 현상을 관습적인 관점에서 기정사실처럼 보면서 객관적이라고 믿는다. 내 견해와 매우 다르며 이상하고 대담해 보이는 관점을 겁먹지 말고 고려해보자. 허튼짓이라도 생각하고 검토해보면 사고가 확장되고 시야가 넓어진다. 전에 모르던 가능성들을 고려하게 되고, ‘다른 면’을 보는 상상력이 자극받는다. (113)
                                모든 인생은 소중하며 어떤 연령대이든 그 주인이 아름답고, 쓸모 있고, 보살피는 삶으로 가꿀 수 있다. 독창적이고, 경험을 쌓고, 충만하게 지각하며 인간애를 발휘하는 삶이 될 수 있다. 내 인생, 건강, 자부심, 자존감, 삶에서 지속적으로 얻는 만족감은 남들의 그것과 똑같이 중요하다. 누구나 공통의 인간애를 공유하며 인류에 기여할 게 많다. 살아 있는 한 남들이 기대하는 대로가 아니라 내가 바라는 존재로 지내는 것이 중요하다. (137)
                                웰 에이징과 최대한 좋은 사람이 되는 것, 그것이 노년의 도전과제이다. (144)
                                포기하지 않고 고통, 괴로움, 비통함을 견디려면 용기와 각오가 필요하다. 하지만 돌파하고 계속 싸우면서 인내하고 이겨내면 한층 성숙해진다. 큰 위기를 견뎌내면 영혼의 성장과 인간애가 주어진다. (186)
                                나이가 들고 내적으로 변화하면서 자신에게 일어나는 일을 더 잘 인식하면 삶을 더 통제할 수 있고, 현재 상황에서 어떻게 살고 싶은지 더 명확하게 파악할 수 있다. (193)
                                과거는 손쓸 도리가 없고 미래는 예측 불가하며 우리가 가진 것은 현재뿐이므로 현재에 어떻게 존재할지 배우는 게 중요하다. (199)
                                여전히 마음을 괴롭히는 이슈를 받아들이려 애쓰면 무엇을 얻을 수 있을까? 이슈에 따르는 고통을 줄일 수 있다. 시달렸던 상처들을 치유할 수 있다. 결핍을 견뎌온 자신을 성장시킬 방법을 찾을 수 있다. 자신에게 일어난 일, 자신이 한 일, 자신이 당한 일을 더 잘 이해하게 된다. 그러면 다음에 그런 일이 생겨도 분노하거나 짓눌리지 않고 잘 대처하거나 예방하도록 준비할 수 있다. 이슈를 받아들이기 위한 도전과 투쟁에서 벗어나면 내면의 평화와 평정심을 얻고, 자신과 타인에 대한 연민이 커지며, 인간 조건의 본질을 더 이해하게 된다. (210~211)
                                아직 실현하지 못한 포부들을 완성해보자. 살아보지 않은 인생을 지각하고 그 삶을 살기 시작하자. 잃어버린, 표현하지 못한, 지각하지 못해 밖으로 나오려는 나의 일부를 찾아 활력을 불어넣자. 스스로 묻자. ‘나는 어떤 사람이 될 수 있을까? 어떤 방법으로 여전히 생산적이고 쓸모 있는 사람이 될 수 있을까?’ 내가 의도하고 될 수 있는 모습을 더 지각하자. (248~249)
                                삶에 ‘예스’라고 말하고 인생을 긍정하는 태도를 견지하자. 절망을 거부하자. 삶을 사랑하고 나와 다른 사람들에게 벌어지는 일에 계속 유의하자. 무슨 일이 있어도 삶이 중요하다는 점을 명심하자. 내가 차이를 만든다는 태도를 유지하자. 냉소, 트집, 비판, 불평, 비난 같은 부정적인 감정을 피하거나 최소화하자. (264)
                                죽음을 상상하면서 만족스런 해결책을 얻으면 현재 삶이 더 자유로워진다. 죽음이 불가피하다는 사실을 받아들이면 더 충만하고 자유롭게 살면서 활기차게 목표를 추구하게 된다. (268)
                            </p>
                            <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                        </div>
                        <div class="item_tab">
                            <p class="item_txt">
                                우리의 내일은 얼마나 더 찬란할까?
                                인생이라는 가능성의 시간,
                                우리를 완성으로 이끄는 모리의 따스한 메시지
                                이 책의 원고는 모리 교수가 작고하고 한참 뒤인 2000년대 초 그의 서재 책상 서랍에서 발견되었다. 
                                『모리와 함께한 화요일』보다 훨씬 앞선 1989년 집필하기 시작한 글이었다. 모리 교수의 가족들은 고심 끝에 생전 그와 나눴던 대화를 바탕으로 아들 롭 슈워츠 주도 아래 원고를 편집해 모리 교수의 오랜 뜻을 세상에 알리기로 결정했다. 
                                루게릭병으로 병상에 오르기 전까지 35년 동안 대학에서 사회학 교수로 학생들을 가르치는 한편 메사추세츠주 케임브리지 그린하우스의 저명한 치료사로 내담자들의 마음을 돌보며 모리 교수는 평생 사람들의 심리 상태에 관심 갖고 그들의 삶을 개선하는 데 힘썼다. 사회에서 설 자리를 잃는 순간 사람은 심리적으로 치유되기 어려운 손상을 입는다. 모리 교수는 사회가 특히 나이로 차별하는 경우가 흔하다고 보았다. 
                                치열하게 살다 보니 어느새 찾아온 인생 후반기를 활기차고 즐겁게 보내는 현실적인 요령과 기술들을 나눠 삶을 건강하고 아름답게 마무리하도록 돕고, 나이는 그저 숫자에 지나지 않는다는 사실을 깨닫게 해 인식이 전반적으로 개선되기를 바랐다. 
                                주류에서 밀려나 그림자처럼 흐릿해지는 노년의 진정한 의미를 일깨워 노년기를 쇠락이 아니라 완성으로 향하는, 누구나 거쳐야 하는 ‘성장기’로 보고 이 시기를 어떻게 보내느냐에 따라 삶의 만족도와 완성도가 달라진다고 모리 교수는 강조한다. 젊은 날 눈앞의 과업에 사로잡혀 놓치고 만 ‘나다움’, ‘나다운 생’이란 무엇인지 깨닫고 삶을 찬란하게 살아내라고 북돋운다. 누구보다 자신이 마지막까지 성장하는 사람으로 살았기 때문이다.
                                날마다 더 좋은 사람이 될 수 있어 인생은 이토록 멋지다
                                여전히 우리 곁에 살아 숨 쉬는 영혼의 스승이 전하는 인생 예찬
                                이 책은 『모리와 함께한 화요일』과 마찬가지로 휴머니즘과 무한한 사랑을 우선으로 삼으면서도 철학, 사회, 가치관 면에서 작가 자신과 여러 사람의 실제 사례를 들어 한층 다채롭고 풍성하게 이야기를 전한다. 
                                책장을 넘기고 있으면 모리 교수 특유의 학구적이고 철학적인 동시에 현실적이고 소탈한 목소리가 귓전에 울리는 듯하다. 나이 들면서 마주하는 신체적, 정신적, 경제적, 사회적 변화에 움츠러드는 대신 자기 자신과 삶을 가만히 들여다보고 성찰하며 해묵은 문제들과 화해하고 최대한 좋은 사람이 되도록 노력한다면 카를 융의 말처럼 “인생 후반부에는 가장 큰 성장 잠재력과 자기실현이” 기다리고 있다. 
                                인생은 자신에 대한 믿음이 만드는 결과가 얼마나 위대할 수 있는지 눈으로 직접 확인하는 시간이다. 
                                인생의 의미를 깨우쳐주고 생각과 마음과 행동을 변화시킨다는 점에서 모리 교수는 인생의 진정한 스승이다. 
                                이 책을 통해 모리 교수에게 듣는 삶의 가르침은 60대와 그 이상의 연령대에게는 남은 인생을 살아가는 방법을, 중년에게는 미래의 모습을 그릴 유용한 토대를, 청년에게는 부모를 더 잘 이해할 수 있는 도움말과 자신의 노년기를 내다보는 기회를 선물한다.
                            </p>
                            <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                        </div>
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 기본정보 -->
                <div class="w1200 container" id="basicInfoBox">
                    <div class="item_head">
                        <h2 class="con_title">기본정보</h2>
                    </div>
                    
                    <div class="line"></div>
                    <div class="item_box">
                        <table class="item_table">
                            <tr>
                                <th>ISBN</th>
                                <td>9791161571577</td>
                            </tr>
                            <tr>
                                <th>발행(출시)일자</th>
                                <td>2023년 11월 24일</td>
                            </tr>
                            <tr>
                                <th>쪽수</th>
                                <td>준비중</td>
                            </tr>
                            <tr>
                                <th>크기</th>
                                <td>138 * 210 * 25 mm / 549 g
                                    <button class="btn_plate">판형알림<i class="fa fa-angle-right" aria-hidden="true"></i></button>
                                </td>
                            </tr>
                            <tr>
                                <th>총권수</th>
                                <td>1권</td>
                            </tr>
                            <tr>
                                <th>원서명/저자명</th>
                                <td>The Wisdom of Morrie/Morrie Schwartz</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!-- /Content Box -->
                
                <!-- Content Box - 리뷰 -->
                <div class="w1200 container" id="reviewBox">
                    
                    <div class="item_head">
                        <h2 class="con_title">리뷰</h2>
                        <button class="btn_write">리뷰작성</button>
                    </div>
                    
                    <div class="item_box bd_box">
                        <div class="total_point">
                            <h3>사용자 총점</h3>
                            <div class="star_box">
                                <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                <div class="star_average">9.8&#47;10</div>
                            </div>
                            <ul class="star_point">
                                <li>
                                    <div>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                    </div>
                                    <div class="point_bar"></div>
                                    <div class="per_box">93%</div>
                                </li>
                                <li>
                                    <div>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="point_bar"></div>
                                    <div class="per_box"><span style="opacity:0;">0</span>7%</div>
                                </li>
                                <li>
                                    <div>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="point_bar"></div>
                                    <div class="per_box"><span style="opacity:0;">0</span>0%</div>
                                </li>
                                <li>
                                    <div>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="point_bar"></div>
                                    <div class="per_box"><span style="opacity:0;">0</span>0%</div>
                                </li>
                                <li>
                                    <div>
                                        <i class="fa fa-star clr_0080ff" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="point_bar"></div>
                                    <div class="per_box"><span style="opacity:0;">0</span>0%</div>
                                </li>
                            </ul>
                        </div>
                        <div class="age_point">
                            <h3>연령대 별 평균 점수는?</h3>
                            <ul class="stick_point">
                                <li>
                                    <div class="point_bar"></div>
                                </li>
                                <li>
                                    <div class="point_bar"></div>
                                </li>
                                <li>
                                    <div class="point_bar"></div>
                                </li>
                                <li>
                                    <div class="point_bar"></div>
                                </li>
                                <li>
                                    <div class="point_bar"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="item_box review_box">
                        <div class="item_head">
                            <ul class="tab_box">
                                <li class="con_title on">전체리뷰</li>
                                <li class="con_title">구매리뷰</li>
                                <li class="con_title">한 달 후 리뷰</li>
                            </ul>
                            <div class="btn_box">
                                <select id="order_type" class="select_order">
                                    <option value="like" selected>좋아요 순</option>
                                    <option value="like">작성일자 순</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="review_detail">
                            <ul class="review_list">
                                <li>
                                    <div class="review_writer"><span class="book_type">종이책</span> jw*******&nbsp;&nbsp;|&nbsp;&nbsp;2023.11.22&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">신고/차단</a></div>
                                    <div class="review_txt">
                                        모리와 함께한 화요일 읽지 않아도 제목을 모르는 사람은 별로 없을 것 같다. 사실 내용이 기억이 나진 않는다. 너무 오래전 그저 필독서라는 강
                                        요로 읽게되었을 뿐. 실제 깊은 감명은 받았는지 여부조차 확실하지 않다.
                                        ...
                                    </div>
                                    <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                                </li>
                                <li>
                                    <div class="review_writer"><span class="book_type">종이책</span> ji****&nbsp;&nbsp;|&nbsp;&nbsp;2023.11.21&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">신고/차단</a></div>
                                    <div class="review_txt">
                                        2001년 &lt;모리와 함께 한 화요일&gt;의 저자 모리 교수의 미발표 유고가 발견되어 세간의 관심을 끈 적이 있다. 심지어 그 글은 &lt;모리와 함께 한 화
                                        요일&gt;보다 훨씬 더 앞선 1989년에 집필하기 시작하여 1992년 루게릭병이 발형하기 전까지 쓴 글로, 모리 교수가 돌아가시고 난 후에 책상 서
                                        랍 귀퉁이에서 발견되었다고 한다. &lt;이토록 멋진 인생이라니&gt;의 책 표지에는모리가 화요일에 다하지 못한 마지막이야기라고 되어 있지만, ...
                                    </div>
                                    <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                                </li>
                                <li>
                                    <div class="review_writer"><span class="book_type">종이책</span> la*****&nbsp;&nbsp;|&nbsp;&nbsp;2023.12.12&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">신고/차단</a></div>
                                    <div class="review_txt">
                                        나이들어감을 머리로는 인지하지만 마음으로는 거부하면서 순간순간 이유 모를 화를 내던 시기, 
                                        
                                        그리고 삶이 답답하게 느껴지던 시기에 선물받은 책입니다. 
                                        마음에 와닿는 내용이 많아 따스한 손길로 토닥여주듯 위로를 받았네요. ...
                                    </div>
                                    <button class="btn_open">펼치기<span><i class="fa fa-caret-down" aria-hidden="true"></i></span></button>
                                </li>
                            </ul>
                            <ul class="review_list_paging">
                                <li><a href="#"><i class="fa fa-chevron-left" aria-hidden="true"></i></a></li>
                                <li class="on"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#"><i class="fa fa-chevron-right" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Content Box -->
                <!-- Content Box - 교환/반품/품절 안내 -->
                <div class="w1200 container" id="exchangeBox">

                    <h2 class="con_title">교환&#47;반품&#47;품절&nbsp;안내</h2>

                    <div class="item_box guide_box">
                        <h3 class="guide_title">반품&#47;교환 방법</h3>
                        <ul class="guide_list">
                            <li>마이페이지 &gt; 반품&#47;교환 신청 및 조회, 1:1 문의, 고객만족센터(1544-3800), 중고샵(1566-4295)</li>
                            <li>판매자 배송 상품은 판매자와 반품&#47;교환이 협의된 상품에 한해 가능합니다.</li>
                        </ul>
                    </div>
                    <div class="line"></div>

                    <div class="item_box guide_box">
                        <h3 class="guide_title">반품&#47;교환 가능기간</h3>
                        <ul class="guide_list">
                            <li>출고 완료 후 10일 이내의 주문 상품</li>
                            <li>디지털 콘텐츠인 eBook의 경우 구매 후 7일 이내의 상품</li>
                            <li>중고상품의 경우 출고 완료일로부터 6일 이내의 상품 (구매확정 전 상태)</li>
                        </ul>
                    </div>
                    <div class="line"></div>

                    <div class="item_box guide_box">
                        <h3 class="guide_title">반품&#47;교환 비용</h3>
                        <ul class="guide_list">
                            <li>고객의 단순변심 및 착오구매일 경우 상품 반송비용은 고객 부담임</li>
                            <li>직수입양서&#47;직수입일서중 일부는 변심 또는 착오로 취소시 해외주문취소수수료 20%를 부과할수 있음</li>
                            <li>단, 아래의 주문&#47;취소 조건인 경우, 취소 수수료 면제</li>
                            <li>오늘 00시 ~ 06시 30분 주문을 오늘 오전 06시 30분 이전에 취소</li>
                            <li>직수입 음반&#47;영상물&#47;기프트 중 일부는 변심 또는 착오로 취소 시 해외주문취소수수료 30%를 부과할 수 있음</li>
                            <li>단, 당일 00시~13시 사이의 주문은 취소 수수료 면제</li>
                            <li>박스 포장은 택배 배송이 가능한 규격과 무게를 준수하며, 고객의 단순변심 및 착오구매일 경우 상품의 반송비용은 박스 당 부과됩니다.</li>
                        </ul>
                    </div>
                    <div class="line"></div>
                    <div class="item_box guide_box">
                        <h3 class="guide_title">소비자 피해보상</h3>
                        <ul class="guide_list">
                            <li>상품의 불량에 의한 반품, 교환, A&#47;S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결기준(공정거래위원회 고시)에 준하여 처리됨</li>
                        </ul>
                    </div>
                    <div class="line"></div>
                </div>
                <!-- /Content Box -->

                
               
            </section>
        </main>
        <!-- /Main -->
        <!-- Footer -->
        <footer>
			<jsp:include page="../includes/footer.jsp"/>
        </footer>
        <!-- /Footer -->
    </div>
   


    <!-- script -->

    <!-- 페이지관련 js -->
    <script src="../js/detail.js"></script>

    <!-- *** header | footer *** -->
    <script src="../js/common.js"></script>
    <!-- /script -->
    <script>
//         $('header').load('./header.html',function(){
//         $('.hamburger > label').on('click',function(){
//             var scroll_loc = $(window).scrollTop();
//             if(scroll_loc>=show_loc){ //현재 윈도우의 스크롤이 256보다 내려갔을 때
//                 if($('#menuIcon').prop('checked')){
//                     $('.personal_item').removeClass('on');
//                 }else{
//                     $('.personal_item').addClass('on');
//                 }
                
//             }
//             console.log('click');
//         });
//     });
//         $('footer').load('./footer.html',function(){
//             $('a[href="#"]').click(removeHref);
//             // EVT
//             function removeHref(e){
//                 e.preventDefault();
//             };
//             $('body').append('<div class="alert yes24"><img src="../images/alert1.png" alt="준비중 이미지"></div>')

//             $('a[href="#"]').click(function(e){
//             e.preventDefault();
//             // 효과 메서드 나오도록 코딩
//             $('.alert').stop().fadeIn(500);
//             // 3초후에 자동으로 사라지도록 코딩
//             setTimeout(function(){
//                 $('.alert').stop().fadeOut(500);
//             },2000);

//             });
//         });
    </script>
    <!-- Header Scroll -->
    <script src="../js/scroll_header.js"></script>

</body>
</html>