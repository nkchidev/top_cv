<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\companies;
use App\Models\Post;
use App\Models\imagesCompany;
use Illuminate\Support\Facades\Storage;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class CompaniesController extends Controller
{
    public function create_Company_View(){
        $company = companies::where('hr_id',session()->get('id_hr'))->first();
        if($company ){
            $images = imagesCompany::where('company_id',$company->id)->get();
            return view('hr_view.create_company',compact('company','images'));
        }
        else{
            $company = [
                'logo'=>'',
                'id'=>'',
                'image'=>'',
            ];
            return view('hr_view.create_company',compact('company'));
        }
    }
    public function store(Request $request){
        $company = companies::where('hr_id',session()->get('id_hr'))->first();
        if($company){
            $data = $request->all();
            if($company->logo != null){
                if($request->hasFile('logo')){
                    Storage::delete(['public/'.$company->logo]);
                    $file_logo = $request->file('logo')->store('company/logo_company','public');
                    $data['logo'] = $file_logo;
                }
            }
            $company->fill($data);
            $company->save();
            if($request->hasFile('images')){
                $delete_images = imagesCompany::where('company_id',$company->id)->get();
                foreach($delete_images as $delete_image){
                    Storage::delete(['public/'.$delete_image->image]);
                    $delete_image->delete();
                }
                foreach($request->file('images') as $image){
                    $image_company = $image->store('company/images_company','public');
                    $data_image = [
                        'company_id' => $company->id,
                        'image' => $image_company,
                    ];
                    $image = new imagesCompany;
                    $image->fill($data_image);
                    $image->save();
                }
            }
            return redirect()->route('create.company.view')->with('success_update','Cập nhật công ty thành công');
        }
        else{

            $data = [
                'name' => $request->name,
                'address' => $request->address,
                'phone' => $request->phone,
                'email' => $request->email,
                'website' => $request->website,
                'industry' => $request->industry,
                'tax_code' => $request->tax_code,
                'number_of_employees' => $request->number_of_employees,
                'city' => $request->city,
                'description_company' => $request->description_company,
                'hr_id' => session()->get('id_hr'),
            ];
            if($request->hasFile('logo')){
                $file_logo = $request->file('logo')->store('company/logo_company','public');
                $data['logo'] = $file_logo;
            }
            $company = new companies;
            $company->fill($data);
            $company->save();
            session()->put('company_id',$company->id);
            if($request->hasFile('images')){
                foreach($request->file('images') as $image){
                    $image_company = $image->store('company/images_company','public');
                    $data_image = [
                        'company_id' => $company->id,
                        'image' => $image_company,
                    ];
                    $image = new imagesCompany;
                    $image->fill($data_image);
                    $image->save();
                }
            }
            return redirect()->route('create.company.view')->with('success','Tạo công ty thành công');
        }
        }
        public function list_companies(){
            $list_companies = companies::where('status',0)->get();
            $hot_company = companies::where('status',0)->inRandomOrder()->limit(1)->first();
            return view('publicView.list_companies',compact('list_companies','hot_company'));
        }
        public function company_detail($company_id){
            $company = companies::where('id',$company_id)->first();
            $list_post = Post::where('company_id',$company_id)->get(); 
            $list_images = imagesCompany::where('company_id',$company_id)->get();
            Carbon::setLocale('vi');
            $posts = DB::table('posts')
                    ->join('companies','posts.company_id','=','companies.id')
                    ->leftJoin('hrs','companies.hr_id','=','hrs.id')
                    ->leftJoin('level_account','hrs.id','=','level_account.hr_id')
                    ->leftJoin('services','level_account.service_id','=','services.id')
                    ->where('companies.id',$company_id)
                    ->select('posts.*','services.border_post as borderpost','services.hot_company as hot_company','companies.name as company_name','companies.logo as company_logo')
                    ->get();
            foreach($posts as $post){
                $post->expired_post = Carbon::parse($post->expired_post)->diffForHumans();
            }
            return view('publicView.detail_company',compact('company','list_post','list_images','posts'));

        }
}