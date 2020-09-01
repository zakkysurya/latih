let act = new Main();

let btn_login_form = document.querySelector("#btn_masuk");

btn_login_form.addEventListener("click", async (e) => {
	e.preventDefault();
	let msg_login = document.getElementById("msg_login");
	let login_form = document.querySelector("#form_login");
	let usr = login_form.querySelector("#usr_name").value;
	let pass = login_form.querySelector("#usr_pass").value;

	let formData = new FormData();
	formData.append("usr", usr);
	formData.append("pass", pass);
	let d = await act.login(formData);

	if (d.log) {
		msg_login.innerText = "";
		if (d.role === "admin") {
			window.location.href = "admin.php";
		} else {
			window.location.href = "user.php";
		}
	} else {
		msg_login.innerText = d.msg;
	}
});
