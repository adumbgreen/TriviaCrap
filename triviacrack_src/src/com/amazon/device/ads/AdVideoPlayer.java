// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.ViewGroup;
import android.widget.MediaController;
import android.widget.VideoView;

// Referenced classes of package com.amazon.device.ads:
//            Log

final class AdVideoPlayer
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener
{

    private static String LOG_TAG = com/amazon/device/ads/AdVideoPlayer.getSimpleName();
    private String contentUrl_;
    private Context context_;
    private android.view.ViewGroup.LayoutParams layoutParams_;
    private AdVideoPlayerListener listener_;
    private boolean released_;
    private VideoView videoView_;
    private ViewGroup viewGroup_;

    public AdVideoPlayer(Context context)
    {
        released_ = false;
        videoView_ = null;
        layoutParams_ = null;
        viewGroup_ = null;
        context_ = context;
    }

    private void displayPlayerControls()
    {
        Log.d(LOG_TAG, "in displayPlayerControls");
        MediaController mediacontroller = new MediaController(context_);
        videoView_.setMediaController(mediacontroller);
        mediacontroller.setAnchorView(videoView_);
        mediacontroller.requestFocus();
    }

    private void initializeVideoView()
    {
        VideoView videoview = new VideoView(context_);
        videoview.setOnCompletionListener(this);
        videoview.setOnErrorListener(this);
        videoview.setLayoutParams(layoutParams_);
        videoView_ = videoview;
        viewGroup_.addView(videoView_);
    }

    private void loadPlayerContent()
    {
        Uri uri = Uri.parse(contentUrl_);
        videoView_.setVideoURI(uri);
    }

    private void removePlayerFromParent()
    {
        Log.d(LOG_TAG, "in removePlayerFromParent");
        viewGroup_.removeView(videoView_);
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        releasePlayer();
        if (listener_ != null)
        {
            listener_.onComplete();
        }
    }

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        removePlayerFromParent();
        if (listener_ != null)
        {
            listener_.onError();
        }
        return false;
    }

    public void playVideo()
    {
        Log.d(LOG_TAG, "in playVideo");
        initializeVideoView();
        loadPlayerContent();
        startPlaying();
    }

    public void releasePlayer()
    {
        Log.d(LOG_TAG, "in releasePlayer");
        if (released_)
        {
            return;
        } else
        {
            released_ = true;
            videoView_.stopPlayback();
            removePlayerFromParent();
            return;
        }
    }

    public void setLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        layoutParams_ = layoutparams;
    }

    public void setListener(AdVideoPlayerListener advideoplayerlistener)
    {
        listener_ = advideoplayerlistener;
    }

    public void setPlayData(String s)
    {
        released_ = false;
        contentUrl_ = s;
    }

    public void setViewGroup(ViewGroup viewgroup)
    {
        viewGroup_ = viewgroup;
    }

    public void startPlaying()
    {
        Log.d(LOG_TAG, "in startPlaying");
        displayPlayerControls();
        videoView_.start();
    }


    private class AdVideoPlayerListener
    {

        public abstract void onComplete();

        public abstract void onError();
    }

}
