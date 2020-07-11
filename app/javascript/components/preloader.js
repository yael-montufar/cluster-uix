const loadSvg = () => {
  window.addEventListener('load', () => {
    setTimeout(() => {
      const preload = document.querySelector('.preload');
      if (preload !== null) {
        // prevents console error message when proload class is not found onother pages
        preload.classList.add('postload');
      }
    }, 3100); // 3600ms (animation) - .5s (preload)
  })
}

export { loadSvg };
