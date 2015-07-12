// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.media.MediaPlayer;

// Referenced classes of package com.mopub.mobileads:
//            VastVideoViewController

class a
    implements android.media.r
{

    final VastVideoViewController a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        if (a.a(mediaplayer, i, j))
        {
            return true;
        } else
        {
            VastVideoViewController.p(a);
            VastVideoViewController.l(a);
            a.a(false);
            return false;
        }
    }

    (VastVideoViewController vastvideoviewcontroller)
    {
        a = vastvideoviewcontroller;
        super();
    }
}
