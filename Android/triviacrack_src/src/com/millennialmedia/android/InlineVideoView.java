// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.VideoView;
import com.millennialmedia.a.a.e;
import java.io.Serializable;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMLayout, MMAdImplController, VideoAd, MMLog

class InlineVideoView extends VideoView
    implements Serializable
{

    Handler a;
    WeakReference b;
    InlineParams c;
    MediaController d;
    TransparentHandler e;
    private int f;

    public InlineVideoView(MMLayout mmlayout)
    {
        super(mmlayout.getContext());
        e = new TransparentHandler();
        setId(0x86c5ad);
        setFocusable(true);
        MMAdImplController.a(mmlayout.getContext());
        b = new WeakReference(mmlayout);
    }

    private void a(boolean flag)
    {
        if (!c.r)
        {
            seekTo(c.h);
            if (flag || c.m)
            {
                startInternal();
                if (a != null && !a.hasMessages(2))
                {
                    a.sendMessageDelayed(Message.obtain(a, 2), 500L);
                }
            }
        }
    }

    private void d(InlineParams inlineparams)
    {
        c = inlineparams;
    }

    private boolean l()
    {
        return !TextUtils.isEmpty(c.k) && VideoAd.a(getContext(), c.k);
    }

    private void m()
    {
        Utils.ThreadUtils.a(new DownloadRunnable());
    }

    private void n()
    {
        a = q();
        setVideoURI(o());
        setBackgroundColor(0xff000000);
        setClickable(true);
        setOnErrorListener(t());
        setOnCompletionListener(u());
        setOnPreparedListener(v());
        setOnTouchListener(p());
        if (c.m)
        {
            seekTo(c.h);
            startInternal();
            if (a != null && !a.hasMessages(2))
            {
                a.sendMessageDelayed(Message.obtain(a, 2), 500L);
            }
        }
        if (c.n)
        {
            d = new MediaController();
            setMediaController(d);
            d.show();
        }
        com.millennialmedia.android.MMLog.e("InlineVideoView", "Finished inserting inlineVideo player");
    }

    private Uri o()
    {
        if (l() && !c.t)
        {
            c.t = false;
            return VideoAd.b(getContext(), c.k);
        }
        if (!TextUtils.isEmpty(c.i))
        {
            c.t = true;
            return Uri.parse(c.i);
        } else
        {
            return null;
        }
    }

    private android.view.View.OnTouchListener p()
    {
        return new VideoTouchListener();
    }

    private Handler q()
    {
        return new VideoHandler();
    }

    private void r()
    {
        ViewGroup viewgroup = (ViewGroup)getParent();
        if (viewgroup != null)
        {
            viewgroup.removeView(this);
        }
    }

    private void s()
    {
        if (!e.hasMessages(4))
        {
            e.sendEmptyMessage(4);
        }
    }

    private android.media.MediaPlayer.OnErrorListener t()
    {
        return new VideoErrorListener();
    }

    private android.media.MediaPlayer.OnCompletionListener u()
    {
        return new VideoCompletionListener();
    }

    private android.media.MediaPlayer.OnPreparedListener v()
    {
        return new VideoPreparedListener();
    }

    private void w()
    {
        ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        requestFocus();
    }

    String a()
    {
        return (new e()).a(c);
    }

    void a(double d1)
    {
        MMLayout mmlayout = (MMLayout)b.get();
        if (mmlayout == null)
        {
            MMLog.d("InlineVideoView", "MMLayout weak reference broken");
        }
        mmlayout.b((new StringBuilder()).append("javascript:MMJS.inlineVideo.updateVideoSeekTime(").append(d1).append(");").toString());
    }

    void a(MediaPlayer mediaplayer)
    {
        if (a != null && a.hasMessages(2))
        {
            a.removeMessages(2);
        }
        c.r = true;
        c.h = f;
        if (c.h == -1)
        {
            c.h = 0;
        }
        e();
    }

    void a(Message message)
    {
        message.what;
        JVM INSTR tableswitch 4 5: default 28
    //                   4 29
    //                   5 69;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        if (isPlaying() && getCurrentPosition() > 0)
        {
            e.sendEmptyMessageDelayed(5, 100L);
            return;
        } else
        {
            e.sendEmptyMessageDelayed(4, 50L);
            return;
        }
_L3:
        if (isPlaying() && getCurrentPosition() > 0)
        {
            setBackgroundColor(0);
            if (b != null && b.get() != null)
            {
                ((MMLayout)b.get()).removeBlackView();
                return;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    void a(View view)
    {
        MMLayout mmlayout = (MMLayout)b.get();
        if (mmlayout == null) goto _L2; else goto _L1
_L1:
        setBackgroundColor(0xff000000);
        if (isPlaying())
        {
            c.h = getCurrentPosition();
        }
        if (!c.b) goto _L4; else goto _L3
_L3:
        c.b = false;
        if (c.q != 1) goto _L6; else goto _L5
_L5:
        Activity activity1 = (Activity)getContext();
        if (activity1 != null)
        {
            activity1.setRequestedOrientation(1);
        }
_L2:
        return;
_L6:
        boolean flag1 = isPlaying();
        stopPlayback();
        mmlayout.g();
        a(flag1);
        return;
_L4:
        c.q = getContext().getResources().getConfiguration().orientation;
        c.b = true;
        if (c.q != 2)
        {
            Activity activity = (Activity)getContext();
            if (activity != null)
            {
                activity.setRequestedOrientation(0);
                return;
            }
        } else
        {
            boolean flag = isPlaying();
            stopPlayback();
            mmlayout.h();
            a(flag);
            return;
        }
        if (true) goto _L2; else goto _L7
_L7:
    }

    void a(InlineParams inlineparams)
    {
        c.a = inlineparams.a;
        c.c = inlineparams.c;
        c.f = inlineparams.f;
        c.g = inlineparams.g;
    }

    void a(String s1)
    {
        if (isPlaying())
        {
            stopPlayback();
        }
        c.h = 0;
        setBackgroundColor(0xff000000);
        setVideoURI(Uri.parse(s1));
        startInternal();
    }

    boolean a(MediaPlayer mediaplayer, int i1, int j1)
    {
        if (a != null && a.hasMessages(2))
        {
            a.removeMessages(2);
        }
        MMLayout mmlayout = (MMLayout)b.get();
        if (mmlayout == null)
        {
            MMLog.d("InlineVideoView", "MMLayout weak reference broken");
            return false;
        } else
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("javascript:MMJS.setError(");
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i1);
            aobj[1] = Integer.valueOf(j1);
            mmlayout.b(stringbuilder.append(String.format("Error while playing, %d - %d", aobj)).append(");").toString());
            return true;
        }
    }

    boolean a(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 1)
        {
            MMLayout mmlayout = (MMLayout)b.get();
            if (mmlayout == null)
            {
                MMLog.d("InlineVideoView", "MMLayout weak reference broken");
                return false;
            }
            if (!TextUtils.isEmpty(c.l))
            {
                String s1 = (new StringBuilder()).append("javascript:").append(c.l).append("(%f,%f)").toString();
                Object aobj[] = new Object[2];
                aobj[0] = Float.valueOf(motionevent.getX());
                aobj[1] = Float.valueOf(motionevent.getY());
                mmlayout.b(String.format(s1, aobj));
            }
            if (c.n && d != null && !d.isShowing())
            {
                d.show();
                return true;
            }
        }
        return true;
    }

    void b(MediaPlayer mediaplayer)
    {
        if (c.m)
        {
            s();
        }
        seekTo(c.h);
        if (c.m || !c.o)
        {
            getHeight();
        } else
        {
            c.o = false;
        }
        f = getDuration();
    }

    void b(InlineParams inlineparams)
    {
        this;
        JVM INSTR monitorenter ;
        d(inlineparams);
        if (!TextUtils.isEmpty(c.j))
        {
            m();
        }
        if (!b()) goto _L2; else goto _L1
_L1:
        n();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.millennialmedia.android.MMLog.e("InlineVideoView", "The videoURI attribute was not specified on the video marker div.");
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    boolean b()
    {
        return !TextUtils.isEmpty(c.i) || l();
    }

    void c()
    {
        VideoAd.a(getContext(), c.j, c.k);
    }

    boolean c(InlineParams inlineparams)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        MMLayout mmlayout;
        a(inlineparams);
        com.millennialmedia.android.MMLog.e("InlineVideoView", "Called initInlineVideo inside reposition section code");
        flag = isPlaying();
        stopPlayback();
        mmlayout = (MMLayout)b.get();
        if (mmlayout == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        mmlayout.e();
        a(flag);
        this;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        throw exception;
    }

    void d()
    {
        int i1 = getCurrentPosition();
        if (i1 >= 0)
        {
            MMLog.b("InlineVideoView", (new StringBuilder()).append("Time is ").append(i1).toString());
            a(Math.floor((float)i1 / 1000F));
        }
    }

    void e()
    {
        if (f > 0)
        {
            MMLog.b("InlineVideoView", (new StringBuilder()).append("Time is ").append(f).toString());
            a(Math.ceil((float)f / 1000F));
        }
    }

    void f()
    {
        if (a != null && a.hasMessages(2))
        {
            a.removeMessages(2);
        }
        if (isPlaying())
        {
            stopPlayback();
        }
        setOnCompletionListener(null);
        setOnErrorListener(null);
        setOnPreparedListener(null);
        setOnTouchListener(null);
        r();
    }

    void g()
    {
        if (isPlaying()) goto _L2; else goto _L1
_L1:
        if (!c.s || o() == null) goto _L4; else goto _L3
_L3:
        c.s = false;
        setVideoURI(o());
        seekTo(0);
_L6:
        c.r = false;
        startInternal();
_L2:
        if (a != null && !a.hasMessages(2))
        {
            a.sendMessageDelayed(Message.obtain(a, 2), 500L);
        }
        return;
_L4:
        if (c.r)
        {
            seekTo(0);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public android.widget.RelativeLayout.LayoutParams getCustomLayoutParams()
    {
        if (c.b)
        {
            return new android.widget.RelativeLayout.LayoutParams(-1, -1);
        } else
        {
            android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams((int)(c.p * (float)c.f), (int)(c.p * (float)c.g));
            layoutparams.topMargin = (int)(c.p * (float)c.c);
            layoutparams.leftMargin = (int)(c.p * (float)c.a);
            MMLog.b("InlineVideoView", (new StringBuilder()).append("lp height = ").append(layoutparams.height).toString());
            return layoutparams;
        }
    }

    void h()
    {
        if (a != null && a.hasMessages(2))
        {
            a.removeMessages(2);
        }
        if (isPlaying())
        {
            c.s = true;
            c.h = 0;
            if (b != null && b.get() != null)
            {
                ((MMLayout)b.get()).addBlackView();
            }
            stopPlayback();
        }
    }

    void i()
    {
        if (a != null && a.hasMessages(2))
        {
            a.removeMessages(2);
        }
        if (isPlaying())
        {
            c.h = getCurrentPosition();
            pause();
        }
    }

    void j()
    {
        if (!isPlaying() && !c.r)
        {
            startInternal();
            if (a != null && !a.hasMessages(2))
            {
                a.sendMessageDelayed(Message.obtain(a, 2), 500L);
            }
        }
    }

    boolean k()
    {
        return c != null && c.t;
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof AdViewOverlayView.SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        } else
        {
            AdViewOverlayView.SavedState savedstate = (AdViewOverlayView.SavedState)parcelable;
            super.onRestoreInstanceState(savedstate.getSuperState());
            c.b(savedstate.a);
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        AdViewOverlayView.SavedState savedstate = new AdViewOverlayView.SavedState(super.onSaveInstanceState());
        if (isPlaying())
        {
            c.h = getCurrentPosition();
        }
        savedstate.a = a();
        return savedstate;
    }

    public void start()
    {
        s();
        w();
        super.start();
    }

    public void startInternal()
    {
        if (((PowerManager)getContext().getSystemService("power")).isScreenOn())
        {
            start();
        }
    }

    public void stopPlayback()
    {
        if (a != null && a.hasMessages(2))
        {
            a.removeMessages(2);
        }
        if (isPlaying())
        {
            c.h = 0;
        }
        super.stopPlayback();
    }

    public String toString()
    {
        return c.toString();
    }

    private class TransparentHandler extends Handler
    {

        private WeakReference a;

        public void handleMessage(Message message)
        {
            InlineVideoView inlinevideoview = (InlineVideoView)a.get();
            if (inlinevideoview != null)
            {
                inlinevideoview.a(message);
            }
        }

        public TransparentHandler()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }


    private class InlineParams
    {

        int a;
        boolean b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        String i;
        String j;
        String k;
        String l;
        boolean m;
        boolean n;
        boolean o;
        float p;
        int q;
        boolean r;
        boolean s;
        boolean t;

        static InlineParams a(String s1)
        {
            return (InlineParams)(new e()).a(s1, com/millennialmedia/android/InlineVideoView$InlineParams);
        }

        void b(String s1)
        {
            InlineParams inlineparams = (InlineParams)(new e()).a(s1, com/millennialmedia/android/InlineVideoView$InlineParams);
            a = inlineparams.a;
            c = inlineparams.c;
            d = inlineparams.d;
            e = inlineparams.e;
            f = inlineparams.f;
            g = inlineparams.g;
            h = inlineparams.h;
            i = inlineparams.i;
            j = inlineparams.j;
            k = inlineparams.k;
            l = inlineparams.l;
            m = inlineparams.m;
            n = inlineparams.n;
            o = inlineparams.o;
            p = inlineparams.p;
            b = inlineparams.b;
            q = inlineparams.q;
            r = inlineparams.r;
            MMLog.b("InlineVideoView", (new StringBuilder()).append("gson*****").append(s1).toString());
            MMLog.b("InlineVideoView", (new StringBuilder()).append("PARAMS*****").append(inlineparams).toString());
        }

        public String toString()
        {
            Object aobj[] = new Object[7];
            aobj[0] = k;
            aobj[1] = Integer.valueOf(a);
            aobj[2] = Integer.valueOf(c);
            aobj[3] = Integer.valueOf(d);
            aobj[4] = Integer.valueOf(e);
            aobj[5] = Integer.valueOf(h);
            aobj[6] = Boolean.valueOf(m);
            return String.format("%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay", aobj);
        }

        InlineParams(Map map, Context context)
        {
            o = true;
            if (map.get("x") != null)
            {
                a = (int)Float.parseFloat((String)map.get("x"));
            }
            if (map.get("y") != null)
            {
                c = (int)Float.parseFloat((String)map.get("y"));
            }
            if (map.get("width") != null)
            {
                f = (int)Float.parseFloat((String)map.get("width"));
            }
            if (map.get("height") != null)
            {
                g = (int)Float.parseFloat((String)map.get("height"));
            }
            i = (String)map.get("streamVideoURI");
            j = (String)map.get("cachedVideoURI");
            k = (String)map.get("cachedVideoID");
            if (map.get("autoPlay") != null)
            {
                m = Boolean.parseBoolean((String)map.get("autoPlay"));
            }
            if (map.get("showControls") != null)
            {
                n = Boolean.parseBoolean((String)map.get("showControls"));
            }
            if (map.get("bodyWidth") != null)
            {
                d = (int)Float.parseFloat((String)map.get("bodyWidth"));
            }
            if (map.get("bodyHeight") != null)
            {
                e = (int)Float.parseFloat((String)map.get("bodyHeight"));
            }
            l = (String)map.get("touchCallback");
            p = context.getResources().getDisplayMetrics().density;
        }
    }


    private class DownloadRunnable
        implements Runnable
    {

        private WeakReference a;

        public void run()
        {
            InlineVideoView inlinevideoview = (InlineVideoView)a.get();
            if (inlinevideoview != null)
            {
                inlinevideoview.c();
            }
        }

        public DownloadRunnable()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }


    private class MediaController extends android.widget.MediaController
    {

        BitmapDrawable a;
        BitmapDrawable b;
        private WeakReference c;

        public void setAnchorView(View view)
        {
            super.setAnchorView(view);
            Button button = new Button(getContext());
            InlineVideoView inlinevideoview;
            if (a == null)
            {
                try
                {
                    a = new BitmapDrawable(new ByteArrayInputStream(Base64.decode("iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII=")));
                }
                catch (Exception exception1)
                {
                    MMLog.a("InlineVideoView", "Exception setting image anchorView inDrawable:", exception1);
                }
            }
            if (b == null)
            {
                try
                {
                    b = new BitmapDrawable(new ByteArrayInputStream(Base64.decode("iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC")));
                }
                catch (Exception exception)
                {
                    MMLog.a("InlineVideoView", "Exception setting image anchorView outDrawable:", exception);
                }
            }
            inlinevideoview = (InlineVideoView)c.get();
            if (inlinevideoview != null)
            {
                class MediaClickListener
                    implements android.view.View.OnClickListener
                {

                    private WeakReference a;

                    public void onClick(View view1)
                    {
                        InlineVideoView inlinevideoview1 = (InlineVideoView)a.get();
                        if (inlinevideoview1 != null)
                        {
                            inlinevideoview1.a(view1);
                        }
                    }

                public MediaClickListener()
                {
                    a = new WeakReference(InlineVideoView.this);
                }
                }

                android.widget.FrameLayout.LayoutParams layoutparams;
                if (inlinevideoview.c.b)
                {
                    button.setBackgroundDrawable(a);
                } else
                {
                    button.setBackgroundDrawable(b);
                }
                button.setOnClickListener(inlinevideoview. new MediaClickListener());
            }
            layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, 5);
            layoutparams.setMargins(0, 20, 10, 0);
            addView(button, layoutparams);
        }

        public MediaController()
        {
            super(getContext());
            c = new WeakReference(InlineVideoView.this);
        }
    }


    private class VideoTouchListener
        implements android.view.View.OnTouchListener
    {

        private WeakReference a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            InlineVideoView inlinevideoview = (InlineVideoView)a.get();
            if (inlinevideoview != null)
            {
                return inlinevideoview.a(view, motionevent);
            } else
            {
                return true;
            }
        }

        public VideoTouchListener()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }


    private class VideoHandler extends Handler
    {

        private WeakReference a;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 2 2: default 24
        //                       2 25;
               goto _L1 _L2
_L1:
            InlineVideoView inlinevideoview;
            return;
_L2:
            if ((inlinevideoview = (InlineVideoView)a.get()) != null)
            {
                if (inlinevideoview.isPlaying())
                {
                    inlinevideoview.d();
                }
                inlinevideoview.a.sendMessageDelayed(Message.obtain(inlinevideoview.a, 2), 500L);
                return;
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        public VideoHandler()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }


    private class VideoErrorListener
        implements android.media.MediaPlayer.OnErrorListener
    {

        private WeakReference a;

        public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
        {
            InlineVideoView inlinevideoview = (InlineVideoView)a.get();
            if (inlinevideoview != null)
            {
                inlinevideoview.a(mediaplayer, i1, j1);
            }
            return true;
        }

        public VideoErrorListener()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }


    private class VideoCompletionListener
        implements android.media.MediaPlayer.OnCompletionListener
    {

        private WeakReference a;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            InlineVideoView inlinevideoview = (InlineVideoView)a.get();
            if (inlinevideoview != null)
            {
                inlinevideoview.a(mediaplayer);
            }
        }

        public VideoCompletionListener()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }


    private class VideoPreparedListener
        implements android.media.MediaPlayer.OnPreparedListener
    {

        private WeakReference a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            InlineVideoView inlinevideoview = (InlineVideoView)a.get();
            if (inlinevideoview != null)
            {
                inlinevideoview.b(mediaplayer);
            }
        }

        public VideoPreparedListener()
        {
            a = new WeakReference(InlineVideoView.this);
        }
    }

}
