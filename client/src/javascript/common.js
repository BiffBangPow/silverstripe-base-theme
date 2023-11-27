/* Common JS for all pages.  Run at the end of the page, so could be deferred!  (hence the extra tests on domready) */

if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', main);
} else {
    main();
}

const navBar = document.getElementById('main-navbar');
const scrollTriggerElem = document.getElementById('scrollbeacon');
const mainNavHolder = document.getElementById('mainnav-holder');


function handleNavToggle(entries, observer) {
    entries.forEach(entry => {
        if (entry.target.id === "scrollbeacon") {
            if (entry.isIntersecting) {
                navBar.classList.remove("scrolled");
            } else {
                setTimeout(() => {
                    navBar.classList.add("scrolled");
                }, 200);
            }
        }
    });
}


function initNavToggler() {
    const navToggler = document.getElementById('navtoggler');
    navToggler.addEventListener('click', () => {
        navToggler.classList.toggle('is-active');
        mainNavHolder.classList.toggle('active');
        if (mainNavHolder.classList.contains('active')) {
            mainNavHolder.setAttribute('aria-expanded', 'true');
        }
        else {
            mainNavHolder.setAttribute('aria-expanded', 'false');
        }
    });
}

function initNavCollapse() {
    const expanders = mainNavHolder.querySelectorAll(':scope button.nav-expander');
    expanders.forEach((expander) => {
        expander.addEventListener('click', () => {
            let targetNavID = expander.getAttribute('aria-controls');
            let targetNav = document.getElementById(targetNavID);
            if (targetNav) {
                targetNav.classList.toggle('active');
                expander.classList.toggle('active');
                if (targetNav.classList.contains('active')) {
                    targetNav.setAttribute('aria-expanded', true);
                }
                else {
                    targetNav.setAttribute('aria-expanded', false);
                }
            }
        });
    });
}



function main() {
    const observer = new IntersectionObserver(handleNavToggle);
    observer.observe(scrollTriggerElem);
    initNavToggler();
    initNavCollapse();
}


