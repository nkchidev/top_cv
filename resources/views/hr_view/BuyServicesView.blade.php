@section('title')
    - {{ 'Nhà Tuyển Dụng' }}
@endsection
@include('layout.hrview.header_hr')
<div class="main_hr_view">
    <div class="row">
        @include('layout.hrview.sidebar_hr')
        <div class="col-md-10">
            <div class="buy-service-header">
                <h5 class="buy-service-header-text">Mua dịch vụ</h5>
            </div>
            <div class="list-service">
                <div class="container">
                    <div class="row">
                        @foreach ($packages_service as $package_service)
                            <div class="col-md-4">
                                <div class="service-item">
                                    <div class="introduce_new_company">
                                        <div class="post_introduce_company">
                                            <div class="img_introduce-company">
                                                <img src="https://cdn-new.topcv.vn/unsafe/https://static.topcv.vn/v4/image/welcome/section-header/toppy-hr-tech.png"
                                                    alt="">
                                            </div>
                                            <div class="detail_introduce_company">
                                                <div class="name_company">
                                                    <a href="#">{{ $package_service->name }}</a>
                                                </div>
                                                <div class="describe">
                                                    <a href="#"
                                                        style="color:red;font-size:20px;font-weight:600">{{ number_format($package_service->price) }}
                                                        VND</a>
                                                    <div class="salary-time_post" style="padding:5px;margin-top:-5px">
                                                        <span
                                                            style="font-size:16px">{{ $package_service->introduce_service }}</span>
                                                    </div>
                                                    <div>

                                                    </div>
                                                    <div class="salary-time_post">
                                                        <span><i class="fa-solid fa-check"></i> Thời gian hiệu
                                                            lực</span>
                                                        <span>{{ $package_service->expired_service }} </span>
                                                    </div>
                                                    <div class="salary-time_post">
                                                        <span><i class="fa-solid fa-check"></i> Số lượt tìm
                                                            kiếm/ngày</span>
                                                        <span>{{ $package_service->view_every_day }}</span>
                                                    </div>
                                                    <div class="salary-time_post">
                                                        <span><i class="fa-solid fa-check"></i> Số lượt xem
                                                            CV/ngày</span>
                                                        <span> {{ $package_service->search_every_day }} </span>
                                                    </div>
                                                    <div class="salary-time_post">
                                                        <span><i class="fa-solid fa-check"></i> Khung viền cho bài
                                                            post</span>
                                                        <span><i class="fa-solid fa-check"></i></span>
                                                    </div>
                                                    <div class="salary-time_post">
                                                        <span style="margin: left -27px;px"><i
                                                                class="fa-solid fa-check"></i> công ty nổi bật</span>
                                                        <span style="margin-right:-32px"><i
                                                                class="fa-solid fa-check"></i></span>
                                                    </div>
                                                    <div class="detail">
                                                        <button>
                                                            <a
                                                                href="{{ route('cart_service_view', $package_service->id) }}">
                                                                Mua ngay
                                                            </a>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
