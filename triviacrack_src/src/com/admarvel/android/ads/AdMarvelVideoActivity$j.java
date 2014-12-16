// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity

class a
{

    final AdMarvelVideoActivity a;
    private final ArrayList b = new ArrayList();

    public List a()
    {
        return b;
    }

    public void a(String s)
    {
        int i = s.indexOf('?');
        String s1;
        if (i >= 0)
        {
            s1 = s.substring(i + 1);
        } else
        {
            s1 = "";
        }
        b(s1);
    }

    protected void a(String s, String s1)
    {
        class a
        {

            public String a;
            public List b;
            final AdMarvelVideoActivity.j c;

            public String a()
            {
                return a;
            }

            public void a(String s2)
            {
                b.add(URLDecoder.decode(s2));
            }

            public a(String s, String s1)
            {
                c = AdMarvelVideoActivity.j.this;
                super();
                a = s;
                b = new ArrayList();
                b.add(URLDecoder.decode(s1));
            }
        }

        for (int i = 0; i < b.size(); i++)
        {
            if (((a)b.get(i)).a().equalsIgnoreCase(s))
            {
                ((a)b.get(i)).a(s1);
                return;
            }
        }

        b.add(new a(s, s1));
    }

    public void b(String s)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, "&");
        do
        {
            if (!stringtokenizer.hasMoreElements())
            {
                break;
            }
            String s1 = stringtokenizer.nextToken();
            if (s1.length() > 0)
            {
                int i = s1.indexOf('=');
                if (i < 0)
                {
                    a(s1, "");
                } else
                {
                    a(s1.substring(0, i), s1.substring(i + 1));
                }
            }
        } while (true);
    }

    public a(AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
