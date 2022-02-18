<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResumeBuilder.aspx.cs" Inherits="ResumeDemo.ResumeBuilder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resume Builder - Arctech Info</title>
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/multi-select.css" rel="stylesheet" />
    <link href="css/sweetalert2.min.css" rel="stylesheet" />
</head>
<body onload="onLoad();">
    <div class="container-fluid px-1 py-5 mx-auto">
        <div class="row d-flex justify-content-center">
            <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
                <h3>Arctech Info Resume Builder</h3>
                <p class="blue-text">
                    Just answer a few questions<br />
                    so that we can search the right job for you.
                </p>
                <div class="card">
                    <h5 class="text-center mb-4">Powering world-class companies</h5>
                    <form class="form-card" runat="server">
                        <asp:HiddenField runat="server" id="HiddenSaveStatus" />
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">First name<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxFirstName" placeholder="Enter your first name" runat="server" />
                            </div>
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Last name<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxLastName" placeholder="Enter your last name" />
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Personal email<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxEmail" placeholder="" />
                            </div>
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Phone number<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxMobile" placeholder="" />
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Job title<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxJob" placeholder="" />
                            </div>
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Date Of Birth<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxDateOfBirth" placeholder="" TextMode="Date" />
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Skill Set<span class="text-danger"> *</span></label>
                                <asp:DropDownList runat="server" CssClass="enable-validate" ID="ListBoxSkills">
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
                                <div>
                                    <asp:RadioButton runat="server" ID="RadioButtonGenderMale" Text="Male" GroupName="Gender" />
                                    <asp:RadioButton runat="server" ID="RadioButtonGenderFemale" Text="Female" GroupName="Gender" />
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Upload Profile<span class="text-danger"> *</span></label>
                                <asp:FileUpload runat="server" ID="FileUploadProfile" />
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-12 flex-column d-flex">
                                <label class="form-control-label px-3">Tell us something about yourself?<span class="text-danger"> *</span></label>
                                <asp:TextBox runat="server" CssClass="enable-validate" ID="TextBoxSummary" placeholder="" />
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="form-group col-sm-6">
                                <asp:Button runat="server" CssClass="btn-block btn-primary" ID="ButtonSave" Text="Save Resume" OnClick="ButtonSave_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="js/script.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.multi-select.js"></script>
    <script src="js/sweetalert2.min.js"></script>

    <script type="text/javascript">

        function onLoad()
        {
            enableValidation();
            checkSaveStatus();
        };

        function checkSaveStatus() {
            const hiddenStatus = document.getElementById("HiddenSaveStatus");

            if (hiddenStatus.value === "success")
                showSuccess();
            else if (hiddenStatus.value === "failure")
                showError();
        }

        function showSuccess() {
            //alert("Thank you!!");
            Swal.fire(
                'Good job!',
                'Your resume was saved!',
                'success'
            );
        }

        function showError() {
            //alert("Error saving your resume. Try again later!!");
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Something went wrong!',
                footer: '<a href="">Why do I have this issue?</a>'
            });
        }

    </script>
</body>
</html>
