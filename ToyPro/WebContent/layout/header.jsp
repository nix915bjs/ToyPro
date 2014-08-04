<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="header">
		
		<!-- logoContainer -->
    	<div class="logoContainer">
        	<div><a href="#" onclick="changeContent('../index/mainContent.jsp')"><img src="../images/logo_text.png" alt="" /></a></div>
            <div class="slogan">좋은 보육! 신나는 육아! 행복한 아이!</div>
        </div>
        
        <!-- menu_join -->
        <div class="menu_sub">
       		 <img src="../images/login.png"><img src="../images/sitemap.png">
        </div>
        
        <div class="clearfloat"></div>
        
        <!-- menu -->
        <div class="menu">
        	<ul>
            	<li>
            		<span id="intro"><a href="">소 개</a>
            		<ul class="localmenu">
            			<li>
            				<a href="">운영안내</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">오시는길</a>
            			</li>
            		</ul>
            		</span>
            	</li>
                <li>
                	<span id="info"><a href="">이용안내</a>
            		<ul class="localmenu">
            			<li>
            				<a href="">이용안내</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">이용수칙</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">놀이방안내</a>
            			</li>
            		</ul>
            		</span>
                </li>
                <li>
                	<span id="toySearch"><a href="changeContent('../toysearch/search.jsp')">장난감검색</a>
                	<ul class="localmenu">
            			<li>
            				<a href="#" onclick="changeContent('../toysearch/search.jsp')">장난감검색</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">NEW 장난감목록</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">BEST 장난감목록</a>
            			</li>
            		</ul>
            		</span>
                </li>
                <li>
                	<span id="kidsBank"><a href="">키즈뱅크</a>
                	<ul class="localmenu">
            			<li>
            				<a href="">키즈뱅크란</a>
            			</li>
            			<p/>
            			<li id="toyMargin">
            				<a href="">장난감기부하기</a>
            			</li>
            			<p/>
            			<li id="toyMargin">
            				<a href="">장난감교환하기</a>
            			</li>
            		</ul>
            		</span>
                </li>
                <li>
                	<span id="community"><a href="">커뮤니티</a>
                	<ul class="localmenu">
            			<li>
            				<a href="#" onclick="changeContent('/app/notice/noticeList')">공지사항</a>
            				<!-- <a href="../notice/notice.jsp">공지사항</a> -->
            			</li>
            			<p/>
            			<li>
            				<a href="">사진갤러리</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">자유게시판</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">FAQ</a>
            			</li>
            			<p/>
            			<li>
            				<a href="">희망장난감신청</a>
            			</li>
            		</ul>
            		</span>
                </li>
            </ul>	
        </div>
</div>