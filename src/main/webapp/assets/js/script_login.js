function validateLoginForm() {
  const email = document.querySelector('.login input[name="email"]');
  const password = document.querySelector('.login input[name="pwd"]');
  let valid = true;

  // Clear previous errors
  clearError(email, 'login-email-error');
  clearError(password, 'login-password-error');

  if (!validateEmail(email.value)) {
    setError(email, 'login-email-error', 'Please enter a valid email.');
    valid = false;
  }

  if (!validatePassword(password.value)) {
    setError(password, 'login-password-error', 'Password must be at least 6 characters long and contain at least 1 uppercase letter, 1 lowercase letter, and 1 special character.');
    valid = false;
  }

  return valid;
}

function validateSignupForm() {
  const email = document.querySelector('.registration input[name="email"]');
  const password = document.querySelector('.registration input[name="pwd"]');
  const confirmPassword = document.querySelector('.registration input[name="cpwd"]');
  let valid = true;

  // Clear previous errors
  clearError(email, 'signup-email-error');
  clearError(password, 'signup-password-error');
  clearError(confirmPassword, 'signup-confirm-password-error');

  if (!validateEmail(email.value)) {
    setError(email, 'signup-email-error', 'Please enter a valid email.');
    valid = false;
  }

  if (!validatePassword(password.value)) {
    setError(password, 'signup-password-error', 'Password must be at least 6 characters long and contain at least 1 uppercase letter, 1 lowercase letter, and 1 special character.');
    valid = false;
  }

  if (confirmPassword.value.trim() === '') {
    setError(confirmPassword, 'signup-confirm-password-error', 'Please confirm your password.');
    valid = false;
  }

  if (password.value !== confirmPassword.value) {
    setError(confirmPassword, 'signup-confirm-password-error', 'Passwords do not match.');
    valid = false;
  }

  return valid;
}

function validateEmail(email) {
  const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return re.test(String(email).toLowerCase());
}

function validatePassword(password) {
  const re = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{6,}$/;
  return re.test(password);
}

function setError(input, errorId, message) {
  const errorElement = document.getElementById(errorId);
  input.classList.add('input-error');
  errorElement.textContent = message;
  errorElement.style.color = 'red';
  errorElement.style.marginTop = '5px';
}

function clearError(input, errorId) {
  const errorElement = document.getElementById(errorId);
  input.classList.remove('input-error');
  errorElement.textContent = '';
  errorElement.style.color = 'transparent'; // Hide the error message
  errorElement.style.fontWeight = 'normal';
  errorElement.style.marginTop = '0';
}
