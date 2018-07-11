<style type="text/css">
#overlayLoading {
	display: none;
	position:fixed;
    padding:0;
    margin:0;
    top:0;
    left:0;
    width: 100%;
    height: 100%;
    z-index: 10000000;
	background-color: rgba(0, 0, 0, 0.5);
}
#loadingImg {
	position: absolute;
	top: 40%;
	left: 50%;
	width: 200px;
	-webkit-animation:spin 1s linear infinite;
    -moz-animation:spin 1s linear infinite;
    animation:spin 1s linear infinite;
}
@-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
@-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
@keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }
</style>

<div id="overlayLoading">
	<img id="loadingImg" src="<c:url value='/resources/img/canvas.png' />"  alt="loading" style="" />
</div>
