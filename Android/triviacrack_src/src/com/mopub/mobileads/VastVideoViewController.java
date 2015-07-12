// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.DownloadResponse;
import com.mopub.common.DownloadTask;
import com.mopub.common.HttpClient;
import com.mopub.common.HttpResponses;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.Streams;
import com.mopub.common.util.VersionCode;
import com.mopub.mobileads.util.vast.VastCompanionAd;
import com.mopub.mobileads.util.vast.VastVideoConfiguration;
import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.client.methods.HttpUriRequest;

// Referenced classes of package com.mopub.mobileads:
//            m, n, bj

public class VastVideoViewController extends m
    implements com.mopub.common.DownloadTask.DownloadTaskListener
{

    private static final ThreadPoolExecutor a;
    private final VastVideoConfiguration b;
    private final VastCompanionAd c;
    private final bj d;
    private final VideoView e;
    private final ImageView f;
    private final android.view.View.OnTouchListener g;
    private final Handler h = new Handler();
    private final Runnable i;
    private boolean j;
    private int k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private boolean r;
    private int s;

    VastVideoViewController(Context context, Bundle bundle, long l1, n n1)
    {
        super(context, l1, n1);
        k = 5000;
        j = false;
        q = -1;
        s = 0;
        java.io.Serializable serializable = bundle.getSerializable("vast_video_configuration");
        if (serializable != null && (serializable instanceof VastVideoConfiguration))
        {
            b = (VastVideoConfiguration)serializable;
            if (b.getDiskMediaFileUrl() == null)
            {
                throw new IllegalStateException("VastVideoConfiguration does not have a video disk path");
            } else
            {
                c = b.getVastCompanionAd();
                g = new android.view.View.OnTouchListener() {

                    final VastVideoViewController a;

                    public boolean onTouch(View view, MotionEvent motionevent)
                    {
                        if (motionevent.getAction() == 1 && VastVideoViewController.a(a))
                        {
                            VastVideoViewController.a(a, VastVideoViewController.b(a).getClickTrackers(), VastVideoViewController.b(a).getClickThroughUrl());
                        }
                        return true;
                    }

            
            {
                a = VastVideoViewController.this;
                super();
            }
                };
                a(context);
                e = c(context);
                e.requestFocus();
                d = b(context);
                i().addView(d);
                f = d(context);
                HttpClient.makeTrackingHttpRequest(b.getImpressionTrackers(), context);
                i = l();
                return;
            }
        } else
        {
            throw new IllegalStateException("VastVideoConfiguration is invalid");
        }
    }

    private void a(Context context)
    {
        android.graphics.drawable.GradientDrawable.Orientation orientation = android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM;
        int ai[] = new int[2];
        ai[0] = Color.argb(0, 0, 0, 0);
        ai[1] = Color.argb(255, 0, 0, 0);
        GradientDrawable gradientdrawable = new GradientDrawable(orientation, ai);
        Drawable adrawable[] = new Drawable[2];
        adrawable[0] = Drawables.THATCHED_BACKGROUND.decodeImage(context);
        adrawable[1] = gradientdrawable;
        LayerDrawable layerdrawable = new LayerDrawable(adrawable);
        i().setBackgroundDrawable(layerdrawable);
    }

    static void a(VastVideoViewController vastvideoviewcontroller, List list, String s1)
    {
        vastvideoviewcontroller.a(list, s1);
    }

    private void a(List list, String s1)
    {
        HttpClient.makeTrackingHttpRequest(list, h());
        j();
        Bundle bundle = new Bundle();
        bundle.putString("URL", s1);
        g().onStartActivityForResult(com/mopub/common/MoPubBrowser, 1, bundle);
    }

    private boolean a(int i1)
    {
        return i1 >= 16000;
    }

    static boolean a(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.o();
    }

    static boolean a(VastVideoViewController vastvideoviewcontroller, int i1)
    {
        return vastvideoviewcontroller.a(i1);
    }

    static boolean a(VastVideoViewController vastvideoviewcontroller, boolean flag)
    {
        vastvideoviewcontroller.m = flag;
        return flag;
    }

    static int b(VastVideoViewController vastvideoviewcontroller, int i1)
    {
        vastvideoviewcontroller.k = i1;
        return i1;
    }

    private bj b(Context context)
    {
        bj bj1 = new bj(context);
        bj1.a(new android.view.View.OnTouchListener() {

            final VastVideoViewController a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 1)
                {
                    a.g().onFinish();
                }
                return true;
            }

            
            {
                a = VastVideoViewController.this;
                super();
            }
        });
        bj1.b(g);
        return bj1;
    }

    static VastVideoConfiguration b(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.b;
    }

    static boolean b(VastVideoViewController vastvideoviewcontroller, boolean flag)
    {
        vastvideoviewcontroller.n = flag;
        return flag;
    }

    private VideoView c(Context context)
    {
        VideoView videoview = new VideoView(context);
        videoview.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final VastVideoViewController a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                if (VastVideoViewController.d(a).getDuration() < 16000)
                {
                    VastVideoViewController.b(a, VastVideoViewController.d(a).getDuration());
                }
            }

            
            {
                a = VastVideoViewController.this;
                super();
            }
        });
        videoview.setOnTouchListener(g);
        videoview.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener(context, videoview) {

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

            
            {
                c = VastVideoViewController.this;
                a = context;
                b = videoview;
                super();
            }
        });
        videoview.setOnErrorListener(new android.media.MediaPlayer.OnErrorListener() {

            final VastVideoViewController a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                if (a.a(mediaplayer, i1, j1))
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

            
            {
                a = VastVideoViewController.this;
                super();
            }
        });
        videoview.setVideoPath(b.getDiskMediaFileUrl());
        return videoview;
    }

    static VastCompanionAd c(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.c;
    }

    static boolean c(VastVideoViewController vastvideoviewcontroller, boolean flag)
    {
        vastvideoviewcontroller.o = flag;
        return flag;
    }

    private ImageView d(Context context)
    {
        RelativeLayout relativelayout = new RelativeLayout(context);
        relativelayout.setGravity(17);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(3, d.getId());
        i().addView(relativelayout, layoutparams);
        ImageView imageview = new ImageView(context);
        imageview.setVisibility(4);
        relativelayout.addView(imageview, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        return imageview;
    }

    static VideoView d(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.e;
    }

    static boolean d(VastVideoViewController vastvideoviewcontroller, boolean flag)
    {
        vastvideoviewcontroller.p = flag;
        return flag;
    }

    static boolean e(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.m;
    }

    static boolean e(VastVideoViewController vastvideoviewcontroller, boolean flag)
    {
        vastvideoviewcontroller.r = flag;
        return flag;
    }

    static boolean f(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.n;
    }

    static boolean g(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.o;
    }

    static boolean h(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.p;
    }

    static int i(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.k;
    }

    static bj j(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.d;
    }

    private void k()
    {
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        org.apache.http.client.methods.HttpGet httpget = HttpClient.initializeHttpGet(c.getImageUrl(), h());
        AsyncTasks.safeExecuteOnExecutor(new DownloadTask(this), new HttpUriRequest[] {
            httpget
        });
        return;
        Exception exception;
        exception;
        MoPubLog.d("Failed to download companion ad", exception);
        return;
    }

    static boolean k(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.n();
    }

    private Runnable l()
    {
        return new Runnable() {

            final VastVideoViewController a;

            public void run()
            {
                float f1 = VastVideoViewController.d(a).getDuration();
                float f2 = VastVideoViewController.d(a).getCurrentPosition();
                if (f1 > 0.0F)
                {
                    float f3 = f2 / f1;
                    if (!VastVideoViewController.e(a) && f2 >= 1000F)
                    {
                        VastVideoViewController.a(a, true);
                        HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getStartTrackers(), a.h());
                    }
                    if (!VastVideoViewController.f(a) && f3 > 0.25F)
                    {
                        VastVideoViewController.b(a, true);
                        HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getFirstQuartileTrackers(), a.h());
                    }
                    if (!VastVideoViewController.g(a) && f3 > 0.5F)
                    {
                        VastVideoViewController.c(a, true);
                        HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getMidpointTrackers(), a.h());
                    }
                    if (!VastVideoViewController.h(a) && f3 > 0.75F)
                    {
                        VastVideoViewController.d(a, true);
                        HttpClient.makeTrackingHttpRequest(VastVideoViewController.b(a).getThirdQuartileTrackers(), a.h());
                    }
                    if (VastVideoViewController.a(a, VastVideoViewController.d(a).getDuration()))
                    {
                        VastVideoViewController.j(a).b(VastVideoViewController.i(a) - VastVideoViewController.d(a).getCurrentPosition());
                    }
                    if (VastVideoViewController.k(a))
                    {
                        VastVideoViewController.l(a);
                    }
                }
                VastVideoViewController.j(a).a(VastVideoViewController.d(a).getDuration() - VastVideoViewController.d(a).getCurrentPosition());
                if (VastVideoViewController.m(a))
                {
                    VastVideoViewController.o(a).postDelayed(VastVideoViewController.n(a), 50L);
                }
            }

            
            {
                a = VastVideoViewController.this;
                super();
            }
        };
    }

    static void l(VastVideoViewController vastvideoviewcontroller)
    {
        vastvideoviewcontroller.m();
    }

    private void m()
    {
        l = true;
        d.a();
    }

    static boolean m(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.j;
    }

    static Runnable n(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.i;
    }

    private boolean n()
    {
        return !l && e.getCurrentPosition() > k;
    }

    static Handler o(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.h;
    }

    private boolean o()
    {
        return l;
    }

    private void p()
    {
        if (!j)
        {
            j = true;
            h.post(i);
        }
    }

    static void p(VastVideoViewController vastvideoviewcontroller)
    {
        vastvideoviewcontroller.q();
    }

    static ImageView q(VastVideoViewController vastvideoviewcontroller)
    {
        return vastvideoviewcontroller.f;
    }

    private void q()
    {
        if (j)
        {
            j = false;
            h.removeCallbacks(i);
        }
    }

    void a()
    {
        super.a();
        g().onSetRequestedOrientation(0);
        a("com.mopub.action.interstitial.show");
        k();
    }

    void a(int i1, int j1, Intent intent)
    {
        if (i1 == 1 && j1 == -1)
        {
            g().onFinish();
        }
    }

    boolean a(MediaPlayer mediaplayer, int i1, int j1)
    {
        if (!VersionCode.currentApiLevel().isBelow(VersionCode.JELLY_BEAN) || i1 != 1 || j1 != 0x80000000 || s >= 1) goto _L2; else goto _L1
_L1:
        Object obj = null;
        FileInputStream fileinputstream;
        mediaplayer.reset();
        fileinputstream = new FileInputStream(new File(b.getDiskMediaFileUrl()));
        mediaplayer.setDataSource(fileinputstream.getFD());
        mediaplayer.prepareAsync();
        e.start();
        Streams.closeStream(fileinputstream);
        s = 1 + s;
        return true;
        Exception exception1;
        exception1;
        Object obj1 = null;
_L6:
        Streams.closeStream(((java.io.Closeable) (obj1)));
        s = 1 + s;
        return false;
        Exception exception;
        exception;
_L4:
        Streams.closeStream(((java.io.Closeable) (obj)));
        s = 1 + s;
        throw exception;
_L2:
        return false;
        exception;
        obj = fileinputstream;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception2;
        exception2;
        obj1 = fileinputstream;
        if (true) goto _L6; else goto _L5
_L5:
    }

    VideoView b()
    {
        return e;
    }

    void c()
    {
        q();
        q = e.getCurrentPosition();
        e.pause();
    }

    void d()
    {
        s = 0;
        p();
        e.seekTo(q);
        if (!r)
        {
            e.start();
        }
    }

    void e()
    {
        q();
        a("com.mopub.action.interstitial.dismiss");
    }

    boolean f()
    {
        return l;
    }

    public void onComplete(String s1, DownloadResponse downloadresponse)
    {
        if (downloadresponse != null && downloadresponse.getStatusCode() == 200)
        {
            Bitmap bitmap = HttpResponses.asBitmap(downloadresponse);
            if (bitmap != null)
            {
                int i1 = Dips.dipsToIntPixels(bitmap.getWidth(), h());
                int j1 = Dips.dipsToIntPixels(bitmap.getHeight(), h());
                int k1 = f.getMeasuredWidth();
                int l1 = f.getMeasuredHeight();
                if (i1 < k1 && j1 < l1)
                {
                    f.getLayoutParams().width = i1;
                    f.getLayoutParams().height = j1;
                }
                f.setImageBitmap(bitmap);
                f.setOnClickListener(new android.view.View.OnClickListener() {

                    final VastVideoViewController a;

                    public void onClick(View view)
                    {
                        if (VastVideoViewController.c(a) != null)
                        {
                            VastVideoViewController.a(a, VastVideoViewController.c(a).getClickTrackers(), VastVideoViewController.c(a).getClickThroughUrl());
                        }
                    }

            
            {
                a = VastVideoViewController.this;
                super();
            }
                });
            }
        }
    }

    static 
    {
        a = new ThreadPoolExecutor(10, 50, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }
}
