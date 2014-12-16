// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;

// Referenced classes of package com.millennialmedia.android:
//            MMAd, MMAdImpl, MMLog, MMException, 
//            MMAdImplController, MMSDK, MMRequest, RequestListener

public final class MMInterstitial
    implements MMAd
{

    MMAdImpl a;

    public MMInterstitial(Context context)
    {
        a = new MMInterstitialAdImpl(context.getApplicationContext());
        a.f = "i";
    }

    private void b()
    {
        if (isAdAvailable())
        {
            MMLog.b("MMInterstitial", "Ad already fetched and ready for display...");
            MMSDK.Event.a(a, new MMException(17));
            return;
        } else
        {
            MMLog.b("MMInterstitial", "Fetching new ad...");
            a.f();
            return;
        }
    }

    int a()
    {
        int i;
        MMAdImplController.b(a);
        if (a.k == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        i = a.k.g(a);
        return i;
        Exception exception;
        exception;
        MMLog.a("MMInterstitial", "There was an exception displaying a cached ad. ", exception);
        exception.printStackTrace();
        return 100;
    }

    public boolean display()
    {
        return display(false);
    }

    public boolean display(boolean flag)
    {
        if (MMSDK.a()) goto _L2; else goto _L1
_L1:
        MMLog.e("MMInterstitial", MMException.a(3));
_L4:
        return false;
_L2:
        int i = a();
        if (i == 0 || !flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        throw new MMException(i);
        Exception exception;
        exception;
        if (!flag) goto _L4; else goto _L3
_L3:
        throw new MMException(exception);
        if (i != 0) goto _L4; else goto _L5
_L5:
        return true;
    }

    public void fetch()
    {
        if (a != null && a.c != null)
        {
            fetch(a.b, a.c);
            return;
        } else
        {
            b();
            return;
        }
    }

    public void fetch(MMRequest mmrequest)
    {
        if (a != null && a.c != null)
        {
            fetch(mmrequest, a.c);
            return;
        } else
        {
            b();
            return;
        }
    }

    public void fetch(MMRequest mmrequest, RequestListener requestlistener)
    {
        if (a != null)
        {
            a.b = mmrequest;
            a.c = requestlistener;
        }
        b();
    }

    public String getApid()
    {
        return a.getApid();
    }

    public boolean getIgnoresDensityScaling()
    {
        return a.getIgnoresDensityScaling();
    }

    public RequestListener getListener()
    {
        return a.getListener();
    }

    public MMRequest getMMRequest()
    {
        return a.getMMRequest();
    }

    public boolean isAdAvailable()
    {
        if (MMSDK.a()) goto _L2; else goto _L1
_L1:
        MMLog.e("MMInterstitial", MMException.a(3));
_L4:
        return false;
_L2:
        MMAdImplController.b(a);
        if (a.k == null) goto _L4; else goto _L3
_L3:
        int i = a.k.f(a);
        if (i == 0)
        {
            return true;
        }
          goto _L4
        Exception exception;
        exception;
        MMLog.a("MMInterstitial", "There was an exception checking for a cached ad. ", exception);
        exception.printStackTrace();
        return false;
    }

    public void setApid(String s)
    {
        a.setApid(s);
    }

    public void setIgnoresDensityScaling(boolean flag)
    {
        a.setIgnoresDensityScaling(flag);
    }

    public void setListener(RequestListener requestlistener)
    {
        a.setListener(requestlistener);
    }

    public void setMMRequest(MMRequest mmrequest)
    {
        a.setMMRequest(mmrequest);
    }

    private class MMInterstitialAdImpl extends MMAdImpl
    {

        final MMInterstitial a;

        MMAd d()
        {
            return r();
        }

        MMInterstitial r()
        {
            return a;
        }

        public MMInterstitialAdImpl(Context context)
        {
            a = MMInterstitial.this;
            super(context);
        }
    }

}
