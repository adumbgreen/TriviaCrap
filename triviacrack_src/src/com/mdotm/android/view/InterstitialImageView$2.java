// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.view.View;

// Referenced classes of package com.mdotm.android.view:
//            InterstitialImageView

class a
    implements android.view.ageView._cls2
{

    final InterstitialImageView a;

    public void onClick(View view)
    {
        if (!InterstitialImageView.e(a))
        {
            InterstitialImageView.a(a, true);
            a.setClickable(false);
            InterstitialImageView.a(a, a.getContext());
        }
    }

    (InterstitialImageView interstitialimageview)
    {
        a = interstitialimageview;
        super();
    }
}
