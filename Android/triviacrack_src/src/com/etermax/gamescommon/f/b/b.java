// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.f.b;

import android.text.Html;
import android.text.SpannableString;

public class b
{

    private Long a;
    private Integer b;
    private Long c;
    private Long d;
    private String e;
    private String f;
    private Integer g;
    private String h;
    private String i;
    private Long j;

    public b()
    {
    }

    public b a(SpannableString spannablestring)
    {
        if (spannablestring != null)
        {
            h = Html.toHtml(spannablestring);
            return this;
        } else
        {
            h = null;
            return this;
        }
    }

    public b a(Integer integer)
    {
        b = integer;
        return this;
    }

    public b a(Long long1)
    {
        c = long1;
        return this;
    }

    public b a(String s)
    {
        e = s;
        return this;
    }

    public Integer a()
    {
        return b;
    }

    public void a(b b1)
    {
        b = b1.b;
        c = b1.c;
        d = b1.d;
        e = b1.e;
        f = b1.f;
        g = b1.g;
        h = b1.h;
        i = b1.i;
        j = b1.j;
    }

    public b b(SpannableString spannablestring)
    {
        if (spannablestring != null)
        {
            i = Html.toHtml(spannablestring);
            return this;
        } else
        {
            i = null;
            return this;
        }
    }

    public b b(Long long1)
    {
        d = long1;
        return this;
    }

    public b b(String s)
    {
        f = s;
        return this;
    }

    public Long b()
    {
        return c;
    }

    public void b(Integer integer)
    {
        g = integer;
    }

    public b c(Long long1)
    {
        j = long1;
        return this;
    }

    public Long c()
    {
        return d;
    }

    public String d()
    {
        return e;
    }

    public String e()
    {
        return f;
    }

    public Integer f()
    {
        return g;
    }

    public SpannableString g()
    {
        if (h != null)
        {
            return SpannableString.valueOf(Html.fromHtml(h));
        } else
        {
            return null;
        }
    }

    public SpannableString h()
    {
        if (i != null)
        {
            return SpannableString.valueOf(Html.fromHtml(i));
        } else
        {
            return null;
        }
    }

    public Long i()
    {
        return j;
    }

    public String toString()
    {
        return (new StringBuilder()).append("NotificationsCache [id=").append(a).append(", notificationId=").append(b).append(", gameId=").append(c).append(", userId=").append(d).append(", username=").append(e).append(", bigPictureUrl=").append(f).append(", messageId=").append(g).append(", message=").append(h).append(", stackedMessage=").append(i).append(", time=").append(j).append("]").toString();
    }
}
