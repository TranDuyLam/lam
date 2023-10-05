import Contact from "../pages/frontend/Contact";
import Home from "../pages/frontend/Home";
import Product from "../pages/frontend/Product";
import ProductDetail from "../pages/frontend/Product/ProductDetail";
import PostList from "../pages/backend/Post/PostList";
import Trangdon from "../pages/frontend/Trangdon/Trangdon";
const RouterPublic =[
    {path: '/', component:Home},
    {path: '/san-pham', component:Product},
    {path: '/lien-he', component:Contact},
    {path: '/chi-tiet-san-pham/:id', component:ProductDetail},
    {path: '/bai-viet', component:PostList},
    {path: '/trang-don', component:Trangdon}


];
export default RouterPublic;