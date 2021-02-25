<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bootstrap.jsp</title>
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

<script>
	$(function() {
		$('#liveToastBtn').on("click", function() {
			$(".toast").toast("show");
		})
		$('.btn').tooltip();
		$("#btnRegister").on("click", function(){
			$(".modal").modal("show");
		})

	})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-2 border">
				<a href="#" class="btn btn-outline-secondary" data-toggle="tooltip"
					data-placement="bottom" title="로그인페이지로 이동">로그인</a> 
					<span class="btn btn-outline-warning" id="btnRegister">회원가입</span>
				<button class="btn btn-outline-success">등록</button>
			</div>
			<div class="col-8 border">
				<button type="button" class="btn btn-primary" id="liveToastBtn">Show
					live toast</button>
			</div>
			<div class="col-2 border">third</div>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-12 border">
				<table class="table table-bordered">
					<thead class="table-dark">
						<tr>
							<td>번호</td>
							<td>이름</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>a</td>
						</tr>
						<tr>
							<td>2</td>
							<td>b</td>
						</tr>
						<tr>
							<td>3</td>
							<td>c</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-lg-6 col-md-12 border"></div>
		</div>
		<div class="alert alert-primary" role="alert">
			A simple warning alert—check it out! <a href="#" class="alert-link">an
				example link</a> <span class="badge badge-light">Success</span>
		</div>
		<div class="row">
			<div class="card mr-5 pt-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card mr-5" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<img src="..." class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
		<!-- end of content -->
	</div>
	<!-- end of container -->

	<!-- toast start -->
	<div class="position-fixed bottom-0 right-0 p-3"
		style="z-index: 5; right: 0; top: 0;">
		<div id="liveToast" class="toast hide" role="alert"
			aria-live="assertive" aria-atomic="true" data-delay="2000">
			<div class="toast-header">
				<img src="..." class="rounded mr-2" alt="..."> <strong
					class="mr-auto">Bootstrap</strong> <small>11 mins ago</small>
				<button type="button" class="ml-2 mb-1 close" data-dismiss="toast"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="toast-body">Hello, world! This is a toast message.</div>
		</div>
	</div>
	<!-- toast end -->

	<!-- modal start -->
	<div class="modal hide" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group row">
							<label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" readonly class="form-control-plaintext"
									id="staticEmail" value="email@example.com">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputHobby" class="col-sm-2 col-form-label">Hobby</label>
							<div class="col-sm-10 offset-sm-2">
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" id="gridCheck1">
									<label class="form-check-label" for="gridCheck1"> 독서 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" id="gridCheck2">
									<label class="form-check-label" for="gridCheck2"> 음악감상
									</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" id="gridCheck3">
									<label class="form-check-label" for="gridCheck3"> 조깅 </label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="checkbox" id="gridCheck4">
									<label class="form-check-label" for="gridCheck4"> 뜨개질 </label>
								</div>
							</div>
						</div>
						<div class="form-group row justify-content-center">
							<button class="btn btn-info">등록</button>
							<button class="btn btn-success">취소</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal end -->

</body>
</html>