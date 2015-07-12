// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.os.PowerManager;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Toast;
import android.widget.VideoView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMBaseActivity, MMLog, VideoImage, HttpRedirection

class VideoPlayerActivity extends MMBaseActivity
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    private boolean a;
    private boolean b;
    protected boolean d;
    protected int e;
    protected boolean f;
    protected VideoView g;
    HttpRedirection.RedirectionListenerImpl h;
    String i;
    RelativeLayout j;
    ProgressBar k;
    Button l;
    View m;
    TransparentHandler n;
    boolean o;
    boolean p;
    private boolean q;

    VideoPlayerActivity()
    {
        q = true;
        d = true;
        e = 0;
        n = new TransparentHandler();
        p = false;
    }

    private void a(RelativeLayout relativelayout)
    {
        RelativeLayout relativelayout1 = new RelativeLayout(c);
        relativelayout1.setId(0x4fe0613);
        relativelayout1.setBackgroundColor(0xff000000);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        relativelayout1.setLayoutParams(layoutparams);
        layoutparams.addRule(12);
        Button button = new Button(c);
        l = new Button(c);
        Button button1 = new Button(c);
        button.setBackgroundResource(0x1080025);
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        android.widget.RelativeLayout.LayoutParams layoutparams2;
        android.widget.RelativeLayout.LayoutParams layoutparams3;
        if (g.isPlaying())
        {
            l.setBackgroundResource(0x1080023);
        } else
        {
            l.setBackgroundResource(0x1080024);
        }
        button1.setBackgroundResource(0x1080038);
        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(14);
        relativelayout1.addView(l, layoutparams1);
        layoutparams3.addRule(0, l.getId());
        relativelayout1.addView(button);
        layoutparams2.addRule(11);
        relativelayout1.addView(button1, layoutparams2);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoPlayerActivity a;

            public void onClick(View view)
            {
                if (a.g != null)
                {
                    a.g.seekTo(0);
                }
            }

            
            {
                a = VideoPlayerActivity.this;
                super();
            }
        });
        l.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoPlayerActivity a;

            public void onClick(View view)
            {
label0:
                {
                    if (a.g != null)
                    {
                        if (!a.g.isPlaying())
                        {
                            break label0;
                        }
                        a.n();
                        a.l.setBackgroundResource(0x1080024);
                    }
                    return;
                }
                if (a.f)
                {
                    a.a(0);
                } else
                if (a.p && !a.f)
                {
                    a.g();
                } else
                {
                    a.a(a.e);
                }
                a.l.setBackgroundResource(0x1080023);
            }

            
            {
                a = VideoPlayerActivity.this;
                super();
            }
        });
        button1.setOnClickListener(new android.view.View.OnClickListener() {

            final VideoPlayerActivity a;

            public void onClick(View view)
            {
                if (a.g != null)
                {
                    VideoPlayerActivity.a(a, true);
                    a.m();
                }
            }

            
            {
                a = VideoPlayerActivity.this;
                super();
            }
        });
        relativelayout.addView(relativelayout1, layoutparams);
    }

    private boolean a(Uri uri)
    {
        if (uri.getScheme().equalsIgnoreCase("mmsdk"))
        {
            if (b(uri.getHost()))
            {
                return true;
            }
            MMLog.a("VideoPlayerActivity", String.format("Unrecognized mmsdk:// URI %s.", new Object[] {
                uri
            }));
        }
        return false;
    }

    static boolean a(VideoPlayerActivity videoplayeractivity, Uri uri)
    {
        return videoplayeractivity.a(uri);
    }

    static boolean a(VideoPlayerActivity videoplayeractivity, boolean flag)
    {
        videoplayeractivity.q = flag;
        return flag;
    }

    private void b(int i1)
    {
        g.requestFocus();
        g.seekTo(i1);
        if (((PowerManager)getSystemService("power")).isScreenOn())
        {
            if (k != null)
            {
                k.bringToFront();
                k.setVisibility(0);
            }
            if (l != null)
            {
                l.setBackgroundResource(0x1080023);
            }
            g.start();
            r();
        }
    }

    private boolean b(String s1)
    {
        return s1 != null && (s1.equalsIgnoreCase("restartVideo") || s1.equalsIgnoreCase("endVideo"));
    }

    private void p()
    {
        requestWindowFeature(1);
        getWindow().clearFlags(2048);
        getWindow().addFlags(1024);
    }

    private void q()
    {
        h = new VideoRedirectionListener();
    }

    private void r()
    {
        if (!n.hasMessages(4))
        {
            n.sendEmptyMessage(4);
        }
    }

    private void s()
    {
        g.setOnCompletionListener(this);
        g.setOnPreparedListener(this);
        g.setOnErrorListener(this);
    }

    protected void a(int i1)
    {
        String s1;
        try
        {
            p = false;
            s1 = getIntent().getData().toString();
            MMLog.b("VideoPlayerActivity", String.format("playVideo path: %s", new Object[] {
                s1
            }));
        }
        catch (Exception exception)
        {
            MMLog.a("VideoPlayerActivity", "playVideo error: ", exception);
            a((new StringBuilder()).append("error: ").append(exception).toString());
            return;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        if (s1.length() != 0 && g != null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        a("no name or null videoview");
        return;
        f = false;
        if (q && g != null)
        {
            g.setVideoURI(Uri.parse(s1));
        }
        b(i1);
        return;
    }

    protected void a(Bundle bundle)
    {
        bundle.putInt("currentVideoPosition", e);
        bundle.putBoolean("isVideoCompleted", f);
        bundle.putBoolean("isVideoCompletedOnce", a);
        bundle.putBoolean("hasBottomBar", d);
        bundle.putBoolean("shouldSetUri", q);
        bundle.putBoolean("isUserPausing", p);
        bundle.putBoolean("isPaused", o);
        super.a(bundle);
    }

    void a(Message message)
    {
        message.what;
        JVM INSTR tableswitch 4 5: default 28
    //                   4 29
    //                   5 90;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        if (g != null && g.isPlaying() && g.getCurrentPosition() > 0)
        {
            g.setBackgroundColor(0);
            n.sendEmptyMessageDelayed(5, 100L);
            return;
        } else
        {
            n.sendEmptyMessageDelayed(4, 50L);
            return;
        }
_L3:
        if (g != null && g.isPlaying() && g.getCurrentPosition() > 0)
        {
            m.setVisibility(4);
            k.setVisibility(4);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected void a(ImageButton imagebutton, float f1)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f1, f1);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillEnabled(true);
        alphaanimation.setFillBefore(true);
        alphaanimation.setFillAfter(true);
        imagebutton.startAnimation(alphaanimation);
    }

    protected void a(VideoImage videoimage)
    {
        MMLog.b("VideoPlayerActivity", "Cached video button event logged");
        for (int i1 = 0; i1 < videoimage.c.length; i1++)
        {
            MMSDK.Event.a(videoimage.c[i1]);
        }

    }

    protected void a(String s1)
    {
        Toast.makeText(c, "Sorry. There was a problem playing the video", 1).show();
        if (g != null)
        {
            g.stopPlayback();
        }
    }

    protected RelativeLayout b()
    {
        RelativeLayout relativelayout = new RelativeLayout(c);
        relativelayout.setId(400);
        relativelayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        relativelayout.setBackgroundColor(0xff000000);
        j = new RelativeLayout(c);
        j.setBackgroundColor(0xff000000);
        j.setId(410);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams1.addRule(13);
        layoutparams.addRule(13);
        g = new VideoView(c);
        g.setId(411);
        g.getHolder().setFormat(-2);
        g.setBackgroundColor(0xff000000);
        s();
        j.addView(g, layoutparams1);
        m = new View(c);
        m.setBackgroundColor(0xff000000);
        android.widget.RelativeLayout.LayoutParams layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        relativelayout.addView(j, layoutparams);
        if (d)
        {
            layoutparams2.addRule(2, 0x4fe0613);
            a(relativelayout);
        }
        m.setLayoutParams(layoutparams2);
        relativelayout.addView(m);
        k = new ProgressBar(c);
        k.setIndeterminate(true);
        android.widget.RelativeLayout.LayoutParams layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams3.addRule(13);
        k.setLayoutParams(layoutparams3);
        relativelayout.addView(k);
        k.setVisibility(4);
        return relativelayout;
    }

    protected void b(Bundle bundle)
    {
        e = bundle.getInt("currentVideoPosition");
        f = bundle.getBoolean("isVideoCompleted");
        a = bundle.getBoolean("isVideoCompletedOnce");
        d = bundle.getBoolean("hasBottomBar", d);
        q = bundle.getBoolean("shouldSetUri", q);
        p = bundle.getBoolean("isUserPausing", p);
        o = bundle.getBoolean("isPaused", o);
        super.b(bundle);
    }

    protected void c()
    {
        if (g != null && g.isPlaying())
        {
            e = g.getCurrentPosition();
            g.pause();
            MMLog.a("VideoPlayerActivity", "Video paused");
        }
    }

    protected void c(Bundle bundle)
    {
        if (bundle != null)
        {
            f = bundle.getBoolean("videoCompleted");
            a = bundle.getBoolean("videoCompletedOnce");
            e = bundle.getInt("videoPosition");
            d = bundle.getBoolean("hasBottomBar");
            q = bundle.getBoolean("shouldSetUri");
        }
    }

    protected void d()
    {
        super.d();
        m.bringToFront();
        m.setVisibility(0);
        o = false;
        MMLog.a("VideoPlayerActivity", "VideoPlayer - onResume");
        if (b && !p)
        {
            g();
        }
    }

    void d(String s1)
    {
        runOnUiThread(new Runnable(s1) {

            final String a;
            final VideoPlayerActivity b;

            public void run()
            {
                if (a.equalsIgnoreCase("restartVideo"))
                {
                    b.h();
                } else
                if (a.equalsIgnoreCase("endVideo"))
                {
                    b.l();
                    return;
                }
            }

            
            {
                b = VideoPlayerActivity.this;
                a = s1;
                super();
            }
        });
    }

    protected void e()
    {
        super.e();
        o = true;
        MMLog.a("VideoPlayerActivity", "VideoPlayer - onPause");
        c();
    }

    void e(String s1)
    {
        if (s1 != null)
        {
            MMLog.b("VideoPlayerActivity", String.format("Button Click with URL: %s", new Object[] {
                s1
            }));
            h.a = s1;
            h.b = new WeakReference(c);
            if (!h.isHandlingMMVideo(Uri.parse(s1)))
            {
                HttpRedirection.a(h);
                return;
            }
        }
    }

    protected void g()
    {
        if (o())
        {
            a(e);
        }
    }

    protected void h()
    {
        MMLog.b("VideoPlayerActivity", "Restart Video.");
        if (g != null)
        {
            a(0);
        }
    }

    protected void i()
    {
    }

    protected boolean j()
    {
        return !f;
    }

    protected void l()
    {
        MMLog.b("VideoPlayerActivity", "End Video.");
        if (g != null)
        {
            q = true;
            m();
        }
    }

    protected void m()
    {
        MMLog.b("VideoPlayerActivity", "Video ad player closed");
        if (g != null)
        {
            if (g.isPlaying())
            {
                g.stopPlayback();
            }
            g = null;
        }
        finish();
    }

    protected void n()
    {
        p = true;
        c();
    }

    protected boolean o()
    {
        return g != null && !g.isPlaying() && !f;
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        a = true;
        f = true;
        if (l != null && !g.isPlaying())
        {
            l.setBackgroundResource(0x1080024);
        }
        MMLog.a("VideoPlayerActivity", "Video player on complete");
    }

    public void onCreate(Bundle bundle)
    {
        setTheme(0x1030005);
        super.onCreate(bundle);
        MMLog.b("VideoPlayerActivity", "Setting up the video player");
        p();
        c(bundle);
        q();
        setContentView(b());
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        return false;
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 4 && keyevent.getRepeatCount() == 0 && !a)
        {
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        MMLog.b("VideoPlayerActivity", "Video Prepared");
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        b = flag;
        if (!o && flag && !p)
        {
            g();
        }
    }

    private class TransparentHandler extends Handler
    {

        private WeakReference a;

        public void handleMessage(Message message)
        {
            VideoPlayerActivity videoplayeractivity = (VideoPlayerActivity)a.get();
            if (videoplayeractivity != null)
            {
                videoplayeractivity.a(message);
            }
        }

        public TransparentHandler()
        {
            a = new WeakReference(VideoPlayerActivity.this);
        }
    }


    private class VideoRedirectionListener extends HttpRedirection.RedirectionListenerImpl
    {

        WeakReference f;

        public OverlaySettings getOverlaySettings()
        {
            VideoPlayerActivity videoplayeractivity = (VideoPlayerActivity)f.get();
            if (videoplayeractivity != null && videoplayeractivity.i != null)
            {
                OverlaySettings overlaysettings = new OverlaySettings();
                overlaysettings.c = videoplayeractivity.i;
                return overlaysettings;
            } else
            {
                return null;
            }
        }

        public boolean isHandlingMMVideo(Uri uri)
        {
            VideoPlayerActivity videoplayeractivity = (VideoPlayerActivity)f.get();
            if (videoplayeractivity != null)
            {
                videoplayeractivity.runOnUiThread(videoplayeractivity. new Runnable() {

                    final VideoPlayerActivity a;
                    final VideoRedirectionListener b;

                    public void run()
                    {
                        a.i();
                    }

                
                {
                    b = VideoRedirectionListener.this;
                    a = VideoPlayerActivity.this;
                    super();
                }
                });
                if (uri != null && VideoPlayerActivity.a(videoplayeractivity, uri))
                {
                    videoplayeractivity.d(uri.getHost());
                    return true;
                }
            }
            return false;
        }

        public VideoRedirectionListener()
        {
            if (VideoPlayerActivity.this != null)
            {
                f = new WeakReference(VideoPlayerActivity.this);
                if (c != null)
                {
                    e = c.a;
                }
            }
        }
    }

}
