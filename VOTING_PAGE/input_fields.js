// input_fields.js

function collectVoterInformation() {
    var container = document.createElement("div");
    container.classList.add("input-container");

    var addressLabel = document.createElement("label");
    addressLabel.textContent = "Address (State, City, Street): ";
    var addressInput = document.createElement("input");
    addressInput.type = "text";
    addressInput.name = "address";
    container.appendChild(addressLabel);
    container.appendChild(addressInput);
    container.appendChild(document.createElement("br"));

    var emailLabel = document.createElement("label");
    emailLabel.textContent = "Email: ";
    var emailInput = document.createElement("input");
    emailInput.type = "email";
    emailInput.name = "email";
    container.appendChild(emailLabel);
    container.appendChild(emailInput);
    container.appendChild(document.createElement("br"));

    var phoneLabel = document.createElement("label");
    phoneLabel.textContent = "Phone Number: ";
    var phoneInput = document.createElement("input");
    phoneInput.type = "tel";
    phoneInput.name = "phone";
    container.appendChild(phoneLabel);
    container.appendChild(phoneInput);
    container.appendChild(document.createElement("br"));

    var birthDateLabel = document.createElement("label");
    birthDateLabel.textContent = "Birth Date (YYYY-MM-DD): ";
    var birthDateInput = document.createElement("input");
    birthDateInput.type = "text";
    birthDateInput.name = "birthDate";
    container.appendChild(birthDateLabel);
    container.appendChild(birthDateInput);
    container.appendChild(document.createElement("br"));

    var digitalSignatureLabel = document.createElement("label");
    digitalSignatureLabel.textContent = "Digital Signature: ";
    var digitalSignatureCheckbox = document.createElement("input");
    digitalSignatureCheckbox.type = "checkbox";
    digitalSignatureCheckbox.name = "digitalSignature";
    var digitalSignatureText = document.createTextNode("By checking this box, you confirm that the information provided is accurate and that you understand the legal repercussions for providing false information.");
    container.appendChild(digitalSignatureLabel);
    container.appendChild(digitalSignatureCheckbox);
    container.appendChild(digitalSignatureText);
    container.appendChild(document.createElement("br"));

    var driverLicenseLabel = document.createElement("label");
    driverLicenseLabel.textContent = "Driver's License or State ID: ";
    var driverLicenseInput = document.createElement("input");
    driverLicenseInput.type = "text";
    driverLicenseInput.name = "driverLicense";
    container.appendChild(driverLicenseLabel);
    container.appendChild(driverLicenseInput);
    container.appendChild(document.createElement("br"));

    // Remove existing input container if it exists
    var existingContainer = document.querySelector(".input-container");
    if (existingContainer) {
        existingContainer.remove();
    }

    // Append the container to the document body or wherever you want to display it
    document.body.appendChild(container);
}

// Attach the function to a button click event
var button = document.getElementById("collect-info");
button.addEventListener("click", collectVoterInformation);
