let btn_logout = document.querySelector("#btn_logout");

btn_logout.addEventListener("click", (e) => {
	e.preventDefault();
	window.location.href = "index.php";
});
