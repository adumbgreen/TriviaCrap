// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.mopub.mobileads:
//            BaseHtmlWebView, ViewGestureDetector

class a
    implements android.view.er
{

    final boolean a;
    final BaseHtmlWebView b;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        BaseHtmlWebView.a(b).a(motionevent);
        return motionevent.getAction() == 2 && !a;
    }

    r(BaseHtmlWebView basehtmlwebview, boolean flag)
    {
        b = basehtmlwebview;
        a = flag;
        super();
    }
}
