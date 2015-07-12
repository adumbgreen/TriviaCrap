// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.f.b;

import android.content.Context;
import com.etermax.tools.f.b;
import com.flurry.android.FlurryAgent;
import java.util.Map;

// Referenced classes of package com.etermax.tools.f.b:
//            b

public class a
    implements b
{

    Context a;
    private String b;
    private boolean c;

    public a()
    {
    }

    protected void a()
    {
        if (a instanceof com.etermax.tools.f.b.b)
        {
            b = ((com.etermax.tools.f.b.b)a).w();
            if (!com.etermax.tools.g.a.a() && b != null && b.length() > 0)
            {
                FlurryAgent.setCaptureUncaughtExceptions(true);
                FlurryAgent.setVersionName(com.etermax.a.b.d(a));
                FlurryAgent.setLogEvents(true);
                c = false;
                return;
            } else
            {
                FlurryAgent.setLogEvents(false);
                c = true;
                return;
            }
        } else
        {
            throw new IllegalStateException("Application must implement IApplicationFlurry");
        }
    }

    public void a(Context context)
    {
        if (!c && context != null)
        {
            try
            {
                Class.forName("android.os.AsyncTask");
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                com.etermax.a.a.c("FlurryManager", "Flurry - Error in workaround", classnotfoundexception);
            }
            FlurryAgent.onStartSession(context, b);
        }
    }

    public void a(String s)
    {
        if (!c && s != null)
        {
            FlurryAgent.logEvent(s);
        }
    }

    public void a(String s, String s1, String s2)
    {
        if (!c && s != null)
        {
            FlurryAgent.onError(s, s1, s2);
        }
    }

    public void a(String s, Map map)
    {
        if (!c && s != null)
        {
            FlurryAgent.logEvent(s, map);
        }
    }

    public void b(Context context)
    {
        if (!c && context != null)
        {
            FlurryAgent.onEndSession(context);
        }
    }
}
