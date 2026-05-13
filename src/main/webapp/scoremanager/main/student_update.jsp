<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/header.jsp"/>

<body>
    <!-- ナビゲーションバー -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4 shadow-sm">
        <div class="container">
            <span class="navbar-brand fw-bold">得点管理システム</span>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="Menu.action">ホーム</a></li>
                    <li class="nav-item"><a class="nav-link active" href="StudentList.action">学生管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="TestList.action">成績管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="SubjectList.action">科目管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="ClassList.action">クラス管理</a></li>
                    <li class="nav-item"><a class="nav-link" href="TeacherList.action">ユーザ管理</a></li>
                </ul>
            </div>
        </div>
    </nav>

<div class="layout">

    <main class="main-content">
        <h2>学生情報変更</h2>

        <form action="StudentUpdateExecute.action" method="post">
            <table class="form-table">
                <tr>
                    <td class="label-cell"><label>入学年度</label></td>
                    <td><input type="text" name="ent_year" value="${ent_year}" readonly></td>
                </tr>
                <tr>
                    <td class="label-cell"><label>学生番号</label></td>
                    <td><input type="text" name="no" value="${no}" readonly></td>
                </tr>
                <tr>
                    <td class="label-cell"><label>氏名</label></td>
                    <td><input type="text" name="name" value="${name}" maxlength="30" required></td>
                </tr>
                <tr>
                    <td class="label-cell"><label>クラス</label></td>
                    <td>
                        <select name="class_num">
                            <c:forEach var="class_num" items="${classList}">
                                <option value="${class_num}" ${class_num == currentClass ? 'selected' : ''}>
                                    ${class_num}
                                </option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="label-cell"><label>在学中</label></td>
                    <td>
                        <input type="checkbox" name="is_attend" value="1" ${is_attend == '1' ? 'checked' : ''}>
                    </td>
                </tr>
            </table>

            <div class="button-area">
                <input type="submit" name="login" value="変更">
            </div>
        </form>

        <div class="button-area">
            <a href="StudentList.action">戻る</a>
        </div>
    </main>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

<jsp:include page="/footer.jsp"/>