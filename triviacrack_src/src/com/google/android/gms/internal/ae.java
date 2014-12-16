// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

// Referenced classes of package com.google.android.gms.internal:
//            l, bf, am, j, 
//            i, r, n, dy, 
//            ed, fx, ab

public final class ae
{

    private final bf a;
    private final Context b;
    private final l c;
    private AdListener d;
    private r e;
    private String f;
    private String g;
    private AppEventListener h;
    private PlayStorePurchaseListener i;
    private InAppPurchaseListener j;

    public ae(Context context)
    {
        this(context, l.a());
    }

    public ae(Context context, l l1)
    {
        a = new bf();
        b = context;
        c = l1;
    }

    private void b(String s)
    {
        if (f == null)
        {
            c(s);
        }
        e = com.google.android.gms.internal.j.a(b, new am(), f, a);
        if (d != null)
        {
            e.a(new i(d));
        }
        if (h != null)
        {
            e.a(new n(h));
        }
        if (j != null)
        {
            e.a(new dy(j));
        }
        if (i != null)
        {
            e.a(new ed(i), g);
        }
    }

    private void c(String s)
    {
        if (e == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("The ad unit ID must be set on InterstitialAd before ").append(s).append(" is called.").toString());
        } else
        {
            return;
        }
    }

    public AdListener a()
    {
        return d;
    }

    public void a(AdListener adlistener)
    {
        d = adlistener;
        if (e == null) goto _L2; else goto _L1
_L1:
        r r1 = e;
        if (adlistener == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        i k = new i(adlistener);
_L3:
        r1.a(k);
_L2:
        return;
        k = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        fx.c("Failed to set the AdListener.", remoteexception);
        return;
    }

    public void a(InAppPurchaseListener inapppurchaselistener)
    {
        if (i != null)
        {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        j = inapppurchaselistener;
        if (e == null) goto _L2; else goto _L1
_L1:
        r r1 = e;
        if (inapppurchaselistener == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        dy dy1 = new dy(inapppurchaselistener);
_L3:
        r1.a(dy1);
_L2:
        return;
        dy1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        fx.c("Failed to set the InAppPurchaseListener.", remoteexception);
        return;
    }

    public void a(PlayStorePurchaseListener playstorepurchaselistener, String s)
    {
        i = playstorepurchaselistener;
        if (e == null) goto _L2; else goto _L1
_L1:
        r r1 = e;
        if (playstorepurchaselistener == null)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        ed ed1 = new ed(playstorepurchaselistener);
_L3:
        r1.a(ed1, s);
_L2:
        return;
        ed1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        fx.c("Failed to set the play store purchase parameter.", remoteexception);
        return;
    }

    public void a(ab ab1)
    {
        try
        {
            if (e == null)
            {
                b("loadAd");
            }
            if (e.a(c.a(b, ab1)))
            {
                a.a(ab1.i());
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to load ad.", remoteexception);
        }
    }

    public void a(String s)
    {
        if (f != null)
        {
            throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
        } else
        {
            f = s;
            return;
        }
    }

    public String b()
    {
        return f;
    }

    public InAppPurchaseListener c()
    {
        return j;
    }

    public boolean d()
    {
        if (e == null)
        {
            return false;
        }
        boolean flag;
        try
        {
            flag = e.c();
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to check if ad is ready.", remoteexception);
            return false;
        }
        return flag;
    }

    public void e()
    {
        try
        {
            c("show");
            e.f();
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to show interstitial.", remoteexception);
        }
    }
}
