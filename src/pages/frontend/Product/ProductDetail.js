import { useEffect, useState } from "react";
import productservice from "../../../service/Productservice";
import { Link, useParams } from "react-router-dom";
import { FaEdit, FaTrash } from "react-icons/fa";


function ProductDetail() {
    const { id } = useParams("id");
    const [product, setProduct] = useState([]);
    useEffect(function () {
        (async () => {
            await productservice.getById(id).then((result) => {
                setProduct(result.data.data);
            });
        })();
    }, [])
    return (
        <>
        <section className="py-3 bg-light">
      <div className="container">
        <ol className="breadcrumb">
          <li className="breadcrumb-item">
            <a href="/">Home</a>
          </li>
          <li className="breadcrumb-item">
            <a href="#">Category name</a>
          </li>
          <li className="breadcrumb-item">
            <a href="#">Sub category</a>
          </li>
          <li className="breadcrumb-item active" aria-current="page">
            Items
          </li>
        </ol>
      </div>
    </section>
    {/* ========================= SECTION CONTENT ========================= */}
    <section className="section-content bg-white padding-y">
      <div className="container">
        {/* ============================ ITEM DETAIL ======================== */}
        <div className="row">
          <aside className="col-md-6">
            
             
                
              
                    
                    
                      <img src={product.image}/>
                   
                 
               
             
          </aside>
          <main className="col-md-6">
            <article className="product-info-aside">
              <h2 className="title mt-3">{product.name}</h2>
              <div className="rating-wrap my-3">
                <ul className="rating-stars">
                  
                  
                </ul>
                <small className="label-rating text-muted">132 reviews</small>
                <small className="label-rating text-success">
                  {" "}
                  <i className="fa fa-clipboard-check" /> 154 orders{" "}
                </small>
              </div>{" "}
              {/* rating-wrap.// */}
              <div className="mb-3">
                <var className="price h4">{product.price} VND</var>
                <span className="text-muted"></span>
              </div>{" "}
              {/* price-detail-wrap .// */}
              <p>
              Nước tăng lực Sting, với vị ngon sảng khoái, cùng công thức có chứa taurine, inositol, vitamin B, kết hợp cùng nhân sâm, mang đến cho bạn nguồn năng lượng mạnh mẽ, để biến mỗi ngày của bạn thành một cuộc phiêu lưu kỳ thú{" "}
              </p>
              <dl className="row">
                <dt className="col-sm-3">Công ty sản xuất</dt>
                <dd className="col-sm-9">
                  <a href="#">Pepsico</a>
                </dd>
                <dt className="col-sm-3">Article number</dt>
                <dd className="col-sm-9">596 065</dd>
                <dt className="col-sm-3">Guarantee</dt>
                <dd className="col-sm-9">2 year</dd>
                <dt className="col-sm-3">Delivery time</dt>
                <dd className="col-sm-9">3-4 days</dd>
                <dt className="col-sm-3">Availabilty</dt>
                <dd className="col-sm-9">in Stock</dd>
              </dl>
              <div className="form-row  mt-4">
                <div className="form-group col-md flex-grow-0">
                  <div className="input-group mb-3 input-spinner">
                    <div className="input-group-prepend">
                      <button
                        className="btn btn-light"
                        type="button"
                        id="button-plus"
                      >
                        {" "}
                        +{" "}
                      </button>
                    </div>
                    <input
                      type="text"
                      className="form-control"
                      defaultValue={1}
                    />
                    <div className="input-group-append">
                      <button
                        className="btn btn-light"
                        type="button"
                        id="button-minus"
                      >
                        {" "}
                        −{" "}
                      </button>
                    </div>
                  </div>
                </div>{" "}
                {/* col.// */}
                <div className="form-group col-md">
                  <a href="#" className="btn  btn-primary">
                    <i className="fas fa-shopping-cart" />{" "}
                    <span className="text">Add to cart</span>
                  </a>
                  <a href="#" className="btn btn-light">
                    <i className="fas fa-envelope" />{" "}
                    <span className="text">Contact supplier</span>
                  </a>
                </div>{" "}
                {/* col.// */}
              </div>{" "}
              {/* row.// */}
            </article>{" "}
            {/* product-info-aside .// */}
          </main>{" "}
          {/* col.// */}
        </div>{" "}
        {/* row.// */}
        {/* ================ ITEM DETAIL END .// ================= */}
      </div>{" "}
      {/* container .//  */}
    </section>
    {/* ========================= SECTION CONTENT END// ========================= */}
    {/* ========================= SECTION  ========================= */}
    <section className="section-name padding-y bg">
      <div className="container">
        <div className="row">
          <div className="col-md-8">
            <h5 className="title-description">Thành phần</h5>
            <p>
            Về thành phần thì nước tăng lực Sting dâu đỏ được tạo ra bởi nước bão hòa CO2, đường mía, chất điều chỉnh độ acid, hỗn hợp hương dâu tự nhiên và tổng hợp, vitamin B3, B6, B12, nhân sâm… có công dụng giải khát, hồi phục sức khỏe, tăng cường sinh lực, nhanh chóng tỉnh táo và khỏe mạnh suốt ngày dài.

Về giá trị dinh dưỡng thì 1 lon Sting dâu đỏ 330 ml chứa khoảng 242 calo với 63,4 gram carbohydrate, 62,4 gram đường, 105,3 mg Natri, 3,3 mg vitamin B3 (21% RNI), 0,66 mg vitamin B6 (51% RNI), 12 % mcg vitamin B12 (12% RNI).

Chất lượng và sự an toàn của màu thực phẩm, nguyên liệu sử dụng trong công thức của Sting một lần nữa khẳng định thông qua kết quả tích cực của thanh tra Bộ Y Tế đạt chuẩn 100% quy trình sản xuất cũng như quản lý chất lượng đúng như cam kết.

Kết quả thanh tra từ Bộ Y Tế tháng 11/2016 vừa qua cũng khẳng định 107/107 (100%) các mẫu gồm thành phẩm, nguyên liệu, phụ gia thực phẩm, bao bì được điểm nghiệm của công ty SPVB đạt yêu cầu vệ sinh an toàn thực phẩm theo quy định của Pháp Luật Việt Nam. Điều này một lần nữa khẳng định cam kết của tập đoàn PepsiCo “Không gì quan trọng hơn là đảm bảo an toàn sức khoẻ cho con người”
            </p>
           
                    
          </div>{" "}
          {/* col.// */}
          <aside className="col-md-4">
            <div className="box">
              <h5 className="title-description">Bài viết</h5>
              <p>
              Đầu năm 2020, Sting đã trao tặng 2 tỷ đồng cho chương trình “Chung tay phòng, chống dịch Covid-19 – Vì một Việt Nam khỏe mạnh”. Đây là một phần trong chiến lược truyền thông của Sting “Lan tỏa năng lượng tích cực và Cổ vũ tinh thần Việt Nam chiến thắng” nhằm chung tay cùng Chính phủ Việt Nam trong công tác phòng chống và đẩy lùi dịch bệnh Covid-19. Theo đó, toàn bộ số tiền 2 tỷ đồng đã được trao trực tiếp cho Hội Thầy thuốc trẻ Việt Nam và sẽ được quy đổi thành: máy trợ thở, oxy liều cao; áo bảo hộ; khẩu trang tiêu chuẩn,… phục vụ cho công tác phòng chống, điều trị Covid-19. Các vật dụng y tế này sẽ được chuyển và lắp đặt tại 07 bệnh viện lớn trên cả nước. 
              </p>
              <h5 className="title-description">Videos</h5>
              <article className="media mb-3">
                <a href="#">
                  <img
                    className="img-sm mr-3"
                    src={product.image}
                  />
                </a>
                <div className="media-body">
                  <h6 className="mt-0">
                    <a href="https://www.youtube.com/watch?v=PE5homZdUAg">Videos quảng cáo</a>
                  </h6>
                  <p className="mb-2">
                    {" "}
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                    scelerisque ante sollicitudin{" "}
                  </p>
                </div>
              </article>
              <article className="media mb-3">
                <a href="#">
                  <img
                    className="img-sm mr-3"
                    src={product.image}
                  />
                </a> 
                <div className="media-body">
                  <h6 className="mt-0">
                    <a href="https://www.youtube.com/watch?v=uxCok1PhHr8">Videos nhạc quảng cáo</a>
                  </h6>
                  <p className="mb-2">
                    {" "}
                    Tết 2021, Sting đã kết hợp với Karik và Phan Mạnh Quỳnh để trình làng MV ca nhạc quảng cáo Tết “Đàn ông không nói”. Vượt qua các nhãn hàng khác MV ca nhạc này của Sting đem về con số ấn tượng là 13 triệu views chỉ sau hơn nửa tháng đầu ra mắt. Trong MV, ta liên tục nhìn thấy hình ảnh lao động hăng say của những người được cho là nhóm đối tượng mà Sting luôn hướng tới, đó là những sinh viên, thanh niên trẻ, thậm chí là những đấng mày râu và tất cả bọn họ đều đang tất bật lao động trong những ngày cận Tết. Với sản phẩm Tết này, Sting vẫn giữ tính cách thương hiệu cũ, vẫn là người đồng hành của những người năng động, nỗ lực. Nhưng thay vì sự hoành tráng, hầm hố, lần này Sting đã khoác một “chiếc áo mới” đơn giản, mộc mạc, trầm lại cùng khách hàng của mình, trở thành một người lắng nghe và tiếp sức cho họ.{" "}
                  </p>
                </div>
              </article>
              <article className="media mb-3">
                <a href="#">
                  <img
                    className="img-sm mr-3"
                    src={product.image}
                  />
                </a>
                <div className="media-body">
                  <h6 className="mt-0">
                    <a href="#">New tips and tricks</a>
                  </h6>
                  <p className="mb-2">
                    {" "}
                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
                    scelerisque ante sollicitudin{" "}
                  </p>
                </div>
              </article>
            </div>{" "}
            {/* box.// */}
          </aside>{" "}
          {/* col.// */}
        </div>{" "}
        {/* row.// */}
      </div>{" "}
      {/* container .//  */}
    </section>
    </>
    );
}

export default ProductDetail;