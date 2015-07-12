// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.database.DataSetObserver;
import android.widget.Adapter;

// Referenced classes of package com.mopub.nativeads:
//            MoPubAdAdapter, MoPubStreamAdPlacer

class t> extends DataSetObserver
{

    final MoPubAdAdapter a;

    public void onChanged()
    {
        MoPubAdAdapter.b(a).setItemCount(MoPubAdAdapter.a(a).getCount());
        a.notifyDataSetChanged();
    }

    public void onInvalidated()
    {
        a.notifyDataSetInvalidated();
    }

    er(MoPubAdAdapter mopubadadapter)
    {
        a = mopubadadapter;
        super();
    }
}
