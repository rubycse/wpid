<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        ADP Allocation Detail
    </title>
    <style type="text/css">
        .read-only {
            padding-top: 13px; min-height: 33px; font-weight: normal;
        }
    </style>
</head>
<body>
<div class="page-header" id="banner">
    <div class="row">
        <div class="col-sm-12">
            <h1>ADP Allocation Detail</h1>
        </div>
    </div>
</div>
<div class="row">

    <form class="form-horizontal">

        <fieldset>

            <div class="form-group">
                <label class="col-lg-2 control-label">Project Name</label>
                <div class="col-lg-4 read-only">Provide Water In Rural Area</div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Year</label>
                <div class="col-lg-2 read-only">2016-2017</div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Land Use</label>
                <div class="col-lg-2 read-only">Rural/Residential</div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">Ownership</label>
                <div class="col-lg-2 read-only">Govt-DPHE</div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 control-label">District</label>
                <div class="col-lg-2 read-only">Rajshahi</div>
            </div>

        </fieldset>
    </form>
</div>

<div class="page-header" id="banner">
    <div class="row">
        <div class="col-sm-12">
            <h1>List of Work Order</h1>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Upazila</th>
                <th>Type Of Water Point</th>
                <th>No. of Water Point</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><a href="#">Mohanpur</a></td>
                <td>Shallow Tara</td>
                <td>14</td>
            </tr>
            <tr>
                <td><a href="#">Mohanpur</a></td>
                <td>Modified Tara</td>
                <td>4</td>
            </tr>
            <tr>
                <td><a href="#">Durgapur</a></td>
                <td>Shallow Tara</td>
                <td>18</td>
            </tr>
            <tr>
                <td><a href="#">Durgapur</a></td>
                <td>Modified Tara</td>
                <td>3</td>
            </tr>
            <tr>
                <td><a href="#">Chaerghat</a></td>
                <td>Shallow Tara</td>
                <td>2</td>
            </tr>
            <tr>
                <td><a href="#">Chaerghat</a></td>
                <td>Modified Tara</td>
                <td>16</td>
            </tr>
            <tr>
                <td><a href="#">Putia</a></td>
                <td>Shallow Tara</td>
                <td>2</td>
            </tr>
            <tr>
                <td><a href="#">Putia</a></td>
                <td>Modified Tara</td>
                <td>16</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
