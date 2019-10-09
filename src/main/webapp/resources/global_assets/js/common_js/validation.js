/**
 * Validations----------- 5/8/2019
 */

function trim(el) {
	el.value = el.value.replace(/(^\s*)|(\s*$)/gi, ""). // removes leading and
														// trailing spaces
	replace(/[ ]{2,}/gi, " "). // replaces multiple spaces with one space
	replace(/\n +/, "\n"); // Removes spaces after newlines
	return;
}


function validatePAN(panNo) {
	var regex1 = /^[A-Z]{5}\d{4}[A-Z]{1}$/;
	if (regex1.test($.trim(panNo)) == false) {
		return false;
	}
	return true;
}

function validateEmail(email) {

	var eml = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

	if (eml.test($.trim(email)) == false) {

		return false;

	}

	return true;

}

function validateMobile(mobile) {
	var mob = /^[1-9]{1}[0-9]{9}$/;

	if (mob.test($.trim(mobile)) == false) {

		// alert("Please enter a valid email address .");
		return false;

	}
	return true;

}


function validateMobileEnterOnlyDigits(mobile) {
	
	return mobile.value=mobile.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');

}



function validateEmail1(email,msg) {
	alert("hi");

	var eml = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

	if (eml.test($.trim(email)) == false) {

		return msg.hide();
	}

	return msg.show();

}





