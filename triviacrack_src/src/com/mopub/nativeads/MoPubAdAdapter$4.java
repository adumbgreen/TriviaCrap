// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.mopub.nativeads:
//            MoPubAdAdapter, MoPubStreamAdPlacer

class a
    implements android.widget.mClickListener
{

    final android.widget.mClickListener a;
    final MoPubAdAdapter b;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (!MoPubAdAdapter.b(b).isAd(i))
        {
            a.onItemClick(adapterview, view, MoPubAdAdapter.b(b).getOriginalPosition(i), l);
        }
    }

    kListener(MoPubAdAdapter mopubadadapter, android.widget.mClickListener mclicklistener)
    {
        b = mopubadadapter;
        a = mclicklistener;
        super();
    }
}
