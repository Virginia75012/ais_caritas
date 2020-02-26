import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Agence Immobilière à Vocation Sociale"],
    typeSpeed: 75,
    loop: true
  });
}

export { loadDynamicBannerText };
