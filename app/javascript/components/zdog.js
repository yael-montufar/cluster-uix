const zdog = () => {
  // create illoa
  let illo = new Zdog.Illustration({
    // set canvas with selector
    element: '.zdog-canvas',
    dragRotate: true,
    zoom: 1/2,
  });

  // // soul
  // let circle = new Zdog.Ellipse({
  //   addTo: illo,
  //   diameter: 80,
  //   quarters: 4,
  //   depth: 5,
  //   stroke: 1,
  //   color: '#000',
  //   rotate: { z: Zdog.TAU/4 },
  //   translate: { y: -100 },
  //   fill: true,
  // });

  // 3D
  let circle = new Zdog.Shape({
    addTo: illo,
    stroke: 80,
    color: '#008080',
    translate: { y: -100 },
  })

  // // mind
  // let semicircle = new Zdog.Ellipse({
  //   addTo: illo,
  //   diameter: 80,
  //   quarters: 2,
  //   depth: 5,
  //   stroke: 1,
  //   color: '#000',
  //   rotate: { z: Zdog.TAU/4 },
  //   translate: { y: -50 },
  //   fill: true,
  // });

  // 3D
  let dome = new Zdog.Hemisphere({
    addTo: illo,
    diameter: 80,
    // fill enabled by default
    // disable stroke for crisp edge
    rotate: { x: Zdog.TAU/(-4) }, // Rotate on x axis 4 parts of a rotation (360/4)
    translate: { y: -50 },
    stroke: false,
    color: '#008080',
    backface: '#000',
  });

  // // body
  // new Zdog.Shape({
  //   addTo: illo,
  //   path: [
  //     { x: -40, y: -20 }, // start at top left
  //       { arc: [
  //         { x: 0, y: 30 },
  //         { x: 40, y: -20 }, // line to bottom left
  //       ]},
  //     { x:  0, y:  150 }, // line to bottom right
  //     { x:  -40, y:  -20 }, // line to bottom right
  //   ],
  //   closed: false,
  //   stroke: 1,
  //   color: '#000',
  //   fill: true,
  // });

  // 3D
  let partyHat = new Zdog.Cone({
    addTo: illo,
    diameter: 80,
    length: 150,
    stroke: false,
    rotate: { x: Zdog.TAU/(-4) },
    // rotate: { x: Zdog.TAU/(-3) },
    color: '#008080',
    backface: '#000',
  });

  function animate() {
    illo.rotate.z += 0.05;
    illo.rotate.x -= 0.025;
    illo.updateRenderGraph();
    requestAnimationFrame( animate );
  }
  // update & render
  animate();
}

export { zdog };
