export function reminder() {
    const reminders_list = document.getElementById("reminders-list");
    const reminder = document.createElement("div");
    reminder.classList.add("reminder");

    // Create Check-circle portion of the reminder
    const check_circle = document.createElement("label");
    check_circle.classList.add("check-circle");

    const checkbox = document.createElement("input");
    checkbox.type = "checkbox";
    checkbox.id = "checkbox_input";
    check_circle.appendChild(checkbox);

    const checkmark = document.createElement("span");
    checkmark.classList.add("checkmark");
    check_circle.appendChild(checkmark);

    reminder.appendChild(check_circle);

    // Create text portion of the reminder 
    const text_label = document.createElement("label");
    text_label.classList.add("reminder-label");

    const text_input = document.createElement("input");
    text_input.type = "text";
    text_input.id = "text-input";
    text_input.classList.add("box");
    text_label.appendChild(text_input);
    reminder.appendChild(text_label);

    reminders_list.appendChild(reminder);
    text_input.focus();
}