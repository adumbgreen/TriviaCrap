// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.view.MotionEvent;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMWebView, MMAdView

class a extends android.view.istener
{

    WeakReference a;

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            MMAdView mmadview = mmwebview.g();
            if (mmadview != null)
            {
                a(mmadview.h);
            }
        }
        return false;
    }

    public A(MMWebView mmwebview)
    {
        a = new WeakReference(mmwebview);
    }
}
