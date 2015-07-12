// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

// Referenced classes of package com.google.android.gms.internal:
//            l, bf, ap, am, 
//            fw, r, fx, j, 
//            i, n, dy, ed, 
//            ab

public final class ad
{

    private final bf a;
    private final l b;
    private AdListener c;
    private r d;
    private AdSize e[];
    private String f;
    private String g;
    private ViewGroup h;
    private AppEventListener i;
    private InAppPurchaseListener j;
    private PlayStorePurchaseListener k;

    public ad(ViewGroup viewgroup)
    {
        this(viewgroup, null, false, l.a());
    }

    public ad(ViewGroup viewgroup, AttributeSet attributeset, boolean flag)
    {
        this(viewgroup, attributeset, flag, l.a());
    }

    ad(ViewGroup viewgroup, AttributeSet attributeset, boolean flag, l l1)
    {
        a = new bf();
        h = viewgroup;
        b = l1;
        if (attributeset != null)
        {
            android.content.Context context = viewgroup.getContext();
            try
            {
                ap ap1 = new ap(context, attributeset);
                e = ap1.a(flag);
                f = ap1.a();
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                fw.a(viewgroup, new am(context, AdSize.BANNER), illegalargumentexception.getMessage(), illegalargumentexception.getMessage());
                return;
            }
            if (viewgroup.isInEditMode())
            {
                fw.a(viewgroup, new am(context, e[0]), "Ads by Google");
            }
        }
    }

    private void h()
    {
        com.google.android.gms.a.a a1 = d.a();
        if (a1 == null)
        {
            return;
        }
        try
        {
            h.addView((View)com.google.android.gms.a.d.a(a1));
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to get an ad frame.", remoteexception);
        }
        return;
    }

    private void i()
    {
        if ((e == null || f == null) && d == null)
        {
            throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
        }
        android.content.Context context = h.getContext();
        d = com.google.android.gms.internal.j.a(context, new am(context, e), f, a);
        if (c != null)
        {
            d.a(new i(c));
        }
        if (i != null)
        {
            d.a(new n(i));
        }
        if (j != null)
        {
            d.a(new dy(j));
        }
        if (k != null)
        {
            d.a(new ed(k), g);
        }
        h();
    }

    public void a()
    {
        try
        {
            if (d != null)
            {
                d.b();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to destroy AdView.", remoteexception);
        }
    }

    public void a(AdListener adlistener)
    {
        c = adlistener;
        if (d == null) goto _L2; else goto _L1
_L1:
        r r1 = d;
        if (adlistener == null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        i i1 = new i(adlistener);
_L3:
        r1.a(i1);
_L2:
        return;
        i1 = null;
          goto _L3
        RemoteException remoteexception;
        remoteexception;
        fx.c("Failed to set the AdListener.", remoteexception);
        return;
    }

    public void a(InAppPurchaseListener inapppurchaselistener)
    {
        if (k != null)
        {
            throw new IllegalStateException("Play store purchase parameter has already been set.");
        }
        j = inapppurchaselistener;
        if (d == null) goto _L2; else goto _L1
_L1:
        r r1 = d;
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
        if (j != null)
        {
            throw new IllegalStateException("InAppPurchaseListener has already been set.");
        }
        k = playstorepurchaselistener;
        g = s;
        if (d == null) goto _L2; else goto _L1
_L1:
        r r1 = d;
        if (playstorepurchaselistener == null)
        {
            break MISSING_BLOCK_LABEL_65;
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
            if (d == null)
            {
                i();
            }
            if (d.a(b.a(h.getContext(), ab1)))
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
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        } else
        {
            f = s;
            return;
        }
    }

    public transient void a(AdSize aadsize[])
    {
        if (e != null)
        {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        } else
        {
            b(aadsize);
            return;
        }
    }

    public AdListener b()
    {
        return c;
    }

    public transient void b(AdSize aadsize[])
    {
        e = aadsize;
        try
        {
            if (d != null)
            {
                d.a(new am(h.getContext(), e));
            }
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to set the ad size.", remoteexception);
        }
        h.requestLayout();
    }

    public AdSize c()
    {
        AdSize adsize;
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        adsize = d.i().a();
        return adsize;
        RemoteException remoteexception;
        remoteexception;
        fx.c("Failed to get the current AdSize.", remoteexception);
        if (e != null)
        {
            return e[0];
        } else
        {
            return null;
        }
    }

    public String d()
    {
        return f;
    }

    public InAppPurchaseListener e()
    {
        return j;
    }

    public void f()
    {
        try
        {
            if (d != null)
            {
                d.d();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to call pause.", remoteexception);
        }
    }

    public void g()
    {
        try
        {
            if (d != null)
            {
                d.e();
            }
            return;
        }
        catch (RemoteException remoteexception)
        {
            fx.c("Failed to call resume.", remoteexception);
        }
    }
}
