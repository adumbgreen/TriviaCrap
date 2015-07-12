// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.widget.RelativeLayout;

// Referenced classes of package com.amazon.device.ads:
//            AdVideoPlayer

class VideoActionHandler
    implements AdActivity.IAdActivityAdapter
{

    private Activity activity;
    private RelativeLayout layout;
    private AdVideoPlayer player;

    VideoActionHandler()
    {
    }

    private void initPlayer(Bundle bundle)
    {
        player = new AdVideoPlayer(activity);
        player.setPlayData(bundle.getString("url"));
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(13);
        player.setLayoutParams(layoutparams);
        player.setViewGroup(layout);
        setPlayerListener(player);
    }

    private void setPlayerListener(AdVideoPlayer advideoplayer)
    {
        advideoplayer.setListener(new AdVideoPlayer.AdVideoPlayerListener() {

            final VideoActionHandler this$0;

            public void onComplete()
            {
                activity.finish();
            }

            public void onError()
            {
                activity.finish();
            }

            
            {
                this$0 = VideoActionHandler.this;
                super();
            }
        });
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void onCreate()
    {
        Bundle bundle = activity.getIntent().getExtras();
        layout = new RelativeLayout(activity);
        layout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        activity.setContentView(layout);
        initPlayer(bundle);
        player.playVideo();
    }

    public void onPause()
    {
    }

    public void onResume()
    {
    }

    public void onStop()
    {
        player.releasePlayer();
        player = null;
        activity.finish();
    }

    public void preOnCreate()
    {
        activity.requestWindowFeature(1);
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
    }

}
