import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["You only live once..", "Crash the wave of booze!", "Die tonight with your legacy!"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };