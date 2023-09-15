import React from "react";

const Apparel = () => (
  <section className="padding-bottom">
    <header className="section-heading heading-line">
      <h4 className="title-section text-uppercase">Nước chai</h4>
    </header>
    <div className="card card-home-category">
      <div className="row no-gutters">
        <div className="col-md-3">
          <div className="home-category-banner bg-light-orange">
            <h5 className="title">Best trending clothes only for summer</h5>
            <p>
              Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
              labore et dolore magna aliqua.{" "}
            </p>
            <a href="/chitietsanpham" className="btn btn-outline-primary rounded-pill">
              Source now
            </a>
            <img
              src={require("../../assets/images/narT/7up.jpg")}
              className="img-bg"
            />
          </div>
        </div>{" "}
        {/* col.// */}
        <div className="col-md-9">
          <ul className="row no-gutters bordered-cols">
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Well made women clothes with trending collection
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/coca.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Guanjou, China
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Great clothes with trending collection
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/mirindacam.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Beijing, China
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">Demo clothes with sample collection</h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/mirindathai.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Tokyo, Japan
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Home and kitchen electronic stuff collection
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/mirindaxasi.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Tashkent, Uzb
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Home and kitchen electronic stuff collection
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/number1.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> London, Britain
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Home and kitchen electronic stuff collection
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/pepsi.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Guanjou, China
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Well made clothes with trending collection{" "}
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/sting.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Hong Kong, China
                  </p>
                </div>
              </a>
            </li>
            <li className="col-6 col-lg-3 col-md-4">
              <a href="#" className="item">
                <div className="card-body">
                  <h6 className="title">
                    Home and kitchen interior stuff collection{" "}
                  </h6>
                  <img
                    className="img-sm float-right"
                    src={require("../../assets/images/narT/7up.jpg")}
                  />
                  <p className="text-muted">
                    <i className="fa fa-map-marker-alt" /> Guanjou, China
                  </p>
                </div>
              </a>
            </li>
          </ul>
        </div>{" "}
        {/* col.// */}
      </div>{" "}
      {/* row.// */}
    </div>{" "}
    {/* card.// */}
  </section>
);
export default Apparel;
