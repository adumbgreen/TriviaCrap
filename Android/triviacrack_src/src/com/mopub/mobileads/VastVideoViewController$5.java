// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.media.MediaPlayer;
import android.widget.VideoView;

// Referenced classes of package com.mopub.mobileads:
//            VastVideoViewController

class a
    implements android.media.ener
{

    final VastVideoViewController a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        if (VastVideoViewController.d(a).getDuration() < 16000)
        {
            VastVideoViewController.b(a, VastVideoViewController.d(a).getDuration());
        }
    }

    (VastVideoViewController vastvideoviewcontroller)
    {
        a = vastvideoviewcontroller;
        super();
    }
}
