// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.graphics.Bitmap;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.millennialmedia.android:
//            MMAd, MMLog, MMSDK, MMRequest, 
//            HandShake, BannerWebViewClient, MMAdImplController, RequestListener, 
//            MMWebViewClient, MMWebView

abstract class MMAdImpl
    implements MMAd
{

    private static long a = 1L;
    protected MMRequest b;
    RequestListener c;
    boolean d;
    String e;
    String f;
    long g;
    long h;
    boolean i;
    WeakReference j;
    MMAdImplController k;
    MMWebViewClient l;
    MMWebViewClient.MMWebViewClientListener m;
    long n;

    public MMAdImpl(Context context)
    {
        d = false;
        e = "28911";
        j = new WeakReference(context);
        m = new BasicWebViewClientListener();
        com/millennialmedia/android/MMAdImpl;
        JVM INSTR monitorenter ;
        h = a;
        a = 1L + a;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(h);
        MMLog.a("MMAdImpl", String.format("Assigning MMAdImpl internal id: %d", aobj));
        com/millennialmedia/android/MMAdImpl;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        com/millennialmedia/android/MMAdImpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static String[] l()
    {
        return (new String[] {
            "b", "i"
        });
    }

    void a()
    {
    }

    void a(Bitmap bitmap)
    {
    }

    void a(Map map)
    {
        Context context = j();
        map.put("apid", e);
        map.put("do", MMSDK.v(context));
        map.put("olock", MMSDK.w(context));
        if (!hasCachedVideoSupport())
        {
            map.put("cachedvideo", "false");
        }
        map.put("reqtype", o());
        if (b != null)
        {
            b.a(map);
        }
        if (HandShake.a(context).a(context, f))
        {
            map.put("video", "true");
        } else
        {
            map.put("video", "false");
        }
        if (f != null)
        {
            if (f.equals("b") || f.equals("i"))
            {
                map.put("at", f);
                return;
            } else
            {
                MMLog.e("MMAdImpl", (new StringBuilder()).append("******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS (").append(f).append(") **********").toString());
                return;
            }
        } else
        {
            MMLog.e("MMAdImpl", "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********");
            map.put("at", "b");
            return;
        }
    }

    void addView(MMWebView mmwebview, android.widget.RelativeLayout.LayoutParams layoutparams)
    {
    }

    boolean b()
    {
        return false;
    }

    MMWebViewClient c()
    {
        MMLog.b("MMAdImpl", (new StringBuilder()).append("Returning a client for user: DefaultWebViewClient, adimpl=").append(this).toString());
        return new BannerWebViewClient(m, new MMAdImplRedirectionListenerImpl());
    }

    abstract MMAd d();

    int e()
    {
        return -1;
    }

    void f()
    {
        MMAdImplController.b(this);
        if (k != null)
        {
            k.a();
        }
    }

    boolean g()
    {
        if (MMSDK.b)
        {
            MMLog.b("MMAdImpl", "Minimum adrefresh time ignored");
            return true;
        }
        long l1 = System.currentTimeMillis();
        int i1 = (int)((l1 - g) / 1000L);
        long l2 = HandShake.a(j()).h;
        if ((long)i1 >= l2)
        {
            g = l1;
            return true;
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i1);
            aobj[1] = Long.valueOf(l2 - (long)i1);
            MMLog.b("MMAdImpl", String.format("Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds.", aobj));
            return false;
        }
    }

    public String getApid()
    {
        return e;
    }

    public boolean getIgnoresDensityScaling()
    {
        return d;
    }

    public RequestListener getListener()
    {
        return c;
    }

    public MMRequest getMMRequest()
    {
        return b;
    }

    boolean h()
    {
        return false;
    }

    public boolean hasCachedVideoSupport()
    {
        return true;
    }

    void i()
    {
    }

    public boolean isBanner()
    {
        return false;
    }

    Context j()
    {
        if (j != null)
        {
            return (Context)j.get();
        } else
        {
            return null;
        }
    }

    String k()
    {
        if (f != null && e != null)
        {
            return (new StringBuilder()).append(f).append("_").append(e).toString();
        } else
        {
            return null;
        }
    }

    String m()
    {
        return "millennialmedia.action.ACTION_FETCH_FAILED";
    }

    String n()
    {
        return "millennialmedia.action.ACTION_FETCH_SUCCEEDED";
    }

    String o()
    {
        return "fetch";
    }

    void p()
    {
        if (k != null)
        {
            k.d();
        }
    }

    boolean q()
    {
        return false;
    }

    void removeView(MMWebView mmwebview)
    {
    }

    public void setApid(String s)
    {
        if (s != null && !s.isEmpty())
        {
            HandShake.a = s;
        }
        e = s;
    }

    void setClickable(boolean flag)
    {
    }

    public void setIgnoresDensityScaling(boolean flag)
    {
        d = flag;
    }

    public void setListener(RequestListener requestlistener)
    {
        c = requestlistener;
    }

    public void setMMRequest(MMRequest mmrequest)
    {
        b = mmrequest;
    }

    public String toString()
    {
        return (new StringBuilder()).append("AdType[(").append(f).append(") InternalId(").append(h).append(") LinkedId(").append(n).append(") isFinishing(").append(i).append(")]").toString();
    }


    private class BasicWebViewClientListener extends MMWebViewClient.MMWebViewClientListener
    {

        WeakReference a;

        void a(String s)
        {
            MMAdImpl mmadimpl = (MMAdImpl)a.get();
            if (mmadimpl != null)
            {
                mmadimpl.setClickable(false);
            }
        }

        public void onPageFinished(String s)
        {
            MMAdImpl mmadimpl;
            mmadimpl = (MMAdImpl)a.get();
            if (mmadimpl == null)
            {
                break MISSING_BLOCK_LABEL_93;
            }
            mmadimpl.setClickable(true);
            if (mmadimpl.k == null || mmadimpl.k.b == null)
            {
                break MISSING_BLOCK_LABEL_93;
            }
            MMWebView mmwebview = mmadimpl.k.b;
            mmwebview;
            JVM INSTR monitorenter ;
            if (!mmadimpl.k.b.hasWindowFocus())
            {
                break MISSING_BLOCK_LABEL_73;
            }
            mmadimpl.k.b.q();
_L2:
            return;
            mmadimpl.k.b.p();
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            mmwebview;
            JVM INSTR monitorexit ;
            throw exception;
        }

        BasicWebViewClientListener()
        {
            a = new WeakReference(MMAdImpl.this);
        }
    }


    private class MMAdImplRedirectionListenerImpl extends HttpRedirection.RedirectionListenerImpl
    {

        WeakReference f;

        public boolean isActivityStartable(Uri uri)
        {
            MMAdImpl mmadimpl = (MMAdImpl)f.get();
            if (mmadimpl != null)
            {
                Context context = mmadimpl.j();
                if (context != null && (context instanceof Activity) && ((Activity)context).isFinishing())
                {
                    return false;
                }
            }
            return true;
        }

        public void startingActivity(Uri uri)
        {
            super.startingActivity(uri);
            if (uri.getScheme().equalsIgnoreCase("http") || uri.getScheme().equalsIgnoreCase("https"))
            {
                MMAdImpl mmadimpl = (MMAdImpl)f.get();
                if (mmadimpl != null)
                {
                    MMSDK.Event.d(mmadimpl);
                }
            }
        }

        public void updateLastVideoViewedTime()
        {
            MMAdImpl mmadimpl = (MMAdImpl)f.get();
            if (mmadimpl != null && mmadimpl.f != null)
            {
                HandShake.a(mmadimpl.j()).b(mmadimpl.j(), mmadimpl.f);
            }
        }

        public MMAdImplRedirectionListenerImpl()
        {
            if (MMAdImpl.this != null)
            {
                f = new WeakReference(MMAdImpl.this);
                e = h;
            }
        }
    }

}
