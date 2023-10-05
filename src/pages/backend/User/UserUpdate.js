import { useEffect, useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import userservice from "../../../service/Userservice";


function UserUpdate() {
    const navigate = useNavigate();
    //Khai bao status
    const [name, setName] = useState("");
    const [email, setEmail] = useState("");
    const [phone, setPhone] = useState("");
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [address, setAddress] = useState("");
    const [roles, setRoles] = useState("");

    
    const { id } = useParams("id");
    //const [user, setuser] = useState([]);
    useEffect(function () {
        (async function () {
            await userservice.getById(id).then(function (result) {
                const tmp = result.data.data;
                //setuser(tmp);
                setName(tmp.name);
                setEmail(tmp.mail);
                setPhone(tmp.phone);
                setUsername(tmp.username);
                setPassword(tmp.password);
                setAddress(tmp.address);
                setRoles(tmp.roles)
            });
        })();
    }, [])
    //Lấy danh sách
    const [users, setUsers] = useState([]);
    useEffect(function () {
        (async function () {
            await userservice.getAll().then(function (result) {
                setUsers(result.data.data)
            });
        })();
    }, [])


    async function userEdit(event) {
        event.preventDefault();
        const image = document.querySelector("#image");
        var user = new FormData();
        user.append("name", name)
        user.append("email", email)
        user.append("phone", phone)
        user.append("username", username)
        user.append("password", password)
        user.append("address", address)
        user.append("roles", roles)


       
        if (image.files.length === 0) {
            user.append("image", "");
        }
        else {
            user.append("image", image.files[0]);
        }

        await userservice.update(user, id).then(function (res) {
            alert(res.data.message)
            navigate('/admin/user/', { replace: true });
        });;
    }
    return (
        <form onSubmit={userEdit} method="post">
            <div className="card">
                <div className="card-header">
                    <div className="row">
                        <div className="col-md-6">
                            <strong className="text-danger">Cập nhật Người dùng</strong>
                        </div>
                        <div className="col-md-6 text-end">
                            <button type="submit" className="btn btn-sm btn-success me-2">
                                Lưu
                            </button>
                            <Link to="/admin/user" className="btn btn-sm btn-info">
                                Về danh sách
                            </Link>
                        </div>
</div>
                </div>
                <div className="card-body">
                    <div className="row">
                        <div className="col-md-9">
                            <div className="col-mb-3">
                                <label htmlFor="name">Tên người dùng</label>
                                <input
                                    type="text"
                                    name="name"
                                    value={name}
                                    onChange={(e) => setName(e.target.value)}
                                    className="form-control"
                                />
                            </div>

                            <div className="col-mb-3">
                                <label htmlFor="email">Email </label>
                                <input
                                    type="text"
                                    name="email"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    className="form-control"
                                />
                            </div><div className="col-mb-3">
                                <label htmlFor="phone">SĐT </label>
                                <input
                                    type="text"
                                    name="phone"
                                    value={phone}
                                    onChange={(e) => setPhone(e.target.value)}
                                    className="form-control"
                                />
                            </div><div className="col-mb-3">
                                <label htmlFor="username">Tên đăng nhập</label>
                                <input
                                    type="text"
                                    name="username"
                                    value={username}
                                    onChange={(e) => setUsername(e.target.value)}
                                    className="form-control"
                                />
                            </div><div className="col-mb-3">
                                <label htmlFor="password">Mật khẩu</label>
                                <input
                                    type="text"
                                    name="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    className="form-control"
                                />
                            </div><div className="col-mb-3">
                                <label htmlFor="address">Địa chỉ</label>
                                <input
                                    type="text"
                                    name="address"
                                    value={address}
                                    onChange={(e) => setAddress(e.target.value)}
                                    className="form-control"
                                />
                            </div><div className="col-mb-3">
                                <label htmlFor="roles">Quyền </label>
                                <input
                                    type="text"
                                    name="roles"
                                    value={roles}
                                    onChange={(e) => setRoles(e.target.value)}
                                    className="form-control"
                                />
                            </div>
                          
                        </div>
                        <div className="col-md-3">

                            
                            <div className="col-mb-3">
                                <label htmlFor="image">Hình đại diện</label>
                                <input type="file" id="image" className="form-control" />
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </form>
    );
}

export default UserUpdate;