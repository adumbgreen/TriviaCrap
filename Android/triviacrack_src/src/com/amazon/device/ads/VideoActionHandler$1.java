// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;

// Referenced classes of package com.amazon.device.ads:
//            VideoActionHandler

class this._cls0
    implements PlayerListener
{

    final VideoActionHandler this$0;

    public void onComplete()
    {
        VideoActionHandler.access$000(VideoActionHandler.this).finish();
    }

    public void onError()
    {
        VideoActionHandler.access$000(VideoActionHandler.this).finish();
    }

    PlayerListener()
    {
        this$0 = VideoActionHandler.this;
        super();
    }
}
