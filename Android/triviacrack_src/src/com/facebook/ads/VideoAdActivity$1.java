// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package com.facebook.ads:
//            VideoAdActivity

class this._cls0
    implements android.view.nGlobalLayoutListener
{

    final VideoAdActivity this$0;

    public void onGlobalLayout()
    {
        VideoAdActivity.access$000(VideoAdActivity.this).getViewTreeObserver().removeOnGlobalLayoutListener(this);
        VideoAdActivity.access$100(VideoAdActivity.this);
    }

    balLayoutListener()
    {
        this$0 = VideoAdActivity.this;
        super();
    }
}
