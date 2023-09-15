import React from "react";
import { Routes,Route, Link } from "react-router-dom";
import Home from "./Home";
import Detail from "../pages/product/Detail";
import Profileaddress from "../pages/profile/ProfileAddress";
import ProfileSetting from "../pages/profile/ProfileSetting";
import ProfileSeller from "../pages/profile/ProfileSeller";
import ProfileWithlist from "../pages/profile/ProfileWishlist";
import ProfileOrders from "../pages/profile/ProfileOrders";
import ProfileMain from "../pages/profile/ProfileMain";
import Login from "../pages/account/Login";
import Register from "../pages/account/Register";
import ShoppingCart from "../pages/product/ShoppingCart";
import ListListing from "../pages/product/ListLighting";
import Content from "../pages/Page/Content";
import GridListing from "../pages/product/GirdListing";

const Main =()=> (
    <main>
        <Routes>
            <Route path="/" element={<Home/>}/>
            <Route path="/product-detail" element={<Detail />} />
            <Route path="/profile-address" element={<Profileaddress />} />
            <Route path="/profile-setting" element={<ProfileSetting />} />
            <Route path="/profile-seller" element={<ProfileSeller />} />
            <Route path="/profile-wishlist" element={<ProfileWithlist />} />
            <Route path="/profile-orders" element={<ProfileOrders />} />
            <Route path="/profile-main" element={<ProfileMain />} />
            <Route path="/user-login" element={<Login />} />
            <Route path="/user-register" element={<Register />} />

            <Route path="/shopping-cart" element={<ShoppingCart />} />
            <Route path="/listing-large" element={<ListListing />} />
            <Route path="/content" element={<Content />} />
            <Route path="/listing-grid" element={<GridListing />} />
            <Route path="/category" element={<GridListing />} />













        </Routes>
    </main>
)
export default Main