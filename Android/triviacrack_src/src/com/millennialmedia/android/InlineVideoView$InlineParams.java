// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.millennialmedia.a.a.e;
import java.util.Map;

// Referenced classes of package com.millennialmedia.android:
//            MMLog

class p
{

    int a;
    boolean b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    String i;
    String j;
    String k;
    String l;
    boolean m;
    boolean n;
    boolean o;
    float p;
    int q;
    boolean r;
    boolean s;
    boolean t;

    static p a(String s1)
    {
        return (p)(new e()).a(s1, com/millennialmedia/android/InlineVideoView$InlineParams);
    }

    void b(String s1)
    {
        p p1 = (p)(new e()).a(s1, com/millennialmedia/android/InlineVideoView$InlineParams);
        a = p1.a;
        c = p1.c;
        d = p1.d;
        e = p1.e;
        f = p1.f;
        g = p1.g;
        h = p1.h;
        i = p1.i;
        j = p1.j;
        k = p1.k;
        l = p1.l;
        m = p1.m;
        n = p1.n;
        o = p1.o;
        p = p1.p;
        b = p1.b;
        q = p1.q;
        r = p1.r;
        MMLog.b("InlineVideoView", (new StringBuilder()).append("gson*****").append(s1).toString());
        MMLog.b("InlineVideoView", (new StringBuilder()).append("PARAMS*****").append(p1).toString());
    }

    public String toString()
    {
        Object aobj[] = new Object[7];
        aobj[0] = k;
        aobj[1] = Integer.valueOf(a);
        aobj[2] = Integer.valueOf(c);
        aobj[3] = Integer.valueOf(d);
        aobj[4] = Integer.valueOf(e);
        aobj[5] = Integer.valueOf(h);
        aobj[6] = Boolean.valueOf(m);
        return String.format("%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay", aobj);
    }

    (Map map, Context context)
    {
        o = true;
        if (map.get("x") != null)
        {
            a = (int)Float.parseFloat((String)map.get("x"));
        }
        if (map.get("y") != null)
        {
            c = (int)Float.parseFloat((String)map.get("y"));
        }
        if (map.get("width") != null)
        {
            f = (int)Float.parseFloat((String)map.get("width"));
        }
        if (map.get("height") != null)
        {
            g = (int)Float.parseFloat((String)map.get("height"));
        }
        i = (String)map.get("streamVideoURI");
        j = (String)map.get("cachedVideoURI");
        k = (String)map.get("cachedVideoID");
        if (map.get("autoPlay") != null)
        {
            m = Boolean.parseBoolean((String)map.get("autoPlay"));
        }
        if (map.get("showControls") != null)
        {
            n = Boolean.parseBoolean((String)map.get("showControls"));
        }
        if (map.get("bodyWidth") != null)
        {
            d = (int)Float.parseFloat((String)map.get("bodyWidth"));
        }
        if (map.get("bodyHeight") != null)
        {
            e = (int)Float.parseFloat((String)map.get("bodyHeight"));
        }
        l = (String)map.get("touchCallback");
        p = context.getResources().getDisplayMetrics().density;
    }
}
