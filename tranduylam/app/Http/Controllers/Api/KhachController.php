<?php

namespace App\Http\Controllers\Api;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Khach;

class KhachController extends Controller
{
    public function index(){
        $khachs = Khach::all();
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'data' => $khachs],
            200
        );

    }
    public function show($id)
    {
        $khach = Khach::find($id);
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'data' => $khach],
            200
        );
    }
    public function store(Request $request)
    {
        $khach = new Khach();
        $khach->name = $request->name; //form

      
        $khach->email = $request->email;
        $khach->phone = $request->phone;
        $khach->password = $request->password;


        $khach->khachname = $request->khachname;
        $khach->address = $request->address;
        $khach->roles = $request->roles;
        $khach->created_at = date('Y-m-d H:i:s');
        $khach->created_by = 1;
        $khach->status = $request->status; //form
        $khach->save(); //Luuu vao CSDL
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $khach],
            201
        );

        
    }
    public function update(Request $request, $id)
    {
        $khach = Khach::find($id);
        $khach->name = $request->name; //form

      
        $khach->email = $request->email;
        $khach->phone = $request->phone;
        $khach->password = $request->password;

        $khach->khachname = $request->khachname;
        $khach->address = $request->address;
        $khach->roles = $request->roles;
        $khach->created_at = date('Y-m-d H:i:s');
        $khach->created_by = 1;
        $khach->status = $request->status; //form
        $khach->save(); //Luuu vao CSDL
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $khach],
            201
        );
    }
    public function destroy($id)
    {
        $khach=Khach::find($id);
        if($khach==null){
            return response()->json(
                ['success' => false, 'message' => 'Xóa dữ liệu không thành công', 'data' => null],
                404
            );
        }
        $khach->delete();
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $khach],
            200
        );
    }
}