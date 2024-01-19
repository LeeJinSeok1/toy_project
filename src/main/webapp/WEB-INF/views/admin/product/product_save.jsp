<%--
  Created by IntelliJ IDEA.
  User: ijinseog
  Date: 2024/01/19
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/admin_common/header.jsp" %>
<script src="/resources/js/jquery-3.7.0.min.js"></script>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <%-- 메인상단 --%>
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">상품관리</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group me-2">
                <a class="btn btn-sm btn-outline-secondary" href="/admin_product_page">목록으로</a>
            </div>
        </div>
    </div>

    <div>
        <form id="productForm" class="form-control" enctype="multipart/form-data" class="form-control">
            <%-- 상품명 --%>
            <div class="box">
                <label for="product_name">상품명</label>
                <input type="text" id="product_name" name="product_name" class="form-control box" placeholder="상품명을 입력해주세요." style="width: 30%;">
            </div>

            <%-- 1차분류, 2차분류, 3차분류 --%>
            <div class="box">
                <label for="product_category_01">1차분류 선택</label>
                <select id="product_category_01" name="product_category_01" class="form-control box_child" style="width:250px">
                    <option value="default">1차분류를 선택하세요.</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>

                <label for="product_category_02">2차분류 선택</label>
                <select id="product_category_02" name="product_category_02" class="form-control box_child" style="width:250px">
                    <option value="default">2차분류를 선택하세요.</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>

                <label for="product_category_03">3차분류 선택</label>
                <select id="product_category_03" name="product_category_03" class="form-control box_child" style="width:250px">
                    <option value="default">3차분류를 선택하세요.</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
            </div>

            <div class="box">
                <label for="product_price">가격</label>
                <input type="text" id="product_price" name="product_price" class="form-control box_child" style="width: 300px">
                <label for="sale_check_box">할인</label>
                <input type="checkbox" id="sale_check_box" class="box_child">
                <div style="display: none" id="sale_price_box">
                    <label for="product_sale_price">할인가격</label>
                    <input type="text" id="product_sale_price" name="product_sale_price" class="form-control" style="width: 300px">
                </div>
            </div>

            <%-- 상품 특징 --%>
            <div class="box">
                <label for="product_point_01">특징_01</label>
                <input type="text" id="product_point_01" name="product_point_01" class="form-control box_child" style="width: 300px">

                <label for="product_point_02">특징_02</label>
                <input type="text" id="product_point_02" name="product_point_02" class="form-control box_child" style="width: 300px">

                <label for="product_point_03">특징_03</label>
                <input type="text" id="product_point_03" name="product_point_03" class="form-control box_child" style="width: 300px">
            </div>

            <%-- 기본설명 --%>
            <div class="box">
                <label for="product_basic_content">기본설명</label>
                <textarea name="product_basic_content" id="product_basic_content" style="width: 100%; height: 300px" class="form-control"></textarea>
            </div>

            <%-- 썸네일 5장 --%>
            <div class="box">
                <label for="product_thumbnail_01">썸네일_01</label>
                <input type="file" id="product_thumbnail_01" name="product_thumbnail_01" class="form-control box_child" style="width: 30%;">

                <label for="product_thumbnail_02">썸네일_02</label>
                <input type="file" id="product_thumbnail_02" name="product_thumbnail_02" class="form-control box_child" style="width: 30%;">

                <label for="product_thumbnail_03">썸네일_03</label>
                <input type="file" id="product_thumbnail_03" name="product_thumbnail_03" class="form-control box_child" style="width: 30%;">

                <label for="product_thumbnail_04">썸네일_04</label>
                <input type="file" id="product_thumbnail_04" name="product_thumbnail_04" class="form-control box_child" style="width: 30%;">

                <label for="product_thumbnail_05">썸네일_05</label>
                <input type="file" id="product_thumbnail_05" name="product_thumbnail_05" class="form-control box_child" style="width: 30%;">
            </div>

            <%-- 상품설명 스마트 에디터 예정 --%>
            <div class="box">
                <label for="product_content">상품설명</label>
                <textarea name="product_content" id="product_content" class="form-control box" style="height: 500px"></textarea>
            </div>
            <%-- 여분 필드 --%>
            <div class="box">
                <label for="product_field_01">여분필드_01</label>
                <input type="text" id="product_field_01" name="product_field_01" class="form-control">

                <label for="product_field_02">여분필드_02</label>
                <input type="text" id="product_field_02" name="product_field_02" class="form-control">

                <label for="product_field_03">여분필드_03</label>
                <input type="text" id="product_field_03" name="product_field_03" class="form-control">

                <label for="product_field_04">여분필드_04</label>
                <input type="text" id="product_field_04" name="product_field_04" class="form-control">

                <label for="product_field_05">여분필드_05</label>
                <input type="text" id="product_field_05" name="product_field_05" class="form-control">
            </div>
                <div style="float: right; margin-top: 50px">
                    <input type="submit" class="btn btn-sm btn-outline-secondary" value="상품 등록">
                    <%--            <button class="btn btn-sm btn-outline-secondary" onclick="save_product()">상품 등록</button>--%>
                </div>
        </form>

    </div>

    <canvas class="my-4 w-100" id="myChart" width="900" height="1000px"></canvas>
</main>


<script>
<%--     상품 등록 요청 후 저장 여부 응답 --%>
    $(document).ready(function () {

        $("#productForm").submit(function (e) {
            e.preventDefault();

            // Create a FormData object
            var formData = new FormData($(this)[0]);


            $.ajax({
                url: "/product_save",
                type: "POST",
                data: formData,
                contentType: false,
                processData: false,
                success: function (response) {
                    if(response === 'save_success'){
                        alert("상품 등록을 완료했습니다.");
                        location.href="/admin_product_page";
                    }else if(response === 'db_save_fail'){
                        alert("데이터 저장에 실패하였습니다.");
                        location.href="/admin_product_page";
                    }else if(response === 'img_save_fail'){
                        alert("이미지 저장에 실패하였습니다.");
                        location.href="/admin_product_page";
                    }else{

                    }
                },
                error: function (xhr, status, error) {
                    alert("등록 오류입니다. 관리자에게 문의하세요.")
                    console.error(xhr.responseText);
                }
            });
        });
    });
<%--     상품 등록 요청 후 저장 여부 응답 --%>

    // 할인 가격 보이게 안 보이게
    $(document).ready(function() {
        $('#sale_check_box').on('change', function() {
            $('#sale_price_box').toggle(this.checked);
        });
    });
</script>

<%@ include file="/WEB-INF/views/admin_common/footer.jsp" %>
