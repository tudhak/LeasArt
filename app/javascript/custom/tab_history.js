// The code below allows to change the current page history so that the right tab gets displayed on reload.

const historyUpdate = function (elementId) {
  const tab = document.getElementById(elementId);
  const tabId = `#${tab.id}`;
  tab.addEventListener("click", () => {
    window.location.hash = tabId;
    history.pushState(null, null, tabId);
  });
};

document.addEventListener("turbo:load", () => {
  historyUpdate("items-tab");
  historyUpdate("bookings-tab");
  historyUpdate("booked-items-tab");
});
