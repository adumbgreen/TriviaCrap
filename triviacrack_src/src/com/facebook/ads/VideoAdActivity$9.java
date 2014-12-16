// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.facebook.ads:
//            VideoAdActivity

class this._cls0
    implements android.media.letionListener
{

    final VideoAdActivity this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        VideoAdActivity.access$1100(VideoAdActivity.this, ayerState.COMPLETED);
        VideoAdActivity.access$300(VideoAdActivity.this);
    }

    ayerState()
    {
        this$0 = VideoAdActivity.this;
        super();
    }
}
