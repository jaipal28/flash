<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 com-md-7">
            <div class="panel panel-default">
                <div class="panel-body">

                    <form class="form-horizontal" action="Add" method="post" >
                        <input type="hidden" name="csrfmiddlewaretoken" value="bTwMs5JspGHqdqH9Qll930iqY8jAMqDrmr8mv8JRHtIIXHb1PSGqLyjJRd3Qat04">
                        
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Name">Name:</label></label>
        <div class="col-sm-10"><input type="text" name="Name" maxlength="100" required="" id="id_Name"></div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <span class="text-danger small"></span>
        </div>
        <label class="control-label col-sm-2"><label for="id_Amount_To_Pay">Amount To Pay:</label></label>
        <div class="col-sm-10"><input type="number" name="Amount" step="any" required="" id="id_Amount_To_Pay"></div>
    </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-success" name="can" value="submit">Submit</button>
                           <button type="submit" class="btn btn-success" name="can" value="cancel" formnovalidate="" >Cancel</button>
                                    <!--<input type="submit" name="submit" value="Submit">-->
                                    <!--<input type="submit" name="cancel" value="Cancel" formnovalidate>-->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>