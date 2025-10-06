export function reminder() {
    const reminders_list = document.getElementById("reminders-list");
    const reminder = document.createElement("div");
    reminder.classList.add("reminder");

    // Create Check-circle portion of the reminder
    const check_circle = document.createElement("button");
    check_circle.classList.add("check-circle");
    reminder.appendChild(check_circle);

    // Create text portion of the reminder 
    const text_container = document.createElement("div");
    text_container.classList.add("reminder-text");
    text_container.textContent = "Placeholder";
    reminder.appendChild(text_container);

    reminders_list.appendChild(reminder);
}