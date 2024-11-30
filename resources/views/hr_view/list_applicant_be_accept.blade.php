@section('title')- {{'Danh sách ứng cử viên đã duyệt'}} @endsection
    @include('layout.hrview.header_hr')
    <div class="main_hr_view">
        <div class="row">
            @include('layout.hrview.sidebar_hr')
            <div class="col-md-10">
              @if(session('create_post_success'))
                <div class="alert alert-success text-center" style="margin-left:50px;margin-top:20px">
                        {{session('create_post_success')}}
                </div>
              @endif
              <table class="table table-bordered" id="customers">
                                  <thead>
                                      <tr>
                                        <th scope="col">Tên ứng cử viên</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">link CV</th>
                                        <th scope="col">Giới Tính</th>
                                        <th scope="col">Số điện thoại</th>
                                        <th scope="col">Tỉnh</th>
                                        <th scope="col">Nhắn tin</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                    @foreach($list_applicants_accepted as $applicant)
                                    <input type="hidden" value="{{$applicant->id}}" class="applicant_id">
                                      <tr>
                                        <td>
                                            <a href="" style="text-decoration:none;color:green">{{$applicant->name}}</a>
                                        </td>
                                        <td>
                                            {{$applicant->email}}
                                        </td>
                                        @if($applicant->type_cv === 'cv_web')
                                        <td><span style="color:blue;cursor:pointer;text-decoration:underline;" class="text_center" id="cv_web">{{$applicant->name}}-{{$applicant->email}}</span></td>
                                        @else
                                        <td class="text_center"><a href="{{asset('storage/'.$applicant->file_cv)}}"  target="blank" onClick="watch_file_cv_upload()" class="cv_upload">{{$applicant->file_cv}}</a></td>
                                        @endif
                                        <td>
                                            {{$applicant->gender}}
                                        </td>
                                        <td>
                                            {{$applicant->phoneNumber}}
                                        </td>
                                        <td>
                                            {{$applicant->city}}
                                        </td>
                                        <td>
                                            <a href="{{route('contact_applicant',[$applicant->id])}}" class="btn btn-primary btn-sm" style="color:white"><i class="fas fa-envelope"></i></a>
                                        </td>
                                      </tr>
                                    @endforeach

                                  </tbody>
                  </table>

            </div>
            <div class="form-apply" id="form-apply">
                <div id="content-cv_profile_topcv">
                </div>
            </div>
        </div>
    </div>
    <script>
      $(document).ready(function(){
        $('#btn_delete_post').click(function(){
          alert('Bạn có muốn xóa bài viết này không?');

        });
        $('#cv_web').click(function(){
        $('#form-apply').css('display','block');
        let applicant_id = $('.applicant_id').val();
        console.log(applicant_id);
        let route = '{{route('applicant.show.cv_web')}}';
        $.ajax({
            url:route,
            method:'get',
            data:{
              applicant_id: applicant_id,
            },
            dataType: 'json',
            success:function(data){
              console.log(data);
                $('#content-cv_profile_topcv').html(data);
                $('.close').click(function(){
                  $('#form-apply').css('display','none');
                })

            },
            error:function(data){
                console.log(data);
            }
          })
      })
        
      })
    </script> 
