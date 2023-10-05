function Slideshow() {
    return(
    <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="//theme.hstatic.net/1000161013/1000407503/14/slider_1.jpg?v=343" class="d-block w-100" alt="..."/>
    </div>
    <div class="carousel-item">
      <img src="//theme.hstatic.net/1000161013/1000407503/14/slider_4.jpg?v=343" class="d-block w-100" alt="..."/>
    </div>
    <div class="carousel-item">
      <img src="//theme.hstatic.net/1000161013/1000407503/14/slider_2.jpg?v=343" class="d-block w-100" alt="..."/>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    );
}

export default Slideshow;