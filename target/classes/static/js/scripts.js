/**
 * 
 */
// Basic script to confirm logout action
function confirmLogout() {
    return confirm("Are you sure you want to log out?");
}

// Adding event listener to all forms to validate before submission
document.querySelectorAll('form').forEach(function(form) {
    form.addEventListener('submit', function(event) {
        // Example: Basic validation before submitting the form
        let username = form.querySelector('input[name="username"]');
        let password = form.querySelector('input[name="password"]');
        
        if (username.value.trim() === '' || password.value.trim() === '') {
            alert('Please fill out all fields!');
            event.preventDefault();
        }
    });
});
