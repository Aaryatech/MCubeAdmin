<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 <div class="other-gov-site other-gov-site-home" style="vertical-align: middle;">
            <div class="container">
            <div class="jcarousel-wrapper">
            <div class="jcarousel" id="slideshow">
                <ul>
              <c:forEach items="${sessionScope.image}" var="imageList" varStatus="count">
              
			  <li><a href="${imageList.urlLink}" target="_blank"><img src="${sessionScope.url}${imageList.sliderImage}" alt="${imageList.titleName}"  ></a></li>
								  
				</c:forEach>  
              </ul>
              </div>
                <a href="#" class="jcarousel-control-prev pegination-control"><i class="icon-arrowhead-thin-outline-to-the-left icon"></i></a>
            <a href="#" class="jcarousel-control-next pegination-control"><i class="icon-arrow-point-to-right icon"></i></a>

              </div>
              
            </div>
        </div>