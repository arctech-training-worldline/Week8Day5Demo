function enableValidation() {
    var elements = document.getElementsByClassName("enable-validate");

    var index = 1;
    for (const element of elements) {
        element.addEventListener('blur', (event) => {
            validate(index++);
        });
    }
}

function validate(val) {
    console.log(val);
    var elements = document.getElementsByClassName("enable-validate");

    var success = true;

    var index = 1;
    for (const element of elements) {

        if (val >= index || val == 0) {
            var flag = validateColor(element);
            success = success && flag;
        }
    }
}

function validateColor(inputElement) {
    if (inputElement.value == "") {
        inputElement.style.borderColor = "red";
        return false;
    }

    inputElement.style.borderColor = "green";
    return true;
}