// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.ads;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.lifestreet.android.lsmsdk.ads:
//            AdWebView

class this._cls0
    implements android.view.Listener
{

    final AdWebView this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return motionevent.getAction() == 2;
    }

    ()
    {
        this$0 = AdWebView.this;
        super();
    }
}
