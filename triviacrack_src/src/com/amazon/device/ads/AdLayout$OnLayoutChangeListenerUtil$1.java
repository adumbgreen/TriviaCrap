// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.View;

// Referenced classes of package com.amazon.device.ads:
//            AdLayout

final class val.adLayout
    implements android.view.erUtil._cls1
{

    final AdLayout val$adLayout;

    public void onLayoutChange(View view, int i, int j, int k, int l, int i1, int j1, 
            int k1, int l1)
    {
        if (val$adLayout.getAndSetNeedsToLoadAdOnLayout(false))
        {
            val$adLayout.setFloatingWindowDimensions();
            AdLayout.access$200(val$adLayout);
            AdLayout.access$300(val$adLayout).removeOnLayoutChangeListener(this);
        }
    }

    A()
    {
        val$adLayout = adlayout;
        super();
    }
}
