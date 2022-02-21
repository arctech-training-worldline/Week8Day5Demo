using System;
using System.IO;
using ResumeDemo.Services;

namespace ResumeDemo
{
    // Single Responsibility Principle
    public partial class ResumeBuilder : System.Web.UI.Page
    {
        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            try
            {
                var resumeService = new ResumeService
                {
                    FirstName = TextBoxFirstName.Text,
                    LastName = TextBoxLastName.Text,
                    DateOfBirth = DateTime.Parse(TextBoxDateOfBirth.Text),
                    Gender = RadioButtonGenderMale.Checked ? GenderType.Male : GenderType.Female,
                    Job = TextBoxJob.Text,
                    Email = TextBoxEmail.Text,
                    Mobile = TextBoxMobile.Text,
                    SkillSet = ListBoxSkills.Text,
                    Summary = TextBoxSummary.Text
                };

                var basePath = Server.MapPath("~/App_Data");

                resumeService.Save(basePath);

                if (FileUploadProfile.HasFile)
                {
                    var profilePath = Path.Combine(resumeService.ResumePath, FileUploadProfile.FileName);
                    FileUploadProfile.SaveAs(profilePath);
                }

                HiddenSaveStatus.Value = "success";
            }
            catch
            {
                HiddenSaveStatus.Value = "failure";
            }
        }
    }
}