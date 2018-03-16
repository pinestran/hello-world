<%@page buffer="none" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="cms" uri="http://www.opencms.org/taglib/cms"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<cms:formatter var="content">

	<c:set var="title" value="${content.value.Title}"/>
	<c:set var="nav" value="${content.valueList.NavigationBar}"/>
	<header class="header">
        <div class="container">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand scroll-top logo"><b>${title}</b></a>
                </div>
                <!--/.navbar-header-->
                <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav" id="mainNav">
                        <li class="active"><a href="#home" class="scroll-link">Home</a></li>
						<c:forEach var="i" items="${nav}">
                        <li><a href="#${i.value.Hashtag}" class="scroll-link">${i.value.Navigation}</a></li>
						</c:forEach>
                    </ul>
                </div>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
        <!--/.container-->
		
		<!--<div>
		
		<c:set var="navStartLevel">1</c:set>
			<cms:navigation type="forSite" startLevel="${navStartLevel}" endLevel="4" var="nav"/>
			<ul class="nav-side list-group sidebar-nav-v1">		
				<c:forEach items="${nav.items}" var="elem">
					<li class='nav-side-level-${elem.navTreeLevel - navStartLevel} 
							   list-group-item 
							   ${!elem.navigationLevel && nav.isActive[elem.resourceName]?"active":""}'>
						<a href="<cms:link>${elem.resourceName}</cms:link>">${elem.navText}</a>
					</li>
				</c:forEach>
			</ul>
		
		</div>-->
		
    </header>
	<c:if test="${not cms.element.inMemoryOnly and cms.edited}">
		${cms.reloadMarker}
	</c:if>
</cms:formatter>