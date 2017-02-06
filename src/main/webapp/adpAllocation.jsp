<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        ADP Allocation Detail
    </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript">
        function toggle(id) {
            var icon = $('#' + id);
            icon.toggleClass('glyphicon-menu-right');
            icon.toggleClass('glyphicon-menu-down');
        }
    </script>

</head>
<body>
<div class="page-header" id="banner">
    <div class="row">
        <div class="col-sm-12">
            <div class="pull-left"><h1>ADP Allocation Detail</h1></div><div class="pull-left">&nbsp;&nbsp;&nbsp;<h4>(Approved)</h4></div>
        </div>
    </div>
</div>

<div class="row">
    <form class="form-horizontal">
        <fieldset>
            <div class="form-group">
                <label for="projectName" class="col-lg-2 control-label">Project Name</label>
                <div class="col-lg-4">
                    <select class="form-control" id="projectName">
                        <option>-Please Select-</option>
                        <option checked>Provide Water In Rural Area</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="year" class="col-lg-2 control-label">Year</label>
                <div class="col-lg-2">
                    <select class="form-control" id="year">
                        <option>2015-2016</option>
                        <option checked>2016-2017</option>
                        <option>2017-2018</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="landUse" class="col-lg-2 control-label">Land Use</label>
                <div class="col-lg-3">
                    <select class="form-control" id="landUse">
                        <option>-Please Select-</option>
                        <option checked>Rural/Residential</option>
                        <option>Rural/Agriculture</option>
                        <option>Rural/Industry</option>
                        <option>Rural/Commercial</option>
                        <option>Urban*/Residential</option>
                        <option>Urban*/Agriculture</option>
                        <option>Urban*/Industry</option>
                        <option>Urban*/Commercial</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="ownership" class="col-lg-2 control-label">Ownership</label>
                <div class="col-lg-3">
                    <select class="form-control" id="ownership">
                        <option>-Please Select-</option>
                        <option>Private</option>
                        <option checked>Govt-DPHE</option>
                        <option>Govt-LGED</option>
                        <option>Govt-Other</option>
                        <option>NGO</option>
                        <option>GoB-Unicef</option>
                        <option>GoB-Danidae</option>
                        <option>GoB-World Bank</option>
                        <option>GoB-ADB</option>
                        <option>GoB-JICA</option>
                    </select>
                </div>
            </div>

            <div class="form-group">
                <label for="district" class="col-lg-2 control-label">District</label>
                <div class="col-lg-3">
                    <select class="form-control" id="district">
                        <option>-Please Select-</option>
                        <option>Bagerhat</option>
                        <option>Chitagong</option>
                        <option checked>Rajshahi</option>
                        <option>Bhola</option>
                        <option>Dhaka</option>
                    </select>
                </div>
            </div>

            <%--<div class="form-group">--%>
                <%--<label for="wpType" class="col-lg-2 control-label">Water Point Type</label>--%>
                <%--<div class="col-lg-6">--%>
                    <%--<select class="form-control" id="wpType">--%>
                        <%--<option>-Please Select-</option>--%>
                        <%--<option checked>Shallow Tube Well No. 6 pump</option>--%>
                        <%--<option>Shallow Tube Well Tara dev head pump/Tara Pump</option>--%>
                        <%--<option>Shallow Tube Well Other Pumps</option>--%>
                        <%--<option>Deep Tube Well No. 6 pump</option>--%>
                        <%--<option>Deep Tube Well Tara dev head pump/Tara pump</option>--%>
                        <%--<option>Deep Tube Well Other Pumps</option>--%>
                        <%--<option>Ring Well No.6 pump</option>--%>
                        <%--<option>Ring Well Tara dev head pump/Tara pump</option>--%>
                        <%--<option>Ring well Other Pumps</option>--%>
                        <%--<option>Pond sand filter (PSF)</option>--%>
                        <%--<option>Rain water harvester</option>--%>
                        <%--<option>SST/VSST</option>--%>
                        <%--<option>Infiltration gallery</option>--%>
                        <%--<option>Gravity flow system</option>--%>
                        <%--<option>Pipe water system</option>--%>
                    <%--</select>--%>
                <%--</div>--%>
            <%--</div>--%>


        </fieldset>
    </form>
</div>

<div class="subtitle">
    <div class="row">
        <div class="col-sm-11">
            <h3>List of Water Point Allocation</h3>
        </div>
        <div class="col-sm-1">
            <h3 class="pull-right" data-toggle="collapse" data-target="#wpAllocations" onclick="toggle('wpAllocationCollapse');">
                <span id="wpAllocationCollapse" class="glyphicon glyphicon-menu-right"></span>
            </h3>
        </div>
    </div>
</div>

<div id="wpAllocations" class="row collapse">
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
        <a href="#" class="btn btn-sm btn-success">Add Allocation</a>
    </div>
</div>

<div class="subtitle">
    <div class="row">
        <div class="col-sm-11">
            <h3>List of Work Order</h3>
        </div>
        <div class="col-sm-1">
            <h3 class="pull-right" data-toggle="collapse" data-target="#workOrders" onclick="toggle('workOrderCollapse');">
                <span id="workOrderCollapse" class="glyphicon glyphicon-menu-right"></span>
            </h3>
        </div>
    </div>
</div>

<div id="workOrders" class="row collapse">
    <div class="col-lg-12">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Work Order Number</th>
                <th>Upazila</th>
                <th>Work Order Date</th>
                <th>Total No. of Water Point</th>
                <th>Unique ID Allocation</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><a href="workOrder.jsp">100</a></td>
                <td>Mohanpur</td>
                <td>27/02/2017</td>
                <td>18</td>
                <td>001-018</td>
            </tr>
            <tr>
                <td><a href="#">101</a></td>
                <td>Durgapur</td>
                <td>27/02/2017</td>
                <td>21</td>
                <td>019-039</td>
            </tr>
            <tr>
                <td><a href="#">102</a></td>
                <td>Chaerghat</td>
                <td>27/02/2017</td>
                <td>18</td>
                <td>040-057</td>
            </tr>
            <tr>
                <td><a href="#">102</a></td>
                <td>Putia</td>
                <td>27/02/2017</td>
                <td>18</td>
                <td>058-075</td>
            </tr>
            </tbody>
        </table>

        <a href="#" class="btn btn-sm btn-success">Add Work Order</a>
    </div>
</div>

<div class="alert buttons">
    <div class="row">
        <div class="pull-left left-buttons"></div>
        <div class="pull-right right-buttons">
            <input type="submit" value="Discontinue" class="btn btn-success"/>
        </div>
    </div>
</div>

</body>
</html>
