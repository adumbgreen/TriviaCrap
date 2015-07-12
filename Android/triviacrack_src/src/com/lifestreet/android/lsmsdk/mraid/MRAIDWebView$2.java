// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.mraid;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.lifestreet.android.lsmsdk.mraid:
//            MRAIDWebView

class this._cls0
    implements android.view.tener
{

    final MRAIDWebView this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return motionevent.getAction() == 2;
    }

    ()
    {
        this$0 = MRAIDWebView.this;
        super();
    }
}
