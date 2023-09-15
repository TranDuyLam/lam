import Slider from "../pages/home/Slider";
import Deal from "../pages/home/Deal";
import React from "react";
import Apparel from "../pages/home/Apparel";
import Electronics from "../pages/home/Electronics";
import Request from "../pages/home/Request";
import Items from "../pages/home/Items";
import Services from "../pages/home/Services";
import Region from "../pages/home/Region";


function Home(props) {
  return (
    <div className="container">
      <Slider />
      <Deal />
      <Apparel />
      <Electronics />
      <Request />
      <Items />
      <Services />
      <Region />
    </div>
  );
}

export default Home;
