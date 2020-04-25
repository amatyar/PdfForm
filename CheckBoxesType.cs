using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CheckBoxesType derive class
/// </summary>
public class CheckBoxesType:FieldsType
{
	public override int Type
{
	get { return 2; }
}
    public override string ToString()
{
 	 return "CheckBox";
}
	
}