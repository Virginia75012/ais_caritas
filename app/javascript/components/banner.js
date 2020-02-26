import Typed from 'typed.js';

const loadDynamicBannerText = () => {
 if (document.querySelector('#banner-typed-text')){
  new Typed('#banner-typed-text', {
    strings: ["Agence Immobilière à Vocation Sociale"],
    typeSpeed: 75,
    loop: true
  });
 }

}

export { loadDynamicBannerText };
