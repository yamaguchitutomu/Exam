<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/header.jsp"/>
<jsp:include page="nav.jsp"/>

<section class="content-area">
    <div class="container-fluid pt-4">
        
        <!-- タイトルエリア -->
        <h2 class="h3 mb-4 fw-normal bg-secondary bg-opacity-10 py-2 px-4">
            学生情報登録
        </h2>

        <!-- 完了カード -->
        <div class="card shadow-sm mx-auto" style="max-width: 600px;">
            <div class="card-body text-center py-5">
                
                <!-- 完了アイコン（Bootstrap Icons） -->
                <i class="bi bi-check-circle-fill text-success" style="font-size: 4rem;"></i>

                <h4 class="fw-bold mt-3 mb-3">登録が完了しました</h4>
                <p class="text-muted mb-4">学生情報をデータベースに保存しました。</p>

                <!-- アクションボタン -->
                <div class="d-grid gap-3 col-10 mx-auto mt-4">
                    <a href="StudentCreate.action" class="btn btn-primary btn-lg">続けて登録する</a>
                    <a href="StudentList.action" class="btn btn-outline-secondary btn-lg">学生一覧へ戻る</a>
                </div>

            </div>
        </div>

    </div>
</section>

<style>
/* サイドバーの基本設定（既存のものを維持・微調整） */
.sidebar {
    width: 220px;
    position: fixed;
    top: 56px; /* navbarの高さに合わせる */
    left: 0;
    height: calc(100vh - 56px);
    background-color: #f8f9fa;
    border-right: 1px solid #dee2e6;
    padding: 20px;
    z-index: 1000;
}

/* メインコンテンツの表示領域 */
.content-area {
    margin-left: 220px; /* サイドバーの幅と同じに設定 */
    padding-right: 2rem;
}

/* アイコンフォントが読み込まれていない場合のフォールバック */
.bi-check-circle-fill::before {
    content: "✓";
    font-style: normal;
    font-weight: bold;
}
</style>

<jsp:include page="/footer.jsp"/>