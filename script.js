class Main {
	async login(formData) {
		const res = await fetch("login.php", {
			method: "POST",
			body: formData,
		});
		const data = await res.json();
		return data;
	}

	async get_data_admin() {
		const res = await fetch("data_admin.php");
		const data = await res.json();
		return data;
	}
}

// class Rumus {
// 	luasLingkaran(r) {
// 		let l = 3.14 * r;
// 		return l;
// 	}
// }
// luas = new Rumus();
// document.getElementById("jari").addEventListener("keyup", function () {
// 	let hasil = document.getElementById("hasil");
// 	hasil.value = luas.luasLingkaran(this.value);
// });

//make model for javascript
// class Model {
// 	insert_data(tbl, data) {
// 		return `table ${tbl} dengan data ${data}`;
// 	}

// 	delete_data(tbl, where) {
// 		return `delete data from ${tbl} where ${where}`;
// 	}

// 	get_all_data(tbl) {
// 		return `get all data from ${tbl}`;
// 	}

// 	get_where_data(tbl, where) {
// 		return ` get where data from ${tbl} where ${where}`;
// 	}
// }

// exc = new Model();
