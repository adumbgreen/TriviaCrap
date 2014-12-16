// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.view.View;

// Referenced classes of package com.amazon.device.ads:
//            AdLayout

class _cls1.val.adLayout
{

    protected static void setOnLayoutChangeListenerForRoot(final AdLayout adLayout)
    {
        android.view.enerUtil enerutil = new android.view.View.OnLayoutChangeListener() {

            final AdLayout val$adLayout;

            public void onLayoutChange(View view, int i, int j, int k, int l, int i1, int j1, 
                    int k1, int l1)
            {
                if (adLayout.getAndSetNeedsToLoadAdOnLayout(false))
                {
                    adLayout.setFloatingWindowDimensions();
                    AdLayout.access$200(adLayout);
                    AdLayout.access$300(adLayout).removeOnLayoutChangeListener(this);
                }
            }

            
            {
                adLayout = adlayout;
                super();
            }
        };
        AdLayout.access$300(adLayout).addOnLayoutChangeListener(enerutil);
    }

    private _cls1.val.adLayout()
    {
    }
}
