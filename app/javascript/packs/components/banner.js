import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Crash the wave of booz", "Die tonight with your legacy!"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };