// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.s;
import java.util.Locale;
import java.util.StringTokenizer;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public Locale a(a a1)
    {
        if (a1.f() == b.i)
        {
            a1.j();
            return null;
        }
        StringTokenizer stringtokenizer = new StringTokenizer(a1.h(), "_");
        String s1;
        String s2;
        String s3;
        if (stringtokenizer.hasMoreElements())
        {
            s1 = stringtokenizer.nextToken();
        } else
        {
            s1 = null;
        }
        if (stringtokenizer.hasMoreElements())
        {
            s2 = stringtokenizer.nextToken();
        } else
        {
            s2 = null;
        }
        if (stringtokenizer.hasMoreElements())
        {
            s3 = stringtokenizer.nextToken();
        } else
        {
            s3 = null;
        }
        if (s2 == null && s3 == null)
        {
            return new Locale(s1);
        }
        if (s3 == null)
        {
            return new Locale(s1, s2);
        } else
        {
            return new Locale(s1, s2, s3);
        }
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (Locale)obj);
    }

    public void a(c c1, Locale locale)
    {
        String s1;
        if (locale == null)
        {
            s1 = null;
        } else
        {
            s1 = locale.toString();
        }
        c1.b(s1);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
