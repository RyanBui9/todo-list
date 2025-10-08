import "./styles.css";
import { reminder } from "./reminders.js"

console.log("Hello World");

const add_reminder_button = document.getElementById("plus-button");
add_reminder_button.addEventListener("click", (e) => {
    reminder();
});
