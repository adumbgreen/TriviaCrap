// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelVideoActivity, ad

class a
    implements Runnable
{

    final AdMarvelVideoActivity a;

    public void run()
    {
        if (AdMarvelVideoActivity.f(a) == null) goto _L2; else goto _L1
_L1:
        ad ad1 = (ad)AdMarvelVideoActivity.f(a).get();
        if (ad1 == null) goto _L2; else goto _L3
_L3:
        if (!(ad1 instanceof LinearLayout)) goto _L2; else goto _L4
_L4:
        if (ad1 == null) goto _L6; else goto _L5
_L5:
        if (!AdMarvelVideoActivity.g(a)) goto _L6; else goto _L7
_L7:
        int i = 0;
_L12:
        if (i >= ad1.getChildCount()) goto _L6; else goto _L8
_L8:
        if (!(ad1.getChildAt(i) instanceof a)) goto _L10; else goto _L9
_L9:
        a a1 = (a)ad1.getChildAt(i);
        if (a1 != null)
        {
            try
            {
                if (a1.a.equalsIgnoreCase("done"))
                {
                    a1.a(true);
                    a1.a(true);
                    if (a1.a(0) instanceof ImageView)
                    {
                        if (AdMarvelVideoActivity.e(a) != null && AdMarvelVideoActivity.e(a).c())
                        {
                            AdMarvelVideoActivity.e(a).b();
                        }
                        ImageView imageview = (ImageView)a1.b(0);
                        if (imageview.getDrawable() != null)
                        {
                            imageview.getDrawable().setAlpha(255);
                            imageview.invalidate();
                        }
                    }
                }
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
                return;
            }
        }
          goto _L10
_L6:
        AdMarvelVideoActivity.b(a, false);
        if (AdMarvelVideoActivity.h(a) != null)
        {
            AdMarvelVideoActivity.h(a).b();
            AdMarvelVideoActivity.c(a, false);
            AdMarvelVideoActivity.i(a).setVisibility(8);
            AdMarvelVideoActivity.j(a);
        }
_L2:
        return;
_L10:
        i++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    (AdMarvelVideoActivity admarvelvideoactivity)
    {
        a = admarvelvideoactivity;
        super();
    }
}
