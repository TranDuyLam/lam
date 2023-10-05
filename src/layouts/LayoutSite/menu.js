import {Link} from "react-router-dom";

function Menu() {
  const listMenu=[
    {name:"Trang chủ",link:'/'},
    {name:"Sản phẩm",link:'/san-pham'},
    {name:"Liên hệ",link:'/lien-he'},
    {name:"Bài viết",link:'/bai-viet'},
    {name:"Trang đơn",link:'/trang-don'}

  ];
    return ( 
        <section className="bg-dark">
          <div className="container">
            <nav className="navbar navbar-expand-lg bg-dark">
              <div className="container-fluid">
                <Link className="navbar-brand text-white" href="nav">
                  
                </Link>
                <button
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle-navigation"
                >
                  <span className="navbar-toggler-icon"></span>
                </button>
                <div className="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                    {listMenu.map(function(menu,index){
                      return(
                        <li className="nav-item">
                          <Link className="nav-link text-white" aria-current="page" to={menu.link}>
                            {menu.name}
                          </Link>
                        </li>
                      );
                    })}
                    <li className="nav-item dropdown">
                      <Link
                        className="nav-link dropdown-toggle text-white"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                      ></Link>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>

          </div>
        </section>

     );
}

export default Menu;