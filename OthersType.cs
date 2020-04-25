using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for OthersType
/// </summary>
public class OthersType : FieldsType
{
    public override int Type
    {
        get { return -1; }
    }

    public override string ToString()
    {
        return "Other";
    }
}