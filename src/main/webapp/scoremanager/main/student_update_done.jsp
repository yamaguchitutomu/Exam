<%@page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp" />
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

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <!-- 完了通知カード -->
                <div class="card shadow border-0">
                    <div class="card-body text-center p-5">
                        <div class="mb-4">
                            <!-- チェックアイコン（Bootstrap Icons等がない場合の代用） -->
                            <span class="display-1 text-success">
                                <i class="bi bi-check-circle-fill"></i>
                                <svg xmlns="http://www.w3.org/2000/svg" width="64" height="64" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
                                  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                                  <path d="m10.97 4.97-.02.022-3.473 4.425-2.093-2.094a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05"/>
                                </svg>
                            </span>
                        </div>
                        
                        <h2 class="h4 fw-bold mb-3">学生情報変更</h2>
                        <p class="text-secondary mb-4">変更内容を保存しました。</p>
                        
                        <hr class="my-4">
                        
                        <div class="d-grid gap-2">
                            <a href="StudentList.action" class="btn btn-outline-primary btn-lg">
                                学生一覧へ戻る
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
<jsp:include page="footer.jsp" />