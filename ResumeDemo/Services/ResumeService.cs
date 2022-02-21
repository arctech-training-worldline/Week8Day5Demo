using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace ResumeDemo.Services
{
    public enum GenderType
    {
        Male = 1,
        Female = 2
    }

    /// <summary>
    /// What is the single responsibility principle of this ResumeService class?
    /// To save the Resume Details to a File.
    /// </summary>
    public class ResumeService
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string Job { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string SkillSet { get; set; }
        public GenderType Gender { get; set; }
        public string Summary { get; set; }
        public string ResumePath { get; set; }

        public void Save(string basePath)
        {
            var stringBuilderData = new StringBuilder();

            stringBuilderData.AppendLine($"Name: {FirstName} {LastName}");
            stringBuilderData.AppendLine($"Email: {Email}");
            stringBuilderData.AppendLine($"Mobile: {Mobile}");
            stringBuilderData.AppendLine($"Job: {Job}");
            stringBuilderData.AppendLine($"DateOfBirth: {DateOfBirth:dd-MMM-yyyy}");
            stringBuilderData.AppendLine($"SkillSet: {SkillSet}");
            stringBuilderData.AppendLine($"Gender: {Gender}");
            stringBuilderData.AppendLine($"Summary: {Summary}");

            ResumePath = CreateFolder(basePath);
            var filePath = Path.Combine(ResumePath, "resume.txt");

            File.WriteAllText(filePath, stringBuilderData.ToString());
        }

        private string CreateFolder(string basePath)
        {
            var folderPath = Path.Combine(basePath, $"{FirstName}_{LastName}");

            if (Directory.Exists(folderPath))
                throw new Exception("Not Allowed");

            Directory.CreateDirectory(folderPath);
            return folderPath;
        }
    }
}