// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.mdotm.android.c.a;
import com.mdotm.android.c.d;
import com.mdotm.android.c.e;
import com.mdotm.android.e.f;
import com.mdotm.android.vast.VastInterstitialActivity;
import com.mdotm.android.vast.c;
import java.util.ArrayList;

// Referenced classes of package com.mdotm.android.view:
//            MdotMActivity

public class b
    implements a, e
{

    public d a;
    public boolean b;
    Context c;
    private long d;
    private int e;
    private boolean f;
    private int g;
    private int h;
    private com.mdotm.android.d.b i;
    private com.mdotm.android.vast.e j;

    public b(Context context)
    {
        b = false;
        e = 0;
        f = false;
        i = null;
        j = null;
        c = context;
    }

    public void a()
    {
        if (a != null)
        {
            a.onInterstitialDismiss();
            com.mdotm.android.e.f.a().b(d);
        }
    }

    public void a(Activity activity)
    {
        if (b)
        {
            if (a != null)
            {
                a.willShowInterstitial();
            }
            int k = activity.getResources().getConfiguration().orientation;
            Intent intent;
            if (j != null)
            {
                intent = new Intent(activity, com/mdotm/android/vast/VastInterstitialActivity);
                intent.putExtra("response", j);
            } else
            {
                intent = new Intent(activity, com/mdotm/android/view/MdotMActivity);
                intent.putExtra("response", i);
                intent.putExtra("style", e);
                intent.putExtra("frame", f);
                intent.putExtra("frame_id", g);
                intent.putExtra("close_btn_id", h);
            }
            intent.putExtra("InterstitialActionListenerId", d);
            intent.putExtra("ScreenOrientation", k);
            activity.startActivity(intent);
            if (a != null)
            {
                a.didShowInterstitial();
            }
            b = false;
            return;
        } else
        {
            com.mdotm.android.e.d.b(this, "Interstitial is not ready");
            return;
        }
    }

    public void a(d d1, com.mdotm.android.d.a a1)
    {
        d = System.currentTimeMillis();
        com.mdotm.android.e.d.b(this, (new StringBuilder("listener id ")).append(d).toString());
        a = d1;
        com.mdotm.android.e.f.a().a(d, this);
        b = false;
        a1.b(true);
        a1.c(com.mdotm.android.e.f.a().b(c));
        i = null;
        com.mdotm.android.b.e.a(c).a(a1, this);
    }

    public void a(com.mdotm.android.d.b b1)
    {
        j = null;
        if (b1 != null && b1.l() != 0 && b1.d() != null)
        {
            i = b1;
            b = true;
            if (a != null)
            {
                a.onReceiveInterstitialAd();
            }
        } else
        if (a != null)
        {
            a.onFailedToReceiveInterstitialAd();
            return;
        }
    }

    public void a(com.mdotm.android.vast.e e1)
    {
        com.mdotm.android.e.d.b(this, "finishedAdParsing");
        i = null;
        if (e1 == null || e1.d() == 0) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        com.mdotm.android.e.d.b(this, (new StringBuilder("finishedAdParsing ")).append(e1.a()).toString());
        arraylist = e1.c();
        if (arraylist == null || arraylist.size() <= 0) goto _L4; else goto _L3
_L3:
        int l;
        int i1;
        l = 0;
        i1 = 0;
_L15:
        if (l < arraylist.size()) goto _L6; else goto _L5
_L5:
        if (i1 == arraylist.size()) goto _L8; else goto _L7
_L7:
        j = e1;
        b = true;
        if (a != null)
        {
            a.onReceiveInterstitialAd();
        }
_L10:
        return;
_L6:
        if (((c)arraylist.get(l)).d().b() == null)
        {
            i1++;
        }
        l++;
        continue; /* Loop/switch isn't completed */
_L8:
        if (a == null) goto _L10; else goto _L9
_L9:
        a.onFailedToReceiveInterstitialAd();
        return;
_L4:
        ArrayList arraylist1;
        int k;
        arraylist1 = e1.b();
        if (arraylist1.size() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        k = 0;
_L12:
        if (k < arraylist1.size())
        {
            break MISSING_BLOCK_LABEL_197;
        }
        if (a == null) goto _L10; else goto _L11
_L11:
        a.onFailedToReceiveInterstitialAd();
        return;
        com.mdotm.android.e.f.a().a((String)arraylist1.get(k), c);
        k++;
          goto _L12
_L2:
        if (a == null) goto _L10; else goto _L13
_L13:
        a.onFailedToReceiveInterstitialAd();
        return;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public void b()
    {
        if (a != null)
        {
            a.onLeaveApplicationFromInterstitial();
        }
    }

    public void c()
    {
        if (a != null)
        {
            a.onFailedToReceiveInterstitialAd();
        }
    }

    public void d()
    {
        com.mdotm.android.e.d.b(this, "Adclicked");
        if (a != null)
        {
            a.onInterstitialAdClick();
        }
    }
}
