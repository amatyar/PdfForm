using iTextSharp.text.pdf;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FormLists : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            var pdfs = Directory.GetFiles(Server.MapPath("~/Templates"), "*.pdf");

            foreach (var pdf in pdfs)
                ddlPDFs.Items.Add(Path.GetFileName(pdf));
        }
    }
    protected void btnShowField_Click(object sender, EventArgs e)
    {
        var pdfPath = Path.Combine(Server.MapPath("~/Templates"), ddlPDFs.SelectedValue);
        var fieldInfo = new List<string>();

        var reader = new PdfReader(pdfPath);
        var formFields = reader.AcroFields;

        foreach (DictionaryEntry entry in formFields.Fields)
        {
            var formFieldType = FieldsType.GetType(formFields.GetFieldType(entry.Key.ToString()));
            if (formFieldType is CheckBoxesType)
                fieldInfo.Add(string.Format("{0} - {1} - Export Value; {2}",
                    entry.Key,
                    formFieldType, AssociatesType.GetExportValue(entry.Value as AcroFields.Item)));
            else
                fieldInfo.Add(string.Format("{0} - {1}", entry.Key, formFieldType));
        }
        reader.Close();
        blFields.DataSource = fieldInfo;
        blFields.DataBind();
    }
    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        var pdfPath = Path.Combine(Server.MapPath("~/Forms"), ddlPDFs.SelectedValue);
        var formFieldMap = AssociatesType.GetFormFieldNames(pdfPath);

        var count = 1;
        foreach (var key in new List<string>(formFieldMap.Keys))
        {
            formFieldMap[key] = count.ToString();
            count++;

        }
        var pdfContents = AssociatesType.GeneratePDF(pdfPath, formFieldMap);
        AssociatesType.ReturnPDF(pdfContents, ddlPDFs.SelectedValue + "-Sample.pdf");
    }
}