// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.facebook.ads.internal.HtmlAdDataModel;
import com.facebook.ads.internal.action.AdActionFactory;
import com.facebook.ads.internal.action.AppAdAction;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook.ads:
//            InterstitialAdActivity

public class VideoAdActivity extends Activity
{

    private static final long CONTROLS_FADE_DELAY = 3000L;
    public static final String MARKET_URI_INTENT_EXTRA = "adMarketUri";
    public static final String URI_INTENT_EXTRA = "adUri";
    public static final String VIDEO_PATH_INTENT_EXTRA = "adVideoPath";
    private List mAllControls;
    private List mBufferingView;
    private ImageButton mCloseButton;
    private int mCurrentPosition;
    private List mEndControls;
    private List mFullPlayingControls;
    private boolean mGoToAppStore;
    private Handler mHandler;
    private ImageButton mInstallButton;
    private boolean mIsMuted;
    private MediaPlayer mMediaPlayer;
    private List mMinPlayingControls;
    private ImageButton mMuteButton;
    private List mPausedControls;
    private View mRootView;
    private ImageButton mSkipButton;
    private PlayerState mState;
    private long mTimeOfLastTouch;
    private VideoView mVideoView;
    private Uri marketUri;
    private String path;
    private RelativeLayout relativeLayout;
    private String uniqueId;
    private Uri uri;

    public VideoAdActivity()
    {
        mIsMuted = false;
        mCurrentPosition = -1;
        mHandler = new Handler();
        mGoToAppStore = false;
    }

    private void activateControlSet(List list)
    {
        for (Iterator iterator = mAllControls.iterator(); iterator.hasNext();)
        {
            ImageButton imagebutton = (ImageButton)iterator.next();
            if (list.contains(imagebutton))
            {
                imagebutton.setVisibility(0);
            } else
            {
                imagebutton.setVisibility(8);
            }
        }

    }

    private void bindModel()
    {
        setState(PlayerState.UNINITIALIZED);
        mInstallButton.setBackground(getResources().getDrawable(0x1080081));
        mSkipButton.setBackground(getResources().getDrawable(0x1080041));
        mMuteButton.setBackground(getResources().getDrawable(0x1080032));
        mCloseButton.setBackground(getResources().getDrawable(0x1080038));
        mVideoView.setVideoPath(path);
    }

    private void configureLayout()
    {
        relativeLayout.addView(mRootView);
        relativeLayout.addView(mInstallButton);
        relativeLayout.addView(mSkipButton);
        relativeLayout.addView(mMuteButton);
        relativeLayout.addView(mCloseButton);
    }

