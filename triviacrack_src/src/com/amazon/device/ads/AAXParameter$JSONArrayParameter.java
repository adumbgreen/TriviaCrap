// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.amazon.device.ads:
//            AAXParameter, DebugProperties, Log

class  extends AAXParameter
{

    protected volatile Object getFromDebugProperties()
    {
        return getFromDebugProperties();
    }

    protected JSONArray getFromDebugProperties()
    {
        return parseFromString(DebugProperties.getDebugPropertyAsString(getDebugName(), null));
    }

    protected volatile Object parseFromString(String s)
    {
        return parseFromString(s);
    }

    protected JSONArray parseFromString(String s)
    {
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray(s);
        }
        catch (JSONException jsonexception)
        {
            String s1 = AAXParameter.access$100();
            Object aobj[] = new Object[1];
            aobj[0] = getName();
            Log.e(s1, "Unable to parse the following value into a JSONArray: %s", aobj);
            return null;
        }
        return jsonarray;
    }

    (String s, String s1)
    {
        super(s, s1);
    }
}
