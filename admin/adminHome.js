// This finds the ticket and the greeting inside the reply message box.
const selectedCustomerTicket = document.querySelector(".customer-ticket");
const replyGreeting = document.getElementById("reply-greeting");

// This prepares the greeting using the customer's name saved on the selected ticket.
function updateReplyGreeting() {
  if (!selectedCustomerTicket || !replyGreeting) {
    return;
  }

  const customerName = selectedCustomerTicket.dataset.customerName.trim();

  if (customerName !== "") {
    replyGreeting.textContent = `Hi ${customerName},`;
  } else {
    replyGreeting.textContent = "Hi [customer name],";
  }
}

updateReplyGreeting();
