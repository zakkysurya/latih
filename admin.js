let act = new Main();
get_Data();
async function get_Data() {
	const result = await act.get_data_admin();
	console.log(result);
}

let btn_logout = document.querySelector("#btn_logout");

btn_logout.addEventListener("click", (e) => {
	e.preventDefault();
	window.location.href = "index.php";
});
