// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.media.MediaPlayer;
import android.widget.ImageButton;

// Referenced classes of package com.mopub.mobileads:
//            MraidVideoViewController

class a
    implements android.media.
{

    final MraidVideoViewController a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        MraidVideoViewController.a(a).setVisibility(0);
        a.a(false);
        return false;
    }

    (MraidVideoViewController mraidvideoviewcontroller)
    {
        a = mraidvideoviewcontroller;
        super();
    }
}
