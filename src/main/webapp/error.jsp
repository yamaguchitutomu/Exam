<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--  入力チェックエラー（param.messageがある）の時はヘッダーを出さない --%>
<c:if test="${empty param.message}">
    <jsp:include page="/header.jsp" />
</c:if>

<div class="error-container">
    <c:choose>
        <%-- ：入力チェックエラー（メッセージが渡された時） --%>
        <c:when test="${not empty param.message and param.message != ''}">
            <ul class="error-message list-unstyled">
                <li><c:out value="${param.message}" /></li>
            </ul>
        </c:when>

        <%-- システムエラー（直接このページが開かれた時） --%>
        <c:otherwise>
            <ul class="error-message list-unstyled">
                <li>エラーが発生しました</li>
            </ul>
        </c:otherwise>
    </c:choose>
    
    
</div>

<%--  入力チェックエラーの時はフッターも出さない --%>
<c:if test="${empty param.message}">
    <jsp:include page="/footer.jsp" />
</c:if>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>