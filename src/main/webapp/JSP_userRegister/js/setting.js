function setting(idx, title, height, currentWeight, age, state, kcal, carbs, protein, fat) {
	let frm = document.updateMypage; // 폼에 저장한다.
	
	frm.idx.value = idx;
	frm.updateBtn.value = title;
	frm.height.value = '';
	frm.height.focus();
	frm.currentWeight.value = '';
	frm.age.value = age;
	frm.state.value = state;
	frm.kcal.value = kcal;
	frm.carbs.value = carbs;
	frm.protein.value = protein;
	frm.fat.value = fat;
} 