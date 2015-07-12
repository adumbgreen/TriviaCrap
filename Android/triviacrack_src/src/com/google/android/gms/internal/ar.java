// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            al, fq, fx, fz, 
//            gb, an, cf

public final class ar
    implements al
{

    private final an a;

    public ar(an an1)
    {
        a = an1;
    }

    private static boolean a(Map map)
    {
        return "1".equals(map.get("custom_close"));
    }

    private static int b(Map map)
    {
        String s = (String)map.get("o");
        if (s != null)
        {
            if ("p".equalsIgnoreCase(s))
            {
                return fq.c();
            }
            if ("l".equalsIgnoreCase(s))
            {
                return fq.b();
            }
        }
        return -1;
    }

    public void a(fz fz1, Map map)
    {
        String s = (String)map.get("a");
        if (s == null)
        {
            fx.e("Action missing from an open GMSG.");
        } else
        {
            gb gb1 = fz1.f();
            if ("expand".equalsIgnoreCase(s))
            {
                if (fz1.i())
                {
                    fx.e("Cannot expand WebView that is already expanded.");
                    return;
                } else
                {
                    gb1.a(a(map), b(map));
                    return;
                }
            }
            if ("webapp".equalsIgnoreCase(s))
            {
                String s3 = (String)map.get("u");
                if (s3 != null)
                {
                    gb1.a(a(map), b(map), s3);
                    return;
                } else
                {
                    gb1.a(a(map), b(map), (String)map.get("html"), (String)map.get("baseurl"));
                    return;
                }
            }
            if ("in_app_purchase".equalsIgnoreCase(s))
            {
                String s1 = (String)map.get("product_id");
                String s2 = (String)map.get("report_urls");
                if (a != null)
                {
                    if (s2 != null && !s2.isEmpty())
                    {
                        String as[] = s2.split(" ");
                        a.a(s1, new ArrayList(Arrays.asList(as)));
                        return;
                    } else
                    {
                        a.a(s1, new ArrayList());
                        return;
                    }
                }
            } else
            {
                gb1.a(new cf((String)map.get("i"), (String)map.get("u"), (String)map.get("m"), (String)map.get("p"), (String)map.get("c"), (String)map.get("f"), (String)map.get("e")));
                return;
            }
        }
    }
}
