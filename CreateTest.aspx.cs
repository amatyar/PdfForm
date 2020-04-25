using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateTest : System.Web.UI.Page
{
    
    protected void btnGeneratePDF_Click(object sender, EventArgs e)
    {
        var pdfPath = Path.Combine(Server.MapPath("~/Templates/Test.pdf"));

        var pdfFormField = AssociatesType.GetFormFieldNames(pdfPath);

        //TextBoxes
        pdfFormField["Given Name Text Box"] = txtGName.Text;
        pdfFormField["Family Name Text Box"] = txtFName.Text;
        pdfFormField["Address 1 Text Box"]=txtAdd1.Text;
        pdfFormField["Address 2 Text Box"]=txtAdd2.Text;
        pdfFormField["House nr Text Box"]= txtHouseNo.Text;
        pdfFormField["City Text Box"]=txtCity.Text;
        pdfFormField["Height Formatted Field"]=txtHeight.Text;
        pdfFormField["Postcode Text Box"]=txtPostcode.Text;
        
        // check  box 

        pdfFormField["Language 4 Check Box"] = ChkList.SelectedValue;
        
        pdfFormField["Driving License Check Box"]=ChbDL.Checked.ToString();

        // dropdown  List
        pdfFormField["Country Combo Box"]=ddlCountry.SelectedValue;        
        pdfFormField["Gender List Box"]=ddlGender.SelectedValue;
        pdfFormField["Favourite Colour List Box"] = ddlColor.SelectedValue;

        var pdfContents = AssociatesType.GeneratePDF(pdfPath, pdfFormField);
        AssociatesType.ReturnPDF(pdfContents, "Completed-Test.pdf");
              
     }
    
    
}