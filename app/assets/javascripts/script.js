function initMenu() {
 const ham = document.querySelector('.ham');
 const menu = document.querySelector('.mobile-nav');

 ham.addEventListener('click', () => {
  menu.classList.toggle('menu--open');
 });

 const closeMenuBtn = document.querySelector('.close-x');
 closeMenuBtn.classList.add('close-menu');

 closeMenuBtn.addEventListener('click', () => {
  menu.classList.toggle('menu--open');
 });
}

initMenu();
