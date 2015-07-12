// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import com.smartadserver.android.library.a.g;
import com.smartadserver.android.library.controller.mraid.e;
import com.smartadserver.android.library.controller.mraid.f;
import com.smartadserver.android.library.f.a.b;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;
import org.json.JSONObject;

// Referenced classes of package com.smartadserver.android.library.controller:
//            b, d, c

public class a
{

    private static final String d = com/smartadserver/android/library/controller/a.getSimpleName();
    public com.smartadserver.android.library.controller.mraid.a a;
    public e b;
    public f c;
    private SASAdView e;
    private int f;

    public a(SASAdView sasadview)
    {
        e = sasadview;
        f();
    }

    static SASAdView a(a a1)
    {
        return a1.e;
    }

    static String e()
    {
        return d;
    }

    private void f()
    {
        com.smartadserver.android.library.h.c.a(d, "create MRAID controller");
        a = new com.smartadserver.android.library.controller.mraid.a(e);
        b = new e(e);
        c = new f(e);
        e.a(new Runnable() {

            final a a;

            public void run()
            {
                a.a(a).j.a(a.a, com.smartadserver.android.library.controller.mraid.a.b);
                a.a(a).j.a(a.b, e.a);
                a.a(a).j.a(a.c, f.a);
                a.a(a).k.a(a.a, com.smartadserver.android.library.controller.mraid.a.b);
                a.a(a).k.a(a.b, e.a);
                a.a(a).k.a(a.c, f.a);
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void a()
    {
        com.smartadserver.android.library.h.c.a(d, "enableListeners");
        if (b != null)
        {
            b.e();
        }
    }

    public void a(int i)
    {
        f = i;
    }

    public void a(int i, String s, int j, String s1, boolean flag, com.smartadserver.android.library.ui.a a1, int k, 
            JSONObject jsonobject, boolean flag1)
    {
        com.smartadserver.android.library.controller.b b1;
        a.setState("loading");
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_203;
        }
        Context context = e.getContext().getApplicationContext();
        b1 = new com.smartadserver.android.library.controller.b(this, a1, flag1);
        com.smartadserver.android.library.e.a a3;
        com.smartadserver.android.library.d.a a4;
        Runnable runnable;
        com.smartadserver.android.library.ui.a a5;
        try
        {
            a3 = com.smartadserver.android.library.e.a.a(context);
            a4 = a3.b(i, s, j, s1);
        }
        catch (com.smartadserver.android.library.a.a a2)
        {
            b1.adLoadingFailed(a2);
            com.smartadserver.android.library.h.c.a(a2.getMessage());
            return;
        }
        if (a4 == null)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        if (!com.smartadserver.android.library.h.c.d(e.getContext()) && a4.l())
        {
            break MISSING_BLOCK_LABEL_186;
        }
        runnable = new Runnable(b1, a4) {

            final com.smartadserver.android.library.controller.b a;
            final com.smartadserver.android.library.d.a b;
            final a c;

            public void run()
            {
                a.adLoadingCompleted(b);
            }

            
            {
                c = a.this;
                a = b1;
                b = a2;
                super();
            }
        };
        if (!com.smartadserver.android.library.h.c.a()) goto _L2; else goto _L1
_L1:
        (new Thread(runnable)).start();
_L3:
        a5 = new com.smartadserver.android.library.ui.a(a3, i, s, j, s1) {

            final com.smartadserver.android.library.e.a a;
            final int b;
            final String c;
            final int d;
            final String e;
            final a f;

            public void adLoadingCompleted(com.smartadserver.android.library.d.a a6)
            {
                if (!a6.k() || a6.i() == 0)
                {
                    break MISSING_BLOCK_LABEL_106;
                }
                a.a(b, c, d, e, a6);
                com.smartadserver.android.library.h.c.a("adLoadingCompleted for prefetch ad, load Ad can be processed on this AdView");
                f.d();
                com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Successfully cached ad for url:").append(a6.d()).toString());
                if (c.a)
                {
                    f.a(a.a(f).getContext());
                }
_L1:
                return;
                com.smartadserver.android.library.a.a a7;
                a7;
                adLoadingFailed(a7);
                return;
                if (!a6.k())
                {
                    adLoadingFailed(new com.smartadserver.android.library.a.a("Ad does not support prefetching"));
                    return;
                }
                if (a6.i() == 0)
                {
                    adLoadingFailed(new com.smartadserver.android.library.a.a("Prefechable Ad does not have a valid insertionID"));
                    return;
                }
                  goto _L1
            }

            public void adLoadingFailed(Exception exception)
            {
                if (exception instanceof com.smartadserver.android.library.a.f)
                {
                    try
                    {
                        a.a(b, c, d, e);
                    }
                    catch (com.smartadserver.android.library.a.a a6)
                    {
                        com.smartadserver.android.library.h.c.a(a6.getMessage());
                    }
                }
                com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Prefetch failed: ").append(exception.getMessage()).toString());
                com.smartadserver.android.library.h.c.a("adLoadingFailed for prefetch ad, load Ad can be processed on this AdView");
                f.d();
            }

            
            {
                f = a.this;
                a = a2;
                b = i;
                c = s;
                d = j;
                e = s1;
                super();
            }
        };
        e.f.a(i, s, j, s1, flag, a5, k, jsonobject);
        return;
_L2:
        runnable.run();
          goto _L3
        b1.adLoadingFailed(new g("No ad to deliver from cache with requested parameters"));
          goto _L3
        e.f.a(i, s, j, s1, flag, new com.smartadserver.android.library.controller.b(this, a1, false), k, jsonobject);
        return;
    }

    public void a(Context context)
    {
        try
        {
            android.net.Uri uri = RingtoneManager.getDefaultUri(2);
            MediaPlayer mediaplayer = new MediaPlayer();
            mediaplayer.setDataSource(context, uri);
            if (((AudioManager)context.getSystemService("audio")).getStreamVolume(2) != 0)
            {
                mediaplayer.setAudioStreamType(2);
                mediaplayer.prepare();
                mediaplayer.start();
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public boolean a(com.smartadserver.android.library.d.a a1)
    {
        String s;
        com.smartadserver.android.library.h.c.a(d, (new StringBuilder()).append("displayAd: ").append(a1.b()).toString());
        if (!a1.b().contains("<html"))
        {
            String s3 = "<!DOCTYPE html><html><head><meta name=\"viewport\" content=\"initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\"/></head><body style=\"text-align:center;margin:0\">";
            if (!a1.b().contains("mraid.js"))
            {
                s3 = (new StringBuilder()).append(s3).append("<script src=\"mraid.js\"></script>").toString();
            }
            a1.a((new StringBuilder()).append(s3).append(a1.b()).append("</body></html>").toString());
        }
        s = a1.b();
        if (!a1.b().contains("\"mraid.js\"")) goto _L2; else goto _L1
_L1:
        String s2 = com.smartadserver.android.library.controller.mraid.a.a;
        if (!a1.k()) goto _L4; else goto _L3
_L3:
        s2 = s2.substring(1 + s2.lastIndexOf("/"));
_L8:
        String s1;
        s1 = s.replace("\"mraid.js\"", (new StringBuilder()).append("\"").append(s2).append("\"").toString());
        com.smartadserver.android.library.h.c.a(d, (new StringBuilder()).append("displayAd: MRAID script, set mraid bridge inside script ").append(s1).toString());
_L5:
        d d1;
        a.a();
        com.smartadserver.android.library.controller.mraid.a a2 = a;
        boolean flag;
        com.smartadserver.android.library.controller.c c1;
        com.smartadserver.android.library.ui.g g1;
        boolean flag1;
        if (a1.g() == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a2.setExpandUseCustomCloseProperty(flag);
        b.a();
        c.b(a1.g());
        d1 = e.h;
        c1 = e.i;
        g1 = e.j;
        d1;
        JVM INSTR monitorenter ;
        d1.a();
        c1.a();
        e.a(new Runnable(a1, g1, s1) {

            final com.smartadserver.android.library.d.a a;
            final com.smartadserver.android.library.ui.g b;
            final String c;
            final a d;

            public void run()
            {
                String s4 = a.c();
                if (s4 == null)
                {
                    s4 = SASAdView.getBaseUrl();
                }
                b.a(s4, c, "text/html", "UTF-8", null);
                int i = a.g();
                b.setCloseButtonPosition(i);
                a.a(d).k.setCloseButtonPosition(i);
            }

            
            {
                d = a.this;
                a = a2;
                b = g1;
                c = s;
                super();
            }
        });
        d1.wait(0L);
        com.smartadserver.android.library.h.c.a(d, "Wait finished");
        if (d1.b())
        {
            break MISSING_BLOCK_LABEL_355;
        }
        flag1 = c1.b();
        if (!flag1);
_L6:
        d1;
        JVM INSTR monitorexit ;
        return true;
_L4:
        if (c.a)
        {
            s2 = (new StringBuilder()).append(s2).append("?").append(com.smartadserver.android.library.h.c.b()).toString();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        com.smartadserver.android.library.h.c.a(d, (new StringBuilder()).append("displayAd not mraid: ").append(a1.b()).toString());
        a.setState("default");
        s1 = s;
          goto _L5
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L6
        Exception exception;
        exception;
        d1;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void b()
    {
        com.smartadserver.android.library.h.c.a(d, "disableListeners");
        if (b != null)
        {
            b.d();
        }
    }

    public boolean c()
    {
        return f > 0;
    }

    public void d()
    {
        f = -1 + f;
        if (f < 0)
        {
            f = 0;
        }
        com.smartadserver.android.library.h.c.a(d, (new StringBuilder()).append("pendingLoadAdCount:").append(f).toString());
    }

}
