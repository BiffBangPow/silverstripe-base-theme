(()=>{"loading"===document.readyState?document.addEventListener("DOMContentLoaded",e):e();const a=document.getElementById("main-navbar"),t=document.getElementById("scrollbeacon"),n=document.getElementById("mainnav-holder");function e(){new IntersectionObserver(s).observe(t);{const e=document.getElementById("navtoggler");e.addEventListener("click",()=>{e.classList.toggle("is-active"),n.classList.toggle("active"),n.classList.contains("active")?n.setAttribute("aria-expanded","true"):n.setAttribute("aria-expanded","false")})}n.querySelectorAll(":scope button.nav-expander").forEach(t=>{t.addEventListener("click",()=>{var e=t.getAttribute("aria-controls"),e=document.getElementById(e);e&&(e.classList.toggle("active"),t.classList.toggle("active"),e.classList.contains("active")?e.setAttribute("aria-expanded",!0):e.setAttribute("aria-expanded",!1))})})}function s(e,t){e.forEach(e=>{"scrollbeacon"===e.target.id&&(e.isIntersecting?a.classList.remove("scrolled"):setTimeout(()=>{a.classList.add("scrolled")},200))})}})();