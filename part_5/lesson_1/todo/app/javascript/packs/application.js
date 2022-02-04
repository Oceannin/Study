import Rails from "@rails/ujs"

Rails.start()

window.addEventListener("load", () => {
  const destroy_links = document.querySelectorAll("a.destroy[data-remote]");
  destroy_links.forEach((element) => {
    element.addEventListener("ajax:success", () => {
      const tr = element.closest('tr');
      tr.remove();
    });
  });

  const active_links = document.querySelectorAll("tr a.toggle[data-remote]");
  active_links.forEach((element) => {
    element.addEventListener("ajax:success", (event) => {
      element.innerHTML = element.innerHTML == "Active" ? "Disactive" : "Active"
    });
  });

  const email_field = document.querySelector("input#user_email");
  const submit_button = document.querySelector(".actions input[value^=Sign]");
  if(email_field) {
    email_field.addEventListener("input", (event) => {
      submit_button.disabled = false;
    });
  }

  const register_form = document.querySelector("form#new_user");
  const email_regex = RegExp(/^([\w.*-]+@([\w-]+\.)+[\w-]{2,4})?$/);
  const email_error = document.querySelector("#email_error");
  if(register_form) {
    register_form.addEventListener("submit", (event) => {
      let match = email_regex.exec(email_field.value);
      if(!match) {
        email_error.style.display = 'block';
        event.preventDefault();
      }
    });
  }
});