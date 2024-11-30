<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="{{asset('css/public.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('css/applicant.css')}}">
    <script src="{{asset('js/js.js')}}"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css "/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>TopCv-Công ty</title>
</head>
<body>
    @if(session('success_login_applicant'))
        @include('layout.applicantview.header')
    @elseif(session('success_login_hr'))
        @include('layout.hrview.public_header')
    @else
        @include('layout.publicview.header')
    @endif
    @include('layout.publicview.end_header')
    <div id="main">
        <div class="main_content">
                <div class="sum_job">
                    <div class="total_job all" id="all_posts">Tất cả({{$list_companies->count()}})</div>
                </div>
                <div class="post">
                    <div class="row post_company">
                        <div class="col-md-9">
                        <h5 class="header_name">Danh sách công ty</h5>
                        <div class="list_posts">
                        @foreach($list_companies as $company)
                            <div class="post_item">
                                <div class="row">
                                    <input type="hidden" value="{{$company->id}}">
                                    <div class="col-md-8 img-title_job-description">    
                                        <img src="{{asset('storage/'.$company->logo)}}" alt="">
                                        <div class="description-post">
                                            <h3 class="title-job"><a href="{{route('company.detail',$company->id)}}">{{$company->name}}</a></h3>
                                            <div class="company-name">{{$company->address}}</div>
                                            <span class="btn-introduce-post" style="color:black;">{{$company->industry}}</span>
                                            <span class="btn-introduce-post" style="color:black;">{{$company->number_of_employees}}</span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    </div>
                                </div>
                            </div>        
                        @endforeach
                        </div>
                        </div>
                        <div class="col-md-3 introduce_banner">
                            <div class="introduce_new_company" style="text-align:center">
                                <h4> Có thể bạn quan tâm</h4>
                                <div class="post_introduce_company">
                                    <div class="img_introduce-company">
                                        <img src="{{asset('storage/'.$hot_company->logo)}}" alt="">
                                    </div>
                                    <div class="detail_introduce_company">
                                        <div class="name_company">
                                            <a href="#">{{$hot_company->name}}</a>
                                        </div>
                                        <div class="detail">
                                            <button>
                                                <a href="#">
                                                Tìm hiểu ngay
                                                 </a>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner_web">
                                    <img src="{{asset('image/pasted image 0.png')}}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </div>