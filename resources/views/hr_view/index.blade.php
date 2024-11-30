
@section('title')- {{'Nhà Tuyển Dụng'}} @endsection
    @include('layout.hrview.header_hr')
    <div class="main_hr_view">
        <div class="row">
            @include('layout.hrview.sidebar_hr')
            <div class="col-md-10">
                <div class="content_hr_view">
                    <div class="compete_text">
                        <i class="fa-solid fa-circle-exclamation"></i>
                        <span>
                            Để đảm bảo quyền lợi cho các tin đăng trả phí,<b> Toppy AI sẽ tự động phân tích và điều tiết khả năng tiếp cận ứng viên của các tin đăng miễn phí</b>
                              dựa trên mức độ cạnh tranh của thị trường. Trong khoảng thời gian bị giới hạn, tin miễn phí của bạn có thể sẽ không được hiển thị trong kết quả tìm kiếm việc làm. Để giữ lợi thế cạnh tranh và đảm bảo hiệu quả cao nhất, bạn hãy sử dụng dịch vụ trả phí cho các tin của mình.</span>
                    </div>
                    <div class="main_content_hr_view">
                        <h5>Bảng Tin</h5>
                        @if (\Session::has('success'))
                        <div class="form-apply" id="form-apply" style="display:block">
                            <div class="content-form" style="margin-top:120px">
                                <div class="job_apply" style="float:right;font-size:25px;color:red;cursor:pointer">
                                    <span onclick="close_apply_form()">
                                        <i class="fa-sharp fa-solid fa-xmark"></i>
                                    </span>
                                </div>
                                <div class="method-apply" style="text-align:center">
                                    <img src="https://www.shutterstock.com/image-vector/partying-emoji-emoticon-party-horn-600nw-1992128765.jpg" alt="" style="width:200px">
                                    <div>
                                        <span style="color:#01b14f;font-size:20px">{!! \Session::get('success') !!}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endif
                        <div class="row">
                            <div class="col-md-6">
                                <div class="banner_hr_view">
                                    <img src="../assets/image/banner_12_2022.41b811e.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="banner_hr_view">
                                    <img src="../assets/image/banner_12_2022.41b811e.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="statistical">
                                    <span>Hiệu quả tuyển dụng</span>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="data_statistical campaign">
                                                <div class="data_campaign">
                                                    <span>{{$num_all_cv}}</span>
                                                    <p>CV tiếp nhận</p>
                                                </div>
                                                <i class="fa-solid fa-bullhorn"></i>
                                                
                                            </div>
                                            <div class="data_statistical post_hr">
                                                <div class="data_post">
                                                    <span>{{$num_posts}}</span>
                                                    <p>Tin tuyển dụng</p>
                                                </div>
                                                <i class="fa-regular fa-file"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="data_statistical cv_receive">
                                                <div class="data_cv_receive">
                                                    <span>{{$num_cv_accepted}}</span>
                                                    <p>CV đã chấp nhận</p>
                                                </div>
                                                <i class="fa-sharp fa-solid fa-file-pdf"></i>
                                            </div>
                                            <div class="data_statistical cv_new">
                                                <div class="data_cv_new">
                                                    <span>{{$num_cv_not_seen}}</span>
                                                    <p>CV ứng tuyển chưa xem</p>
                                                </div>
                                                <i class="fa-sharp fa-solid fa-file-import"></i>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="account_hr">
                                    <div class="avatar_infor_hr">
                                        <img src="{{asset('storage/images/'.session('avatar'))}}" alt="">
                                        <div class="infor_account_hr">
                                            <span>{{ $hr->name }}</span>
                                            <p>{{$hr->email}}
                                                <br>
                                                {{$hr->phoneNumber}}
                                            </p>                                           
                                        </div>
                                    </div>
                                    <div class="level_account">
                                        @if($level_account_hr != null)
                                        <p class="current_level">Gói dịch vụ đang sử dụng: <span>{{$level_account_hr->name}}</span></p>
                                        <div class="required_up_acctount">
                                            <i class="fa-regular fa-user"></i>
                                            <p><b>Nâng cấp tài khoản</b>: Mua các gói dịch vụ để <span>được lợi ích tuyển dụng tốt nhất</span>.</p>
                                        </div>
                                        <div class="required_up_acctount">
                                            <i class="fa-solid fa-bullhorn"></i>
                                            <div>
                                                <p><b>Lượt xem CV hôm nay : </b><span>{{$level_account_hr->used_views}}/{{$level_account_hr->view_every_day}}</span></p>
                
                                                <p><b>Lượt tìm kiếm CV hôm nay : </b><span>{{$level_account_hr->used_search}}/{{$level_account_hr->search_every_day}}</span></p>
                                            </div>
                                        </div>
                                        <div>
                                            <p><b>Ngày hết hạn : </b><span id='countdown' 
                                                                        data-year='{{$expire_time->year}}' 
                                                                        data-month='{{$expire_time->month}}' 
                                                                        data-day='{{$expire_time->day}}' 
                                                                        data-hour='{{$expire_time->hour}}' 
                                                                        data-minute='{{$expire_time->minute}}' 
                                                                        data-second='{{$expire_time->second}}'>
                                                                    </span>
                                            </p>
                                        </div>
                                        @endif
                                        <div class="button_confirm_up_account">
                                            <a href="{{route('buy_service_view')}}">
                                                <button class="btn_update_infor">
                                                    Nâng cấp tài khoản
                                                </button>
                                            </a>
                                            <button class="more_infor">
                                                Tìm hiểu thêm
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                {{-- <div class="row">
                                    <div class="col-md-6">
                                        <div class="service suggest_ai">
                                            <span>Đề xuất từ Toppy AI</span>
                                            <p>Tự động phân tích bằng công nghệ trí tuệ nhân tạo</p>
                                            <div class="max_setting">
                                                <i class="fa-solid fa-gear"></i>
                                                <span>Tối ưu thiết lập</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="service service_expired">
                                            <span>Dịch vụ sắp hết hạn</span>
                                            <p>Hiện không có dịch vụ nào sắp hết hạn</p>
                                            <div class="max_setting">
                                                <i class="fa-solid fa-pen"></i>
                                                <a href="#">Quản lý dịch vụ</a>
                                            </div>
                                        </div>
                                    </div>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        window.onload = function() {
            var countdownElement = document.getElementById('countdown');
            var year = countdownElement.getAttribute('data-year');
            var month = countdownElement.getAttribute('data-month') - 1; // JavaScript months are 0-based
            var day = countdownElement.getAttribute('data-day');
            var hour = countdownElement.getAttribute('data-hour');
            var minute = countdownElement.getAttribute('data-minute');
            var second = countdownElement.getAttribute('data-second');
            console.log(year, month, day, hour, minute, second);

            var expireTime = new Date(year, month, day, hour, minute, second).getTime();
            console.log(expireTime);
            var interval = setInterval(function() {
                var now = new Date().getTime();
                var distance = expireTime - now;

                var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                countdownElement.innerText = days + " ngày " + hours + "h " + minutes + " phút " + seconds + " giây ";

                if (distance < 0) {
                    clearInterval(interval);
                    countdownElement.innerText = "EXPIRED";
                }
            }, 1000);
        };
    </script>
