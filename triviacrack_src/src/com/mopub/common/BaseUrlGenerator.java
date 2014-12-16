// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.net.Uri;
import com.mopub.common.util.Strings;

public abstract class BaseUrlGenerator
{

    private StringBuilder a;
    private boolean b;

    public BaseUrlGenerator()
    {
    }

    private String a()
    {
        if (b)
        {
            b = false;
            return "?";
        } else
        {
            return "&";
        }
    }

    protected void a(String s, String s1)
    {
        a = new StringBuilder((new StringBuilder()).append("http://").append(s).append(s1).toString());
        b = true;
    }

    protected transient void a(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (as == null || as.length < 1)
        {
            return;
        }
        for (int i = 0; i < -1 + as.length; i++)
        {
            stringbuilder.append(as[i]).append(",");
        }

        stringbuilder.append(as[-1 + as.length]);
        b("dn", stringbuilder.toString());
    }

    protected String b()
    {
        return a.toString();
    }

    protected void b(String s, String s1)
    {
        if (s1 == null || Strings.isEmpty(s1))
        {
            return;
        } else
        {
            a.append(a());
            a.append(s);
            a.append("=");
            a.append(Uri.encode(s1));
            return;
        }
    }

    protected void b(boolean flag)
    {
        String s;
        if (flag)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        b("android_perms_ext_storage", s);
    }

    protected void c(boolean flag)
    {
        if (flag)
        {
            b("dnt", "1");
        }
    }

    public abstract String generateUrlString(String s);

    protected void j(String s)
    {
        b("v", s);
    }

    protected void k(String s)
    {
        b("av", s);
    }

    protected void l(String s)
    {
        b("udid", s);
    }
}
