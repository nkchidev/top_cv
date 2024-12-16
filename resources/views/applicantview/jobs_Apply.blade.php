<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="{{ asset('css/applicant.css') }}">
    <link rel="stylesheet" href="{{ asset('css/public.css') }}">
    <script src="{{ asset('js/js.js') }}"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css " />
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap-switch-button@1.1.0/css/bootstrap-switch-button.min.css"
        rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap-switch-button@1.1.0/dist/bootstrap-switch-button.min.js">
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ỨNG CỬ VIÊN</title>
</head>

<body>
    @include('layout.applicantview.header')
    <div id="main_profile">
        @include('layout.applicantview.navbar_profile')
        <div class="container-fluid">
            <div class="row">
                <table class="table table-bordered" id="customers">
                    <thead>
                        <tr>
                            <th scope="col">Công ty</th>
                            <th scope="col">Bài ứng tuyển</th>
                            <th scope="col">Ngày nộp đơn</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Tùy chọn</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if ($jobs_apply->count() == 0)
                            <td colspan="5" class="text-center">Bạn chưa ứng tuyển công việc nào</td>
                        @else
                            @foreach ($jobs_apply as $job_apply)
                                @if (session('apply_cv_id') != null && session('apply_cv_id') == $job_apply->apply_cvs_id)
                                    <tr style="border:5px solid red;background-color:lightblue;">
                                        {{ session()->forget('apply_cv_id') }}
                                    @else
                                    <tr>
                                @endif
                                <input type="hidden" value="{{ $job_apply->apply_cvs_id }}" id="job_apply_cv">
                                <td style="text-align:left">
                                    <img src="{{ asset('storage/' . $job_apply->company_logo) }}" alt=""
                                        style="height:50px;width:50px">
                                    {{ $job_apply->company_name }}
                                </td>
                                <td class="text_center_job_apply title_post"><a
                                        href="{{ route('post.detail', [$job_apply->post_id, $job_apply->slug]) }}"
                                        style="text-decoration:none;color:green">{{ $job_apply->post_title }}</a></td>
                                <td class="text_center_job_apply">
                                    {{ \Carbon\Carbon::parse($job_apply->date_apply)->diffForHumans() }}</td>
                                @if ($job_apply->status_apply == 1)
                                    <td class="text_center_job_apply">
                                        <div class="unexpired">
                                            Đã đồng ý
                                        </div>
                                    </td>
                                @elseif($job_apply->status_apply == 2)
                                    <td class="text_center_job_apply">
                                        <div class="expired">
                                            Đã từ chối
                                        </div>
                                    </td>
                                @else
                                    <td class="text_center_job_apply">
                                        <div class="wait_response">
                                            Chờ phản hồi
                                        </div>
                                    </td>
                                @endif
                                <td class="text_center_job_apply">
                                    <button class="btn btn-danger btn-sm remove_cv_apply_btn"
                                        style="color:white;margin-top:-5px"><i
                                            class="fa-sharp fa-regular fa-circle-xmark"></i></button>
                                </td>

                                </tr>
                            @endforeach
                            {{ $jobs_apply->links() }}
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            const list_btn_remove = document.querySelectorAll('.remove_cv_apply_btn');

            if (list_btn_remove.length != 0) {
                for (let i = 0; i < list_btn_remove.length; i++) {
                    list_btn_remove[i].addEventListener('click', function() {
                        const job_apply_cv_id = this.parentElement.parentElement.querySelector(
                            '#job_apply_cv').value;
                        const title_post = this.parentElement.parentElement.querySelector('.title_post')
                            .innerText;
                        const check = confirm('Bạn có muốn xóa bài ứng tuyển ' + title_post + ' không?');
                        if (check) {
                            $.ajax({
                                url: '{{ route('applicant.remove_cv_apply') }}',
                                type: 'delete',
                                data: {
                                    _token: "{{ csrf_token() }}",
                                    job_apply_cv_id: job_apply_cv_id
                                },
                                dataType: 'json',
                                success: function(data) {
                                    list_btn_remove[i].parentElement.parentElement.remove();
                                }
                            })
                        }
                    })
                }
            }
        })
    </script>
</body>

</html>
