using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FieldsType is base class
/// </summary>
public abstract class FieldsType
{
	public static FieldsType GetType(int type)
	{
        switch (type)
        {
            case 4:
                return new TextsType();
            case 2:
                return new CheckBoxesType();
            default:
                return new OthersType();
        }
	}
    public abstract int Type { get; }
}