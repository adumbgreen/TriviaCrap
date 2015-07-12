// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            al, fq, fx, fz, 
//            am, ci, bx, ah, 
//            ak, ar, ao, fw, 
//            gc, im, ik, cf, 
//            iz, cc, ai, an, 
//            aq, ch

public class gb extends WebViewClient
{

    protected final fz a;
    private final HashMap b = new HashMap();
    private final Object c = new Object();
    private iz d;
    private cc e;
    private gc f;
    private ai g;
    private boolean h;
    private an i;
    private aq j;
    private boolean k;
    private ch l;

    public gb(fz fz1, boolean flag)
    {
        h = false;
        a = fz1;
        k = flag;
    }

    private static boolean a(Uri uri)
    {
        String s = uri.getScheme();
        return "http".equalsIgnoreCase(s) || "https".equalsIgnoreCase(s);
    }

    private void b(Uri uri)
    {
        String s = uri.getPath();
        al al1 = (al)b.get(s);
        if (al1 != null)
        {
            Map map = fq.a(uri);
            if (fx.a(2))
            {
                fx.d((new StringBuilder()).append("Received GMSG: ").append(s).toString());
                String s1;
                for (Iterator iterator = map.keySet().iterator(); iterator.hasNext(); fx.d((new StringBuilder()).append("  ").append(s1).append(": ").append((String)map.get(s1)).toString()))
                {
                    s1 = (String)iterator.next();
                }

            }
            al1.a(a, map);
            return;
        } else
        {
            fx.d((new StringBuilder()).append("No GMSG handler found for GMSG: ").append(uri).toString());
            return;
        }
    }

    public final void a(cf cf1)
    {
        boolean flag = a.i();
        iz iz;
        cc cc;
        if (flag && !a.e().e)
        {
            iz = null;
        } else
        {
            iz = d;
        }
        cc = null;
        if (!flag)
        {
            cc = e;
        }
        a(new ci(cf1, iz, cc, l, a.h()));
    }

    protected void a(ci ci1)
    {
        bx.a(a.getContext(), ci1);
    }

    public final void a(gc gc1)
    {
        f = gc1;
    }

    public void a(iz iz, cc cc, ai ai, ch ch, boolean flag, an an)
    {
        a("/appEvent", ((al) (new ah(ai))));
        a("/canOpenURLs", ak.b);
        a("/click", ak.c);
        a("/close", ak.d);
        a("/customClose", ak.e);
        a("/httpTrack", ak.f);
        a("/log", ak.g);
        a("/open", ((al) (new ar(an))));
        a("/touch", ak.h);
        a("/video", ak.i);
        d = iz;
        e = cc;
        g = ai;
        i = an;
        l = ch;
        a(flag);
    }

    public void a(iz iz, cc cc, ai ai, ch ch, boolean flag, an an, aq aq)
    {
        a(iz, cc, ai, ch, flag, an);
        a("/setInterstitialProperties", ((al) (new ao(aq))));
        j = aq;
    }

    public final void a(String s, al al1)
    {
        b.put(s, al1);
    }

    public final void a(boolean flag)
    {
        h = flag;
    }

    public final void a(boolean flag, int i1)
    {
        iz iz;
        if (a.i() && !a.e().e)
        {
            iz = null;
        } else
        {
            iz = d;
        }
        a(new ci(iz, e, l, a, flag, i1, a.h()));
    }

    public final void a(boolean flag, int i1, String s)
    {
        boolean flag1 = a.i();
        iz iz;
        cc cc;
        if (flag1 && !a.e().e)
        {
            iz = null;
        } else
        {
            iz = d;
        }
        cc = null;
        if (!flag1)
        {
            cc = e;
        }
        a(new ci(iz, cc, g, l, a, flag, i1, s, a.h(), i));
    }

    public final void a(boolean flag, int i1, String s, String s1)
    {
        boolean flag1 = a.i();
        iz iz;
        cc cc;
        if (flag1 && !a.e().e)
        {
            iz = null;
        } else
        {
            iz = d;
        }
        if (flag1)
        {
            cc = null;
        } else
        {
            cc = e;
        }
        a(new ci(iz, cc, g, l, a, flag, i1, s, s1, a.h(), i));
    }

    public boolean a()
    {
        boolean flag;
        synchronized (c)
        {
            flag = k;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void b()
    {
        synchronized (c)
        {
            b.clear();
            d = null;
            e = null;
            f = null;
            g = null;
            h = false;
            k = false;
            i = null;
            l = null;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void c()
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        bx bx1;
        h = false;
        k = true;
        bx1 = a.d();
        if (bx1 == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        if (fw.b())
        {
            break MISSING_BLOCK_LABEL_54;
        }
        fw.a.post(new Runnable(bx1) {

            final bx a;
            final gb b;

            public void run()
            {
                a.k();
            }

            
            {
                b = gb.this;
                a = bx1;
                super();
            }
        });
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        bx1.k();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void onLoadResource(WebView webview, String s)
    {
        fx.d((new StringBuilder()).append("Loading resource: ").append(s).toString());
        Uri uri = Uri.parse(s);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost()))
        {
            b(uri);
        }
    }

    public final void onPageFinished(WebView webview, String s)
    {
        if (f != null)
        {
            f.a(a);
            f = null;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri;
        fx.d((new StringBuilder()).append("AdWebView shouldOverrideUrlLoading: ").append(s).toString());
        uri = Uri.parse(s);
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) goto _L2; else goto _L1
_L1:
        b(uri);
_L7:
        return true;
_L2:
        if (h && webview == a && a(uri))
        {
            return super.shouldOverrideUrlLoading(webview, s);
        }
        if (a.willNotDraw()) goto _L4; else goto _L3
_L3:
        ik ik1 = a.g();
        if (ik1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        Uri uri2;
        if (!ik1.a(uri))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        uri2 = ik1.a(uri, a.getContext());
        uri = uri2;
        Uri uri1 = uri;
_L5:
        a(new cf("android.intent.action.VIEW", uri1.toString(), null, null, null, null, null));
        continue; /* Loop/switch isn't completed */
        im im1;
        im1;
        fx.e((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
        uri1 = uri;
        if (true) goto _L5; else goto _L4
_L4:
        fx.e((new StringBuilder()).append("AdWebView unable to handle URL: ").append(s).toString());
        if (true) goto _L7; else goto _L6
_L6:
    }
}
