// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.view.View;

// Referenced classes of package com.millennialmedia.android:
//            AdViewOverlayView, MMLog

class a
    implements android.view.
{

    final AdViewOverlayView a;

    public void onClick(View view)
    {
        MMLog.a("AdViewOverlayView", "Close button clicked.");
        a.c();
    }

    (AdViewOverlayView adviewoverlayview)
    {
        a = adviewoverlayview;
        super();
    }
}
