// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.media.MediaPlayer;
import android.widget.ImageView;
import android.widget.VideoView;
import com.mopub.common.HttpClient;
import com.mopub.mobileads.util.vast.VastVideoConfiguration;

// Referenced classes of package com.mopub.mobileads:
//            VastVideoViewController

class b
    implements android.media.stener
{

    final Context a;
    final VideoView b;
    final VastVideoViewController c;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        VastVideoViewController.p(c);
        VastVideoViewController.l(c);
        c.b(false);
        HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(c).getCompleteTrackers(), a);
        VastVideoViewController.e(c, true);
        b.setVisibility(8);
        if (VastVideoViewController.q(c).getDrawable() != null)
        {
            VastVideoViewController.q(c).setVisibility(0);
        }
    }

    ration(VastVideoViewController vastvideoviewcontroller, Context context, VideoView videoview)
    {
        c = vastvideoviewcontroller;
        a = context;
        b = videoview;
        super();
    }
}
