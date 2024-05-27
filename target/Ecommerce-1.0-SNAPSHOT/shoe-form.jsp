<%--
Document : shoe-form
Created on : May 24, 2024, 2:17:36 AM
Author : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shoe Management Application</title>
        <link rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous">
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark"
                style="background-color: tomato">
                <div>
                    <a href="https://www.javaguides.net" class="navbar-brand">
                        Shoe Management App </a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="shoe-list.jsp"
                            class="btn btn-danger">Go back</a></li>
                </ul>
            </nav>
        </header>
        <br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <form action="addshoe" method="post" enctype="multipart/form-data">
                        <caption>
                            <h2>
                                Add New Shoe
                            </h2>
                        </caption>

                        <--<!-- comment >
                            <input type="hidden" name="id" />
                        -->

                        <fieldset class="form-group">
                            <label>Shoe Name</label> <input type="text"
                                class="form-control"
                                name="name" required="required">
                        </fieldset>

						<fieldset class="form-group">
                            <label>Shoe Description</label> <input type="text"
                                class="form-control"
                                name="description" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Shoe price</label> <input type="text"
                                class="form-control"
                                name="price">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Shoe image</label> <input type="file"
                                class="form-control"
                                name="image"
                                id="fileupload">
                            
                        </fieldset>

                        <!--<script src="js/jquery-latest.min.js">
                            $(function (){
                                $("#fileupload").change(function(event){
                                    var x = event.target.files[0].name;
                                    
                                    document.getElementsById('image_name') = x;
                                });
                            });
                        </script> -->
                        <button type="submit"
                            class="btn btn-success">Save</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
