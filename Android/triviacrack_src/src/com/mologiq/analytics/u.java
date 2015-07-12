// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.content.Context;
import org.json.JSONObject;

// Referenced classes of package com.mologiq.analytics:
//            ag

public abstract class u
{

    private final String a;

    public u(String s)
    {
        a = s;
    }

    protected abstract String a();

    void a(Context context)
    {
        try
        {
            a(ag.b((new StringBuilder()).append(ag.a(context)).append(System.getProperty("line.separator")).append(a).toString()));
            return;
        }
        catch (Exception exception)
        {
            ag.a(exception.getStackTrace().toString());
        }
    }

    protected abstract void a(String s);

    boolean b(Context context)
    {
        String s = ag.b((new StringBuilder()).append(ag.a(context)).append(System.getProperty("line.separator")).append(a).toString());
        boolean flag = true;
        if (s != null && s.length() > 0)
        {
            JSONObject jsonobject = (new JSONObject(s)).getJSONObject("core");
            if (jsonobject != null && jsonobject.toString().equals(a()))
            {
                flag = false;
            }
        }
        if (flag)
        {
            c(context);
        }
        return flag;
    }

    public abstract void c(Context context);
}
