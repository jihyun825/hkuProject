<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<link rel="stylesheet" href="/css/table.css">
<link rel="stylesheet" href="/css/pro-jh.css">
<style>
.form-control:disabled, .form-control[readonly] {
	background: #fafafa;
	opacity: 1;
}

.col-form-label {
	padding-top: calc(0.375rem + 1px);
	padding-bottom: calc(0.375rem + 1px);
	margin-bottom: 0;
	font-size: 16px;
	line-height: 1.5;
	color: #716f6f;
}

.bootstrap-select .dropdown-toggle .filter-option-inner-inner {
	overflow: hidden;
	font-size: 14px;
}

.text {
	font-size: 15px;
}

.active-projects thead tr th {
	background-color: #800000;
	font-size: 14px;
}

.active-projects.manage-client tbody tr td:last-child {
	text-align: center;
}

.active-projects .tbl-caption {
	padding: 0px;
}

.form-control {
	font-size: 14px;
	color: #535353;
}

#srcSel {
	width: 100px;
	text-align: center;
	border: 1px solid #cfc8c8;
	border-radius: 11px;
	height: 30px;
}

.active-projects tbody tr td {
	font-size: 15px;
}
</style>

<div class="content-body">
	<div class="container-fluid">
		<!-- row -->
		<div class="row">
			<div class="col-lg-12" style="padding-bottom: 0;">
				<div class="card">
					<div class="card-header" style="height: 60px;">
						<h4 class="card-title"
							style="font-weight: bold; font-size: 1.2em; color: #800000;">
							과제상세</h4>
						<div class="col-lg-7 ms-auto" style="padding-left: 52%;">
							<button type="button" id="listBtn" class="btn btn-primary">목록</button>
						</div>
					</div>
					<div class="card-body" style="height: 410px;">
						<div class="form-validation">
						
						<!-- 과제 상세 -->
							<form class="needs-validation">
								<input type="hidden" name="asmNo" id="asmNo"
									value="${assignVo.asmNo}"> 
									<input type="hidden"
									name="lecapNo" id="lecapNo" value="${assignVo.lecapNo}">
								<div class="row">
									<div class="col-xl-12">
										<div class="mb-3 row">
											<label class="col-lg-1 col-form-label"
												for="validationCustom01">교수명 </label>
											<div class="col-lg-3">
												<input type="text" class="form-control"
													id="validationCustom01" disabled
													value=${assignVo.asmProNm }>
												<div class="invalid-feedback"></div>
											</div>
											<label class="col-lg-1 col-form-label"
												for="validationCustom02">과목명 <span
												class="text-danger"></span>
											</label>
											<div class="col-lg-3">
												<input type="text" class="form-control" value="${subNm }"
													disabled name="subNm">
												<div class="invalid-feedback"></div>
											</div>
										</div>
										<div class="mb-3 row">
											<label class="col-lg-1 col-form-label"
												for="validationCustom03">제목<span class="text-danger"></span>
											</label>
											<div class="col-lg-7">
												<input type="text" id="asmTtl" disabled class="form-control"
													id="validationCustom03" name="asmTtl"
													value="${assignVo.asmTtl}">
												<div class="invalid-feedback"></div>
											</div>
										</div>
										<div class="mb-3 row">
											<label class="col-lg-1 col-form-label"
												for="validationCustom04">내용 <span
												class="text-danger"></span>
											</label>
											<div class="col-lg-7">
												<textarea id="asmCn" class="form-control h-50"
													id="validationCustom04" rows="5" disabled name="asmCn">${assignVo.asmCn}</textarea>
												<div class="invalid-feedback"></div>
											</div>
										</div>
										<div class="mb-3 row">
											<label class="col-lg-1 col-form-label"
												for="validationCustom05">주차 <span
												class="text-danger"></span>
											</label>
											<div class="col-lg-4">
												<div
													class="dropdown bootstrap-select default-select wide form-control">
													<select class="default-select wide form-control"
														id="validationCustom05" disabled>
														<c:forEach var="i" begin="1" end="15" step="1">
															<option name="asmWeek"><span>${assignVo.asmWeek}주차</span></option>
														</c:forEach>
													</select>

													<div class="dropdown-menu ">
														<div class="inner show" role="listbox" id="bs-select-1"
															tabindex="-1">
															<ul class="dropdown-menu inner show" role="presentation"></ul>
														</div>
													</div>
												</div>
												<div class="invalid-feedback"></div>
											</div>
										</div>
										<div class="mb-3 row">
											<label class="col-lg-1 col-form-label"
												for="validationCustom06">파일 <span
												class="text-danger"></span>
											</label>
											<div class="col-lg-4">
												<ul
													class="mailbox-attachments d-flex align-items-stretch clearfix">
													<c:if test="${not empty assignVo.fileList }">
														<c:forEach items="${assignVo.fileList }" var="file">
															<li>
																<div class="mailbox-attachment-info">
																	<a href="/download${file.filePath}"
																		download="${file.fileOrgnlFileNm }"
																		class="mailbox-attachment-name"> 
																		<i class="fas fa-paperclip"></i>
																	</a> <span class="mailbox-attachment-size clearfix mt-1">
																		<span>${file.fileOrgnlFileNm }</span> 
																		<a href="/download${file.filePath}"
																		download="${file.fileOrgnlFileNm }"> <span
																			class="btn btn-default btn-sm float-right"> 
																			<i class="fas fa-download"></i>
																		</span>
																	</a>
																	</span>
																</div>
															</li>
														</c:forEach>
													</c:if>
													<c:if test="${empty assignVo.fileList }">파일이 존재하지 않습니다.</c:if>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 학생 과제 제출 -->
			<div class="col-xl-12">
				<div class="card">
					<div class="card-body p-0">
						<div class="tbl-caption"
							style="padding-top: 15px; padding-left: 15px;">
							<h4 class="card-title"
								style="font-weight: bold; font-size: 1.2em; color:#800000;">
								과제 제출</h4>
							<hr>
						</div>
						<div class="card-body" style="height:350px;">
							<div class="form-validation">
							<c:if test="${assignVo.avlCode eq 'N' }">
								<form class="needs-validation" id="assignForm" 
									method="post" enctype="multipart/form-data">
									<input type="hidden" name="asmNo" id="asmNo" value="${assignVo.asmNo}"> 
									<input type="hidden" name="lecapNo" value="${assignVo.lecapNo }">
									<div class="row">
										<div class="col-xl-12" style="height:350px;">
											<div class="mb-3 row">
												<label class="col-lg-1 col-form-label"
													for="validationCustom01">성명 </label>
												<div class="col-lg-3">
													<input type="text" class="form-control" style="margin-left: -13px;"
														id="validationCustom01" name="stdNm" value=${std.stdNm }>
													<div class="invalid-feedback"></div>
												</div>
												<label class="col-lg-1 col-form-label"
													for="validationCustom02">학과 <span
													class="text-danger"></span>
												</label>
												<div class="col-lg-3">
													<input type="text" class="form-control"
														value="${assignVo.deptNm }" name="deptNm">
													<div class="invalid-feedback"></div>
												</div>
											</div>
											<div class="mb-3 row">
												<label class="col-lg-1 col-form-label"
													for="validationCustom06">파일 <span
													class="text-danger"></span>
												</label> <input type="file" style="width: 375px;"
													class="form-control" name="assignFile" id="atchFileNo"
													placeholder="파일을 선택하세요" value="${atchFileNo }">
											</div>
											<hr>
											<div class="col-lg-7 ms-auto" style="padding-left: 52%;">
												<button type="button" id="regiBtn" class="btn btn-primary">등록</button>
											</div>
										</div>
									</div>
									<sec:csrfInput/>
								</form>
								</c:if>
								<c:if test="${assignVo.avlCode eq 'Y' }">
									<div id="statusDiv">
										<table class="table"> 
											<thead> 
												<tr> 
													<th>No</th> 
													<th>성명</th> 
													<th>학과</th> 
													<th>학번</th> 
													<th>과제주차</th> 
													<th>제출일자</th> 
													<th>제출여부</th> 
													<th></th> 
												</tr> 
											</thead> 
											<tbody id="tBody">
												<tr>
													<td>1</td>
													<td>${std.stdNm}</td>
													<td>${assignVo.deptNm}</td>
													<td>${std.stdNo}</td>
													<td>${assignVo.asmWeek}</td>
													<td>${assignVo.asmsbDt }</td>
													<td style="color:red;">제출완료</td>
													<td>
													<button type="button" id="deleteBtn"
														style="padding: 0.5rem 1.0rem; width: 80px; "
														class="btn btn-primary">취소</button>
													</td>
												 </tr>
											</tbody> 
										</table>
									</div>
								</c:if>
								<div id="myDiv">
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
$(function() {
	var regiBtn = $("#regiBtn");
	var assignForm = $("#assignForm");
	
	regiBtn.on("click", function() {
		console.log(assignForm[0]);
		var formData = new FormData(assignForm[0]);
		var tBody = $("#tBody");
		
		var atchFileNo = $("#atchFileNo").val();
		if (atchFileNo == null || atchFileNo == '') {
			swal("", "과제 파일을 등록해주세요!", "error");
			return false;
		} 

		$.ajax({
			url : "/hku/student/assignmentDetail",
			type : "post",
			data : formData,
			contentType : false,
			processData : false,
			cache : false,
			dataType : "text",
			beforeSend : function(xhr){
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(res) {
				console.log("res!!!!!", res);
				
				data = "";
				if (res == "success") {
                    swal("", "과제 제출이 완료되었습니다!", "success");
                    location.reload();
//                     var myDiv = $("#myDiv");
//                     data += `<table class="table"> 
// 								<thead> 
// 									<tr> 
// 										<th>No</th> 
// 										<th>성명</th> 
// 										<th>학과</th> 
// 										<th>학번</th> 
// 										<th>과제주차</th> 
// 										<th>제출일자</th> 
// 									</tr> 
// 								</thead> 
// 								<tbody id="tBody">
// 									<tr>
// 										<td>1</td>
// 										<td>${std.stdNm}</td>
// 										<td>${deptNm}</td>
// 										<td>${std.stdNo}</td>
// 										<td>${res.asmWeek}</td>
// 										<td>${res.asmsbDt }</td>
// 									 </tr>
// 								</tbody> 
// 							</table>`
// 				$("#assignForm").remove();
// 				$("#statusDiv").remove();
// 				myDiv.html(data);
                } else {
                    swal("", "과제 제출에 실패했습니다!", "error");
                }
				
// 				$("#statusDiv").css('display','block');
			}
		})

	})
	
	var deleteBtn = $("#deleteBtn");
	deleteBtn.on("click", function(){
		var asmNo = $("#asmNo").val();
		alert("asmNo : " + asmNo);
				
		var myData = {
			asmNo : asmNo
		}
		
		$.ajax({
			url : "/hku/student/deleteAssignment",
			type : "post",
			data : JSON.stringify(myData),
			contentType : "application/json;charset=utf-8",
			dataType : "text",
			beforeSend : function(xhr){
				xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
			},
			success : function(res){
				console.log("성공?!", res);
				
			     swal({
                     title: "과제 제출을 취소하시겠습니까?",
                     text: "취소 후 복구 불가합니다",
                     icon: "warning",
                     buttons: true,
                     dangerMode: true,
                 })
                     .then((willDelete) => {
                         if (willDelete) {
                           location.reload();  
							swal("", "삭제가 완료되었습니다", "success");
                          };
                     });
			}
		})
		
	})
	
	$('#listBtn').on('click', function(){
		location.href = "/hku/student/stdAssignmentList/" + $('#lecapNo').val();
	});
})	
	
</script>