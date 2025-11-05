import "./bootstrap.js";
import "./styles/main.css";

/*
 * Welcome to your app's main JavaScript file!
 * This file will be included onto the page via the importmap() Twig function,
 * which should already be in your base.html.twig.
 */

document.addEventListener("DOMContentLoaded", () => {
  // important pour que le style css charge correctement
  const locations = document.querySelectorAll(".location");

  locations.forEach((location) => {
    const text = location.textContent.trim(); // trim enlève les espaces
    console.log(text);

    if (text === "Caméléon") {
      location.classList.add("cameleon");
    } else if (text === "F") {
      location.classList.add("f");
    } else if (text === "Badet") {
      location.classList.add("badet");
    } else if (text === "MBA") {
      location.classList.add("mba");
    }
  });

  const activeButtons = document.querySelectorAll(".active-btn");
  // console.log(activeButtons);
  activeButtons.forEach((button) => {
    button.addEventListener("click", async () => {
      const route = button.dataset.href;
      // console.log(route)
      try {
        const response = await fetch(route);
        if (!response.ok) {
          throw new Error(`Response status: ${response.status}`);
        }
        const json = await response.json();
        console.log(json);

        const text = button.textContent;
        if (json.isActive) {
          button.textContent = "Activé";
          button.classList.remove("btn-red");
          button.classList.add("btn-green");
        } else {
          button.textContent = "Désactivé";
          button.classList.remove("btn-green");
          button.classList.add("btn-red");
        }
      } catch (error) {
        console.error(error.message);
      }
    });
  });

  //cookies
  document.addEventListener("DOMContentLoaded", () => {
    const banner = document.getElementById("cookie-banner");
    const acceptBtn = document.getElementById("cookie-accept");
    const declineBtn = document.getElementById("cookie-decline");

    // Vérifie si l'utilisateur a déjà choisi
    const consent = localStorage.getItem("cookieConsent");
    if (consent) {
      banner.style.display = "none";
    }

    // Accepter les cookies
    acceptBtn.addEventListener("click", () => {
      localStorage.setItem("cookieConsent", "accepted");
      banner.style.display = "none";
    });

    // Refuser les cookies
    declineBtn.addEventListener("click", () => {
      localStorage.setItem("cookieConsent", "declined");
      banner.style.display = "none";
    });
  });
});