    private void configureViews()
    {
        ImageButton aimagebutton[] = new ImageButton[4];
        aimagebutton[0] = mInstallButton;
        aimagebutton[1] = mMuteButton;
        aimagebutton[2] = mCloseButton;
        aimagebutton[3] = mSkipButton;
        mAllControls = Arrays.asList(aimagebutton);
        ImageButton aimagebutton1[] = new ImageButton[4];
        aimagebutton1[0] = mInstallButton;
        aimagebutton1[1] = mMuteButton;
        aimagebutton1[2] = mCloseButton;
        aimagebutton1[3] = mSkipButton;
        mFullPlayingControls = Arrays.asList(aimagebutton1);
        ImageButton aimagebutton2[] = new ImageButton[3];
        aimagebutton2[0] = mCloseButton;
        aimagebutton2[1] = mInstallButton;
        aimagebutton2[2] = mSkipButton;
        mMinPlayingControls = Arrays.asList(aimagebutton2);
        ImageButton aimagebutton3[] = new ImageButton[4];
        aimagebutton3[0] = mInstallButton;
        aimagebutton3[1] = mMuteButton;
        aimagebutton3[2] = mCloseButton;
        aimagebutton3[3] = mSkipButton;
        mPausedControls = Arrays.asList(aimagebutton3);
        ImageButton aimagebutton4[] = new ImageButton[4];
        aimagebutton4[0] = mInstallButton;
        aimagebutton4[1] = mMuteButton;
        aimagebutton4[2] = mCloseButton;
        aimagebutton4[3] = mSkipButton;
        mEndControls = Arrays.asList(aimagebutton4);
        ImageButton aimagebutton5[] = new ImageButton[3];
        aimagebutton5[0] = mInstallButton;
        aimagebutton5[1] = mCloseButton;
        aimagebutton5[2] = mSkipButton;
        mBufferingView = Arrays.asList(aimagebutton5);
        android.view.View.OnTouchListener ontouchlistener = new android.view.View.OnTouchListener() {

            final VideoAdActivity this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() != 0) goto _L2; else goto _L1
_L1:
                view.setAlpha(0.5F);
_L4:
                return false;
_L2:
                if (motionevent.getAction() == 1)
                {
                    view.setAlpha(1.0F);
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        };
        mInstallButton.setOnTouchListener(ontouchlistener);
        mSkipButton.setOnTouchListener(ontouchlistener);
        mMuteButton.setOnTouchListener(ontouchlistener);
        mCloseButton.setOnTouchListener(ontouchlistener);
        mInstallButton.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoAdActivity this$0;

            public void onClick(View view)
            {
                mGoToAppStore = true;
                finish();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mSkipButton.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoAdActivity this$0;

            public void onClick(View view)
            {
                displayInterstitial();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mMuteButton.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoAdActivity this$0;

            public void onClick(View view)
            {
                videoMute();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mCloseButton.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoAdActivity this$0;

            public void onClick(View view)
            {
                finish();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mRootView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final VideoAdActivity this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                pulseControlsFromTouch();
                return false;
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mVideoView.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final VideoAdActivity this$0;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                mMediaPlayer = mediaplayer;
                if (mIsMuted)
                {
                    mMediaPlayer.setVolume(0.0F, 0.0F);
                } else
                {
                    mMediaPlayer.setVolume(1.0F, 1.0F);
                }
                updateVideoPlayerSize();
                if (mState == PlayerState.PAUSED || mState == PlayerState.COMPLETED)
                {
                    mMediaPlayer.seekTo(mCurrentPosition);
                } else
                {
                    if (mState == PlayerState.PLAYING)
                    {
                        mMediaPlayer.seekTo(mCurrentPosition);
                        videoPlay();
                        return;
                    }
                    if (mState == PlayerState.UNINITIALIZED)
                    {
                        setState(PlayerState.INITIALIZED);
                        videoPlay();
                        return;
                    }
                }
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mVideoView.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            final VideoAdActivity this$0;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                setState(PlayerState.COMPLETED);
                displayInterstitial();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
        mVideoView.setOnTouchListener(new android.view.View.OnTouchListener() {

            final VideoAdActivity this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                pulseControlsFromTouch();
                return false;
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
    }

    private void displayInterstitial()
    {
        Intent intent = new Intent(this, com/facebook/ads/InterstitialAdActivity);
        Display display = ((WindowManager)getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        display.getMetrics(displaymetrics);
        intent.putExtra("displayRotation", display.getRotation());
        intent.putExtra("displayWidth", displaymetrics.widthPixels);
        intent.putExtra("displayHeight", displaymetrics.heightPixels);
        intent.putExtra("adInterstitialUniqueId", uniqueId);
        HtmlAdDataModel.fromIntentExtra(getIntent()).addToIntentExtra(intent);
        startActivity(intent);
        finish();
    }

    private void getIntentExtras()
    {
        Bundle bundle = getIntent().getExtras();
        uri = Uri.parse(bundle.getString("adUri"));
        marketUri = Uri.parse(bundle.getString("adMarketUri"));
        path = bundle.getString("adVideoPath");
        uniqueId = bundle.getString("adInterstitialUniqueId");
    }

    private void pulseControlsFromTouch()
    {
        mTimeOfLastTouch = System.currentTimeMillis();
        updateControlState();
        mHandler.removeCallbacksAndMessages(null);
        mHandler.postDelayed(new Runnable() {

            final VideoAdActivity this$0;

            public void run()
            {
                updateControlState();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        }, 3000L);
    }

    private void setButtonPosition()
    {
        mInstallButton.setX(270F);
        mInstallButton.setY(1400F);
        mSkipButton.setX(700F);
        mSkipButton.setY(1400F);
        mMuteButton.setX(10F);
        mMuteButton.setY(1160F);
        mCloseButton.setX(970F);
        mInstallButton.setScaleX(1.5F);
        mInstallButton.setScaleY(1.5F);
        mSkipButton.setScaleX(1.5F);
        mSkipButton.setScaleY(1.5F);
    }

    private void setState(PlayerState playerstate)
    {
        if (playerstate != mState)
        {
            mState = playerstate;
            pulseControlsFromTouch();
        }
    }

    private void updateControlState()
    {
        mInstallButton.setAlpha(1.0F);
        mSkipButton.setAlpha(1.0F);
        mCloseButton.setAlpha(1.0F);
        mVideoView.setAlpha(1.0F);
        class _cls12
        {

            static final int $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[];

            static 
            {
                $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState = new int[PlayerState.values().length];
                try
                {
                    $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[PlayerState.PLAYING.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[PlayerState.PAUSED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[PlayerState.UNINITIALIZED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[PlayerState.INITIALIZED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$facebook$ads$VideoAdActivity$PlayerState[PlayerState.COMPLETED.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

        switch (_cls12..SwitchMap.com.facebook.ads.VideoAdActivity.PlayerState[mState.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            if (System.currentTimeMillis() - mTimeOfLastTouch >= 3000L)
            {
                activateControlSet(mMinPlayingControls);
                mInstallButton.setAlpha(0.5F);
                mSkipButton.setAlpha(0.5F);
                mCloseButton.setAlpha(0.5F);
                return;
            } else
            {
                activateControlSet(mFullPlayingControls);
                return;
            }

        case 2: // '\002'
            activateControlSet(mPausedControls);
            return;

        case 3: // '\003'
            activateControlSet(mBufferingView);
            return;

        case 4: // '\004'
            activateControlSet(mBufferingView);
            return;

        case 5: // '\005'
            activateControlSet(mEndControls);
            mMediaPlayer.seekTo((int)(0.75F * (float)mMediaPlayer.getDuration()));
            mVideoView.setAlpha(1.0F);
            return;
        }
    }

    private void updateVideoPlayerSize()
    {
        if (mMediaPlayer != null)
        {
            float f = Math.min((float)mRootView.getWidth() / (float)mMediaPlayer.getVideoWidth(), (float)mRootView.getHeight() / (float)mMediaPlayer.getVideoHeight());
            int i = (int)(f * (float)mMediaPlayer.getVideoWidth());
            int j = (int)(f * (float)mMediaPlayer.getVideoHeight());
            mVideoView.getHolder().setFixedSize(i, j);
            mVideoView.requestLayout();
            mVideoView.invalidate();
        }
    }

    private void videoBackground()
    {
        if (mVideoView.isPlaying())
        {
            mCurrentPosition = mVideoView.getCurrentPosition();
        }
        mVideoView.pause();
        mHandler.removeCallbacksAndMessages(null);
        mMediaPlayer = null;
    }

    private void videoMute()
    {
        if (mState != PlayerState.UNINITIALIZED)
        {
            boolean flag;
            if (mIsMuted)
            {
                mMediaPlayer.setVolume(1.0F, 1.0F);
                mMuteButton.setBackground(getResources().getDrawable(0x1080032));
            } else
            {
                mMediaPlayer.setVolume(0.0F, 0.0F);
                mMuteButton.setBackground(getResources().getDrawable(0x1080031));
            }
            if (!mIsMuted)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mIsMuted = flag;
        }
    }

    private void videoPlay()
    {
        if (mState != PlayerState.UNINITIALIZED && mState != PlayerState.PLAYING)
        {
            if (mState == PlayerState.COMPLETED)
            {
                mVideoView.seekTo(0);
            }
            mVideoView.start();
            mCurrentPosition = mVideoView.getCurrentPosition();
            setState(PlayerState.PLAYING);
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        mRootView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final VideoAdActivity this$0;

            public void onGlobalLayout()
            {
                mRootView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                updateVideoPlayerSize();
            }

            
            {
                this$0 = VideoAdActivity.this;
                super();
            }
        });
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        relativeLayout = new RelativeLayout(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(15);
        setContentView(relativeLayout, layoutparams);
        mVideoView = new VideoView(this);
        mVideoView.setLayoutParams(layoutparams);
        relativeLayout.addView(mVideoView);
        mRootView = new View(this);
        mInstallButton = new ImageButton(this);
        mSkipButton = new ImageButton(this);
        mMuteButton = new ImageButton(this);
        mCloseButton = new ImageButton(this);
        getIntentExtras();
        setVolumeControlStream(3);
        configureViews();
        bindModel();
        setButtonPosition();
        configureLayout();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (mGoToAppStore)
        {
            ((AppAdAction)AdActionFactory.getAdAction(this, uri)).goToMarketURL();
        }
    }

    protected void onPause()
    {
        super.onPause();
        videoBackground();
    }

    protected void onResume()
    {
        super.onResume();
        if (mState == PlayerState.PLAYING && !mVideoView.isPlaying())
        {
            mVideoView.seekTo(mCurrentPosition);
            mVideoView.start();
        }
        pulseControlsFromTouch();
    }

    protected void onStop()
    {
        super.onStop();
        videoBackground();
    }







/*
    static boolean access$202(VideoAdActivity videoadactivity, boolean flag)
    {
        videoadactivity.mGoToAppStore = flag;
        return flag;
    }

*/






/*
    static MediaPlayer access$602(VideoAdActivity videoadactivity, MediaPlayer mediaplayer)
    {
        videoadactivity.mMediaPlayer = mediaplayer;
        return mediaplayer;
    }

*/




    private class PlayerState extends Enum
    {

        private static final PlayerState $VALUES[];
        public static final PlayerState COMPLETED;
        public static final PlayerState INITIALIZED;
        public static final PlayerState PAUSED;
        public static final PlayerState PLAYING;
        public static final PlayerState UNINITIALIZED;

        public static PlayerState valueOf(String s)
        {
            return (PlayerState)Enum.valueOf(com/facebook/ads/VideoAdActivity$PlayerState, s);
        }

        public static PlayerState[] values()
        {
            return (PlayerState[])$VALUES.clone();
        }

        static 
        {
            UNINITIALIZED = new PlayerState("UNINITIALIZED", 0);
            INITIALIZED = new PlayerState("INITIALIZED", 1);
            PLAYING = new PlayerState("PLAYING", 2);
            PAUSED = new PlayerState("PAUSED", 3);
            COMPLETED = new PlayerState("COMPLETED", 4);
            PlayerState aplayerstate[] = new PlayerState[5];
            aplayerstate[0] = UNINITIALIZED;
            aplayerstate[1] = INITIALIZED;
            aplayerstate[2] = PLAYING;
            aplayerstate[3] = PAUSED;
            aplayerstate[4] = COMPLETED;
            $VALUES = aplayerstate;
        }

        private PlayerState(String s, int i)
        {
            super(s, i);
        }
    }

}
