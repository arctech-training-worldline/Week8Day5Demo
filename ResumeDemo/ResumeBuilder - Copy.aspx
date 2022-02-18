<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResumeBuilder.aspx.cs" Inherits="ResumeDemo.ResumeBuilder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resume Builder - Arctech Info</title>
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/multi-select.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid px-1 py-5 mx-auto">
            <div class="row d-flex justify-content-center">
                <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
                    <h3>Arctech Info Resume Builder</h3>
                    <p class="blue-text">
                        Just answer a few questions<br>
                        so that we can search the right job for you.
                    </p>
                    <div class="card">
                        <h5 class="text-center mb-4">Powering world-class companies</h5>
                        <form class="form-card" onsubmit="event.preventDefault()">
                            <div class="row justify-content-between text-left">
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">First name<span class="text-danger"> *</span></label>
                                    <%--<input class="enable-validate" type="text" id="firstName" name="firstName" placeholder="Enter your first name" />--%>
                                    <asp:TextBox CssClass="enable-validate" ID="TextBoxFirstName" placeholder="Enter your first name" runat="server" />
                                </div>
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Last name<span class="text-danger"> *</span></label>
                                    <input class="enable-validate" type="text" id="lastName" name="lastName" placeholder="Enter your last name" />
                                </div>
                            </div>
                            <div class="row justify-content-between text-left">
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Personal email<span class="text-danger"> *</span></label>
                                    <input class="enable-validate" type="text" id="email" name="email" placeholder="" />
                                </div>
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Phone number<span class="text-danger"> *</span></label>
                                    <input class="enable-validate" type="text" id="mobile" name="mobile" placeholder="" />
                                </div>
                            </div>
                            <div class="row justify-content-between text-left">
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Job title<span class="text-danger"> *</span></label>
                                    <input class="enable-validate" type="text" id="job" name="job" placeholder="" />
                                </div>
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Date Of Birth<span class="text-danger"> *</span></label>
                                    <input class="enable-validate" type="date" id="dateOfBirth" name="dateOfBirth" placeholder="" />
                                </div>
                            </div>
                            <div class="row justify-content-between text-left">
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Skill Set<span class="text-danger"> *</span></label>
                                    <asp:DropDownList CssClass="enable-validate" ID="ListBoxSkills" runat="server">
                                        <asp:ListItem Text="C#" Value="1" />
                                        <asp:ListItem Text="Asp.Net" Value="2" />
                                        <asp:ListItem Text="Java" Value="3" />
                                        <asp:ListItem Text="Oracle" Value="4" />
                                        <asp:ListItem Text="Sql Server" Value="5" />
                                        <asp:ListItem Text="HTML/CSS" Value="6" />
                                        <asp:ListItem Text="Javascript" Value="7" />
                                        <asp:ListItem Text="Angular" Value="8" />
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group col-sm-6 flex-column d-flex">
                                    <label class="form-control-label px-3">Gender<span class="text-danger"> *</span></label>
                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="optradio" />Male
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <label class="form-check-label">
                                            <input type="radio" class="form-check-input" name="optradio" />Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-between text-left">
                                <div class="form-group col-12 flex-column d-flex">
                                    <label class="form-control-label px-3">Tell us something about yourself?<span class="text-danger"> *</span></label>
                                    <input class="enable-validate" type="text" id="summary" name="summary" placeholder="" />
                                </div>
                            </div>
                            <div class="row justify-content-end">
                                <div class="form-group col-sm-6">
                                    <button type="submit" class="btn-block btn-primary">Request a demo</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="js/script.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.multi-select.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            enableValidation();
        });

    </script>
</body>
</html>
