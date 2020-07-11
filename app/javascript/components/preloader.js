const loadSvg = () => {
  window.addEventListener('load', () => {
    setTimeout(() => {
      const preload = document.querySelector('.preload');
      if (preload !== null) {
      preload.classList.add('postload');
      }
    }, 3100); // 3600ms (animation) - .5s (preload)
  })
}

export { loadSvg };
