// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            DTOResizeParameters, MMAdView

class b
{

    int a;
    int b;
    DTOResizeParameters c;
    final MMAdView d;

    private BoundsResult a(int i, int j, int k, int l)
    {
        if (j + (i + k) <= l) goto _L2; else goto _L1
_L1:
        j += l - k;
        if (j >= 0) goto _L4; else goto _L3
_L3:
        j = 0;
        k = l;
_L6:
        class BoundsResult
        {

            int a;
            int b;
            final MMAdView.BannerBounds c;

            private BoundsResult()
            {
                c = MMAdView.BannerBounds.this;
                super();
            }

            BoundsResult(MMAdView._cls1 _pcls1)
            {
                this();
            }
        }

        BoundsResult boundsresult = new BoundsResult(null);
        boundsresult.a = j - i;
        boundsresult.b = k;
        return boundsresult;
_L4:
        if (j + k > l)
        {
            j = l - k;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (j <= 0)
        {
            j = i;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private void b()
    {
        int ai[] = new int[2];
        d.getLocationInWindow(ai);
        BoundsResult boundsresult = a(ai[0], c.d, c.a, c.g);
        c.a = boundsresult.b;
        a = boundsresult.a;
    }

    private void c()
    {
        int ai[] = new int[2];
        d.getLocationInWindow(ai);
        BoundsResult boundsresult = a(ai[1], c.e, c.b, c.h);
        c.b = boundsresult.b;
        b = boundsresult.a;
    }

    android.view. a(android.view. )
    {
        .width = c.a;
        .height = c.b;
        return ;
    }

    void a()
    {
        b();
        c();
    }

    BoundsResult(MMAdView mmadview, DTOResizeParameters dtoresizeparameters)
    {
        d = mmadview;
        super();
        c = dtoresizeparameters;
        a = dtoresizeparameters.d;
        b = dtoresizeparameters.e;
    }
}
