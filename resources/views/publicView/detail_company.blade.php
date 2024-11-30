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
        <!-- I want to create a page to show out detail infor of a company , can you help me ? -->
        <div class="container-fluid">
                <div class="row">
                        <div class="company_detail" style="padding:0 130px;">
                            <div class="company_detail_header">
                                        <div style="position: relative;">
                                                <div>
                                                    <img src="{{asset('storage/'.$list_images[0]->image)}}" alt="" style="width:100%;height:500px;border-radius:15px">
                                                </div>
                                                <div style="
                                                    position: absolute;
                                                    bottom: 0;
                                                    left: 0;
                                                    width: 100%;
                                                    height: 30%;
                                                    background: linear-gradient(90deg, #212f3f, #00b14f);
                                                    opacity: 1;">
                                                    <div style="padding: 10px 270px;">
                                                        <h4 style="color: white;">{{$company->name}}</h4>
                                                        <div class="link-number_employ">
                                                            <ul>
                                                                <li><i class="fa-solid fa-globe" id="link-number_employ_icon"></i> <a href="#" style="color: white;">{{$company->website}}</a></li>
                                                                <li><i class="fa-solid fa-building" id="link-number_employ_icon"></i> <a href="#" style="color: white;">{{$company->number_of_employees}} nhân viên</a></li>
                                                                <li><i class="fa-solid fa-users" id="link-number_employ_icon"></i> <a href="#" style="color: white;">{{$company->number_employ}} người theo dõi</a></li>
                                                            </ul>
                                                            <style>
                                                                .company_detail{
                                                                    background-color:rgb(249, 246, 246);
                                                                }
                                                                .link-number_employ{
                                                                    margin-top: 40px;
                                                                }
                                                                ul{
                                                                    list-style: none;
                                                                    padding: 0;
                                                                }
                                                                li{
                                                                    display: inline;
                                                                    margin-right: 20px;
                                                                }
                                                                #link-number_employ_icon{
                                                                    margin-right: 5px;
                                                                    color:white;
                                                                }
                                                                li a{
                                                                    text-decoration: none;
                                                                }
                                                                .company_detail_description{
                                                                    margin: 20px 0px;
                                                                }
                                                                .company_detail_description_header{
                                                                    padding: 12px 20px;
                                                                    color: white;
                                                                    font-size: 16px;
                                                                    background: linear-gradient(90deg, #1c4742, #22c96d);
                                                                    border-top-left-radius: 15px;
                                                                    border-top-right-radius: 15px;
                                                                }
                                                                .company_detail_description_text{
                                                                    padding: 5px 20px;
                                                                    background: white;
                                                                }
                                                                .company_detail_list_posts{
                                                                    padding: 20px;
                                                                    background: white;
                                                                    border-bottom-left-radius: 15px;
                                                                    border-bottom-right-radius: 15px;
                                                                }
                                                                .company_detail_description_text p{
                                                                    margin-top: 15px;
                                                                    font-size: 16px;
                                                                }
                                                                .company_detail_description_text p i{
                                                                    margin-right: 5px;
                                                                    color: #22c96d;
                                                                }
                                                            </style>
                                                        </div>
                                                    </div>

                                            </div>
                                        </div>      
                                  </div>
                                <div class="company_detail_logo" style="margin-top: -252px;z-index: 100;position: absolute;margin-left: 43px;">
                                    <img src="{{asset('storage/'.$company->logo)}}" alt="" style="border-radius: 50%;height: 200px;width: 200px;">
                                </div>
                                <div class="row">
                                    <div class="col-md-9">
                                        <div class="company_detail_description">
                                            <div class="company_detail_description_header">
                                                <h5>Giới thiệu công ty</h5>
                                            </div>
                                            <div class="company_detail_description_text">
                                                <p>{!! $company->description_company !!}</p>
                                            </div>
                                        </div>
                                        <div class="company_detail_post">
                                            <div class="company_detail_description_header">
                                                <h5>Tuyển dụng</h5>
                                            </div>
                                            <div class="company_detail_list_posts">
                                                @if($posts->count() != 0)
                                                    <div class="post_item">
                                                        <div class="row">
                                                            <div class="col-md-8 img-title_job-description">    
                                                                <div class="description-post">
                                                                    <h3 class="title-job">Số lượng bài tuyển dụng : {{$posts->count()}}</h3>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endif
                                                                
                                                @foreach($posts as $post)
                                                    @if($post->borderpost == 1)
                                                    <div class="post_item" style="border:solid 5px green">
                                                    @else
                                                    <div class="post_item">
                                                    @endif
                                                        <div class="row">
                                                            <input type="hidden" value="{{$post->id}}">
                                                            <div class="col-md-8 img-title_job-description">    
                                                                <img src="{{asset('storage/'.$post->company_logo)}}" alt="">
                                                                <div class="description-post">
                                                                    <h3 class="title-job"><a href="{{route('post.detail',[$post->id,$post->slug])}}">{{$post->title}}</a></h3>
                                                                    <div class="company-name">{{$post->company_name}}</div>
                                                                    <span class="btn-introduce-post" style="color:black;">{{$post->min_salary}} {{$post->unit_money}} - {{$post->max_salary}} {{$post->unit_money}}</span>
                                                                    <span class="btn-introduce-post" style="color:black;">Hết hạn - {{$post->expired_post}}</span>
                                                                    <span class="btn-introduce-post" style="color:black;">{{$post->city}}</span>
                                                                </div>
                                                                <!-- @foreach (json_decode($post->languages) as $languages)
                                                                        {{ $languages }}
                                                                @endforeach -->
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="post_time">{{  \Carbon\Carbon::parse($post->created_at)->diffForHumans() }}</div>
                                                                <div class="icon_save_post"><i class="fa-solid fa-heart"></i></div>
                                                            </div>
                                                        </div>
                                                    </div>        
                                                @endforeach    

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                           <div class="company_detail_description">
                                                <div class="company_detail_description_header">
                                                    <h5>Thông tin liên hệ</h5>
                                                </div>
                                                <div class="company_detail_description_text">
                                                    <p>
                                                        <i class="fa-solid fa-location-dot"></i> {{$company->address}}
                                                    </p>
                                                </div>
                                            </div>

                                            <div class="company_detail_description">
                                                <div class="company_detail_description_header">
                                                    <h5>Chia sẽ công ty với bạn bè</h5>
                                                </div>
                                                <div class="company_detail_description_text">
                                                     <div>
                                                        <span>Chia sẻ tin tuyển dụng</span>
                                                        <p>Sao chép đường dẫn</p>
                                                        <div class="link">
                                                            <span class="url_post">{{$company->website}}</span>
                                                            <div class="link_icon"><i class="fa-solid fa-link"></i></div>
                                                        </div>
                                                        <p>Chia sẻ qua mạng xã hội</p>
                                                        <div id="social">
                                                            <ul>
                                                                <li>
                                                                    <a href="#"><i class="fa-brands fa-facebook"></i></a>
                                                                </li>
                                                                <li>
                                                                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                                                </li>
                                                                <li>
                                                                    <a href="#" class="youtube_icon"><i class="fa-brands fa-youtube"></i></a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
            </div>    
        </div>
        @include('layout.publicview.footer')
</body>
</html>