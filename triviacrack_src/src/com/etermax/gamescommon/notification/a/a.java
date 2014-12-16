// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification.a;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import com.etermax.gamescommon.f.b.b;
import com.etermax.gamescommon.notification.h;
import com.etermax.gamescommon.user.c;
import com.etermax.tools.j.g;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public abstract class a
{

    protected Context a;
    protected Bundle b;
    protected String c;
    protected String d;
    protected boolean e;
    protected String f;

    public a(Context context, Bundle bundle)
    {
        a = context;
        b = bundle;
        c = b.getString("data.TYPE");
        d = b.getString("data.FID");
        f = b.getString("data.PFU");
        e = c(b, "data.SFP");
    }

    protected long a(Bundle bundle, String s)
    {
        long l;
        try
        {
            l = Long.parseLong(bundle.getString(s));
        }
        catch (NumberFormatException numberformatexception)
        {
            return -1L;
        }
        return l;
    }

    public transient abstract SpannableString a(h h, Object aobj[]);

    public b a()
    {
        float f1 = g.a(50, a);
        if (!e || TextUtils.isEmpty(d)) goto _L2; else goto _L1
_L1:
        String s = com.etermax.gamescommon.user.c.a(d, (int)f1);
_L4:
        return (new b()).a(Integer.valueOf(c())).a(d()).b(e()).b(s).c(Long.valueOf(System.currentTimeMillis()));
_L2:
        boolean flag = TextUtils.isEmpty(f);
        s = null;
        if (!flag)
        {
            s = com.etermax.gamescommon.user.c.b(f, (int)f1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected Integer a(Bundle bundle, String s, Integer integer)
    {
        Integer integer1;
        try
        {
            integer1 = Integer.valueOf(Integer.parseInt(bundle.getString(s)));
        }
        catch (NumberFormatException numberformatexception)
        {
            return integer;
        }
        return integer1;
    }

    protected String a(String s)
    {
        String s1;
        s1 = "";
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        String s2 = URLDecoder.decode(s, "UTF-8");
        s1 = s2;
_L2:
        return s1;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if (com.etermax.tools.g.a.a())
        {
            unsupportedencodingexception.printStackTrace();
            return s1;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public abstract void a(android.support.v4.app.NotificationCompat.Builder builder, h h);

    protected String b(Bundle bundle, String s)
    {
        if (bundle.containsKey(s))
        {
            return bundle.getString(s);
        } else
        {
            return null;
        }
    }

    public abstract boolean b();

    public abstract int c();

    protected boolean c(Bundle bundle, String s)
    {
        return Boolean.parseBoolean(bundle.getString(s));
    }

    public abstract SpannableString d();

    public abstract SpannableString e();
}
