const fontOpen = new Promise((resolve) => {
  new FontFaceObserver("Open Sans").load().then(() => {
    resolve();
  });
});

const fontPlayFair = new Promise((resolve) => {
  new FontFaceObserver("Playfair Display").load().then(() => {
    resolve();
  });
});

const preloadImages = new Promise((resolve, reject) => {
  imagesLoaded(
    document.querySelectorAll("img"),
    { background: true },
    resolve
  );
});


let allDone = [fontOpen,fontPlayFair, preloadImages];
Promise.all(allDone).then(()=>{

  this.addImages();
  this.setPositions();
  this.resize();
  this.setupResize();
  this.addObjects();
  this.render();
})

