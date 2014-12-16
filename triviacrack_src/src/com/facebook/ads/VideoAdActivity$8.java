// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.facebook.ads:
//            VideoAdActivity

class this._cls0
    implements android.media.aredListener
{

    final VideoAdActivity this$0;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        VideoAdActivity.access$602(VideoAdActivity.this, mediaplayer);
        if (VideoAdActivity.access$700(VideoAdActivity.this))
        {
            VideoAdActivity.access$600(VideoAdActivity.this).setVolume(0.0F, 0.0F);
        } else
        {
            VideoAdActivity.access$600(VideoAdActivity.this).setVolume(1.0F, 1.0F);
        }
        VideoAdActivity.access$100(VideoAdActivity.this);
        if (VideoAdActivity.access$800(VideoAdActivity.this) == ayerState.PAUSED || VideoAdActivity.access$800(VideoAdActivity.this) == ayerState.COMPLETED)
        {
            VideoAdActivity.access$600(VideoAdActivity.this).seekTo(VideoAdActivity.access$900(VideoAdActivity.this));
        } else
        {
            if (VideoAdActivity.access$800(VideoAdActivity.this) == ayerState.PLAYING)
            {
                VideoAdActivity.access$600(VideoAdActivity.this).seekTo(VideoAdActivity.access$900(VideoAdActivity.this));
                VideoAdActivity.access$1000(VideoAdActivity.this);
                return;
            }
            if (VideoAdActivity.access$800(VideoAdActivity.this) == ayerState.UNINITIALIZED)
            {
                VideoAdActivity.access$1100(VideoAdActivity.this, ayerState.INITIALIZED);
                VideoAdActivity.access$1000(VideoAdActivity.this);
                return;
            }
        }
    }

    ayerState()
    {
        this$0 = VideoAdActivity.this;
        super();
    }
}
