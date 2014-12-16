// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.e.b;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.b.d.a;
import org.b.d.g;
import org.b.d.i;
import org.b.d.j;

// Referenced classes of package org.b.e.b:
//            a, j, i, d

public class h
{

    private static final Pattern a = Pattern.compile("([^&=]+)=?([^&=]+)?");
    private static final Pattern b = Pattern.compile("^(([^:/?#]+):)?(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?([^#]*))?(#(.*))?");
    private static final Pattern c = Pattern.compile("^(http|https):(//(([^@/]*)@)?([^/?#:]*)(:(\\d*))?)?([^?#]*)(\\?(.*))?");
    private static org.b.e.b.j k = new org.b.e.b.j() {

        public d a()
        {
            return org.b.e.b.a.a;
        }

        public org.b.e.b.j a(String s)
        {
            return new org.b.e.b.i(s);
        }

    };
    private String d;
    private String e;
    private String f;
    private int g;
    private org.b.e.b.j h;
    private final org.b.d.h i = new g();
    private String j;

    protected h()
    {
        g = -1;
        h = k;
    }

    public static h a(String s)
    {
        org.b.d.a.a(s, "'uri' must not be empty");
        Matcher matcher = b.matcher(s);
        if (matcher.matches())
        {
            h h1 = new h();
            h1.b(matcher.group(2));
            h1.c(matcher.group(5));
            h1.d(matcher.group(6));
            String s1 = matcher.group(8);
            if (org.b.d.j.a(s1))
            {
                h1.a(Integer.parseInt(s1));
            }
            h1.e(matcher.group(9));
            h1.f(matcher.group(11));
            h1.g(matcher.group(13));
            return h1;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("[").append(s).append("] is not a valid URI").toString());
        }
    }

    public org.b.e.b.a a()
    {
        return a(false);
    }

    public org.b.e.b.a a(boolean flag)
    {
        return new org.b.e.b.a(d, e, f, g, h.a(), i, j, flag, true);
    }

    public h a(int l)
    {
        boolean flag;
        if (l >= -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        org.b.d.a.a(flag, "'port' must not be < -1");
        g = l;
        return this;
    }

    public transient h a(String s, Object aobj[])
    {
        org.b.d.a.a(s, "'name' must not be null");
        if (!org.b.d.i.a(aobj))
        {
            int l = aobj.length;
            int i1 = 0;
            while (i1 < l) 
            {
                Object obj = aobj[i1];
                String s1;
                if (obj != null)
                {
                    s1 = obj.toString();
                } else
                {
                    s1 = null;
                }
                i.a(s, s1);
                i1++;
            }
        } else
        {
            i.a(s, null);
        }
        return this;
    }

    public h b(String s)
    {
        d = s;
        return this;
    }

    public h c(String s)
    {
        e = s;
        return this;
    }

    public h d(String s)
    {
        f = s;
        return this;
    }

    public h e(String s)
    {
        if (s != null)
        {
            h = h.a(s);
            return this;
        } else
        {
            h = k;
            return this;
        }
    }

    public h f(String s)
    {
        if (s != null)
        {
            for (Matcher matcher = a.matcher(s); matcher.find(); a(matcher.group(1), new Object[] {
    matcher.group(2)
})) { }
        } else
        {
            i.clear();
        }
        return this;
    }

    public h g(String s)
    {
        if (s != null)
        {
            org.b.d.a.a(s, "'fragment' must not be empty");
            j = s;
            return this;
        } else
        {
            j = null;
            return this;
        }
    }

}
