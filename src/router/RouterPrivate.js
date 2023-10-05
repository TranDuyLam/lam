import BrandCreate from "../pages/backend/Brand/BrandCreate";
import BrandList from "../pages/backend/Brand/BrandList";
import BrandShow from "../pages/backend/Brand/BrandShow";
import BrandUpdate from "../pages/backend/Brand/BrandUpdate";
import CategoryList from "../pages/backend/Category/CategoryList"
import CategoryCreate from "../pages/backend/Category/CategoryCreate"
import CategoryShow from "../pages/backend/Category/CategoryShow"
import CategoryUpdate from "../pages/backend/Category/CategoryUpdate"

import ProductList from "../pages/backend/Product/ProductList"
import ProductCreate from "../pages/backend/Product/ProductCreate"
import ProductShow from "../pages/backend/Product/ProductShow"
import ProductUpdate from "../pages/backend/Product/ProductUpdate"

import PostList from "../pages/backend/Post/PostList"
import PostCreate from "../pages/backend/Post/PostCreate"
import PostShow from "../pages/backend/Post/PostShow"
import PostUpdate from "../pages/backend/Post/PostUpdate"

import SliderList from "../pages/backend/Slider/SliderList"
import SliderCreate from "../pages/backend/Slider/SliderCreate"
import SliderShow from "../pages/backend/Slider/SliderShow"
import SliderUpdate from "../pages/backend/Slider/SliderUpdate"

import UserList from "../pages/backend/User/UserList"
import UserCreate from "../pages/backend/User/UserCreate"
import UserShow from "../pages/backend/User/UserShow"
import UserUpdate from "../pages/backend/User/UserUpdate"

import TopicList from "../pages/backend/Topic/TopicList"
import TopicCreate from "../pages/backend/Topic/TopicCreate"
import TopicShow from "../pages/backend/Topic/TopicShow"
import TopicUpdate from "../pages/backend/Topic/TopicUpdate"




import Dashboard from "../pages/backend/Dashboard";

const RouterPrivate =[
    {path: '/admin', component:Dashboard},


    {path: '/admin/brand', component:BrandList},
    {path: '/admin/brand/create', component:BrandCreate},
    {path: '/admin/brand/update/:id', component:BrandUpdate},
    {path: '/admin/brand/show/:id', component:BrandShow},


    {path: '/admin/category', component:CategoryList},
    {path: '/admin/category/create', component:CategoryCreate},
    {path: '/admin/category/update/:id', component:CategoryUpdate},
    {path: '/admin/category/show/:id', component:CategoryShow},

    {path: '/admin/product', component:ProductList},
    {path: '/admin/product/create', component:ProductCreate},
    {path: '/admin/product/update/:id', component:ProductUpdate},
    {path: '/admin/product/show/:id', component:ProductShow},


    {path: '/admin/post', component:PostList},
    {path: '/admin/post/create', component:PostCreate},
    {path: '/admin/post/update/:id', component:PostUpdate},
    {path: '/admin/post/show/:id', component:PostShow},

    {path: '/admin/user', component:UserList},
    {path: '/admin/user/create', component:UserCreate},
    {path: '/admin/user/update/:id', component:UserUpdate},
    {path: '/admin/user/show/:id', component:UserShow},

    {path: '/admin/topic', component:TopicList},
    {path: '/admin/topic/create', component:TopicCreate},
    {path: '/admin/topic/update/:id', component:TopicUpdate},
    {path: '/admin/topic/show/:id', component:TopicShow},

    
];
export default RouterPrivate;