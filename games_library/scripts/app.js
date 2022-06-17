let burgerMenu = document.querySelector("#small-nav > a:nth-child(3) > svg");
let mobileMenu = document.querySelector("#menu");
let mobileMenuLinks = [...document.querySelectorAll("#menu a")];


burgerMenu.addEventListener ('click', () => {
    mobileMenu.classList.toggle('mobile-visible');
    
    for (let i=0; i<mobileMenuLinks.length; i++) {
        mobileMenuLinks[i].classList.toggle('mobile-visible');
    }
})