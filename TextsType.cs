using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TextsType
/// </summary>
public class TextsType : FieldsType
{
	public override int Type
	{
		get { return 4;}
	}
    public override string ToString()
    {
        return "TextField";
    }

}