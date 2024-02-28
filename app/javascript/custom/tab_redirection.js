// Displays proper bootstrap tab after clicking corresponding link

document.addEventListener("turbo:load", () => {
  const hash = window.location.hash;
  const trigger = document.querySelector(hash);
  const tab = new bootstrap.Tab(trigger);
  tab.show();
});
