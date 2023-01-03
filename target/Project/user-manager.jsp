<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %> >
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/docs/b4/jquery/getting-started/cdn/">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/user-manager.css">
</head>

<body>
   <%@include file="header-admin.jsp"%>
    <div class="card-body px-0 pb-2 content">
        <div class="table-responsive p-0">
            <table class="table align-items-center mb-0">
                <thead>
                    <tr>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tên người dùng
                        </th>
                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Cấp quyền
                        </th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Trạng thái</th>
                        <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                           Số điện thoại</th>
                        <th class="text-secondary opacity-7"></th>
                    </tr>
                </thead>
                <tbody>
                <%List<User> list = (List<User>) request.getAttribute("listUser");
                    for (int i=1; i<list.size();i++){%>
                    <tr>
                        <td>
                            <div class="d-flex px-2 py-1">
                                <div>
                                    <img src="<%=list.get(i).getAvatar()%>" class="avatar avatar-sm me-3 border-radius-lg"
                                        alt="user1">
                                </div>
                                <div class="d-flex flex-column justify-content-center">
                                    <h6 class="mb-0 text-sm"><%=list.get(i).getFullName()%></h6>
                                    <p class="text-xs text-secondary mb-0"><%=list.get(i).getEmail()%></p>
                                </div>
                            </div>
                        </td>
                        <td>
                            <p class="text-xs font-weight-bold mb-0"><%=list.get(i).getVarieties()%></p>
                            <p class="text-xs text-secondary mb-0"><%=list.get(i).getVarieties()%></p>

                        </td>
                        <td class="align-middle text-center text-sm">
                            <span class="badge badge-sm bg-gradient-success">Trực tuyến</span>
                        </td>
                        <td class="align-middle text-center">
                            <span class="text-secondary text-xs font-weight-bold"><%=list.get(i).getPhoneNumber()%></span>
                        </td>
                        <td class="align-middle">
                            <a href="" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip"
                                data-original-title="Edit user">
                                sửa
                            </a>
                        </td>
                    </tr>
                <%}%>



                </tbody>
            </table>
        </div>
    </div>



    </body>

</html>