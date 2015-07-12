// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.admarvel.android.util.Logging;
import java.io.IOException;
import java.lang.ref.WeakReference;

// Referenced classes of package com.admarvel.android.ads:
//            ab, AdMarvelVideoActivity

class p extends SurfaceView
    implements android.widget.MediaController.MediaPlayerControl
{

    private android.media.MediaPlayer.OnCompletionListener A = new android.media.MediaPlayer.OnCompletionListener() {

        final p a;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            p.c(a, 5);
            p.d(a, 5);
            if (p.j(a) != null)
            {
                p.j(a).onCompletion(p.d(a));
            }
        }

            
            {
                a = p.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnSeekCompleteListener B = new android.media.MediaPlayer.OnSeekCompleteListener() {

        final p a;

        public void onSeekComplete(MediaPlayer mediaplayer)
        {
            if (p.e(a) != null)
            {
                p.e(a).k();
            }
        }

            
            {
                a = p.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnErrorListener C = new android.media.MediaPlayer.OnErrorListener() {

        final p a;

        public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
        {
            p.c(a, -1);
            p.d(a, -1);
            if (p.e(a) != null)
            {
                p.e(a).k();
            }
            if (p.k(a) != null)
            {
                if (!p.k(a).onError(p.d(a), i1, j1));
            }
            return true;
        }

            
            {
                a = p.this;
                super();
            }
    };
    private android.media.MediaPlayer.OnBufferingUpdateListener D = new android.media.MediaPlayer.OnBufferingUpdateListener() {

        final p a;

        public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
        {
            p.e(a, i1);
        }

            
            {
                a = p.this;
                super();
            }
    };
    android.media.MediaPlayer.OnVideoSizeChangedListener a = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

        final p a;

        public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
        {
            p.a(a, mediaplayer.getVideoWidth());
            p.b(a, mediaplayer.getVideoHeight());
            if (p.a(a) != 0 && p.b(a) != 0)
            {
                a.getHolder().setFixedSize(p.a(a), p.b(a));
            }
        }

            
            {
                a = p.this;
                super();
            }
    };
    android.media.MediaPlayer.OnPreparedListener b = new android.media.MediaPlayer.OnPreparedListener() {

        final p a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            int i1;
            p.c(a, 2);
            p.a(a, p.b(a, p.c(a, true)));
            if (p.c(a) != null)
            {
                p.c(a).onPrepared(p.d(a));
            }
            if (p.e(a) != null)
            {
                p.e(a).k();
            }
            p.a(a, mediaplayer.getVideoWidth());
            p.b(a, mediaplayer.getVideoHeight());
            i1 = p.f(a);
            if (i1 != 0)
            {
                a.seekTo(i1);
            }
            if (p.a(a) == 0 || p.b(a) == 0) goto _L2; else goto _L1
_L1:
            a.getHolder().setFixedSize(p.a(a), p.b(a));
            if (p.g(a) != p.a(a) || p.h(a) != p.b(a)) goto _L4; else goto _L3
_L3:
            if (p.i(a) != 3) goto _L6; else goto _L5
_L5:
            a.start();
_L4:
            return;
_L6:
            if (!a.isPlaying() && i1 == 0 && a.getCurrentPosition() > 0)
            {
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (p.i(a) == 3)
            {
                a.start();
                return;
            }
            if (true) goto _L4; else goto _L7
_L7:
        }

            
            {
                a = p.this;
                super();
            }
    };
    android.view.SurfaceHolder.Callback c = new android.view.SurfaceHolder.Callback() {

        final p a;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
        {
            boolean flag = true;
            p.f(a, j1);
            p.g(a, k1);
            boolean flag1;
            if (p.i(a) == 3)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (p.a(a) != j1 || p.b(a) != k1)
            {
                flag = false;
            }
            if (p.d(a) != null && flag1 && flag)
            {
                if (p.f(a) != 0)
                {
                    a.seekTo(p.f(a));
                }
                a.start();
            }
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            p.a(a, surfaceholder);
            if (p.l(a) != null)
            {
                AdMarvelVideoActivity admarvelvideoactivity = (AdMarvelVideoActivity)p.l(a).get();
                if (admarvelvideoactivity != null && admarvelvideoactivity.i != AdMarvelVideoActivity.k.d && admarvelvideoactivity.i != AdMarvelVideoActivity.k.e && admarvelvideoactivity.i != AdMarvelVideoActivity.k.f)
                {
                    p.m(a);
                }
                return;
            } else
            {
                p.m(a);
                return;
            }
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            p.a(a, null);
            a.a(true);
        }

            
            {
                a = p.this;
                super();
            }
    };
    private int d;
    private Uri e;
    private int f;
    private int g;
    private int h;
    private SurfaceHolder i;
    private MediaPlayer j;
    private int k;
    private int l;
    private int m;
    private int n;
    private android.media.MediaPlayer.OnCompletionListener o;
    private android.media.MediaPlayer.OnPreparedListener p;
    private int q;
    private android.media.MediaPlayer.OnErrorListener r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private Context w;
    private a x;
    private int y;
    private final WeakReference z;

    public p(Context context)
    {
        super(context);
        d = 0;
        g = 0;
        h = 0;
        i = null;
        j = null;
        y = 0;
        w = context;
        z = null;
        g();
    }

    public p(AdMarvelVideoActivity admarvelvideoactivity, Context context)
    {
        super(context);
        d = 0;
        g = 0;
        h = 0;
        i = null;
        j = null;
        y = 0;
        w = context;
        z = new WeakReference(admarvelvideoactivity);
        g();
    }

    private int a(long l1)
    {
        return (int)l1 / 1000;
    }

    static int a(p p1)
    {
        return p1.k;
    }

    static int a(p p1, int i1)
    {
        p1.k = i1;
        return i1;
    }

    static SurfaceHolder a(p p1, SurfaceHolder surfaceholder)
    {
        p1.i = surfaceholder;
        return surfaceholder;
    }

    static boolean a(p p1, boolean flag)
    {
        p1.t = flag;
        return flag;
    }

    static int b(p p1)
    {
        return p1.l;
    }

    static int b(p p1, int i1)
    {
        p1.l = i1;
        return i1;
    }

    static boolean b(p p1, boolean flag)
    {
        p1.u = flag;
        return flag;
    }

    static int c(p p1, int i1)
    {
        p1.g = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnPreparedListener c(p p1)
    {
        return p1.p;
    }

    static boolean c(p p1, boolean flag)
    {
        p1.v = flag;
        return flag;
    }

    static int d(p p1, int i1)
    {
        p1.h = i1;
        return i1;
    }

    static MediaPlayer d(p p1)
    {
        return p1.j;
    }

    static int e(p p1, int i1)
    {
        p1.q = i1;
        return i1;
    }

    static a e(p p1)
    {
        return p1.x;
    }

    static int f(p p1)
    {
        return p1.s;
    }

    static int f(p p1, int i1)
    {
        p1.m = i1;
        return i1;
    }

    static int g(p p1)
    {
        return p1.m;
    }

    static int g(p p1, int i1)
    {
        p1.n = i1;
        return i1;
    }

    private void g()
    {
        k = 0;
        l = 0;
        getHolder().addCallback(c);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        g = 0;
        h = 0;
    }

    static int h(p p1)
    {
        return p1.n;
    }

    private void h()
    {
        if (e != null && i != null)
        {
            if (!ab.k(w))
            {
                if (x != null)
                {
                    x.l();
                    return;
                }
            } else
            {
                a(false);
                try
                {
                    j = new MediaPlayer();
                    j.setOnPreparedListener(b);
                    j.setOnVideoSizeChangedListener(a);
                    f = -1;
                    j.setOnCompletionListener(A);
                    j.setOnErrorListener(C);
                    j.setOnBufferingUpdateListener(D);
                    j.setOnSeekCompleteListener(B);
                    q = 0;
                    j.setDataSource(w, e);
                    j.setDisplay(i);
                    j.setAudioStreamType(3);
                    j.setScreenOnWhilePlaying(true);
                    j.prepareAsync();
                    g = 1;
                    return;
                }
                catch (IOException ioexception)
                {
                    g = -1;
                    h = -1;
                    C.onError(j, 1, 0);
                    return;
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    g = -1;
                }
                h = -1;
                C.onError(j, 1, 0);
                return;
            }
        }
    }

    static int i(p p1)
    {
        return p1.h;
    }

    private boolean i()
    {
        return j != null && g != -1 && g != 0 && g != 1;
    }

    static android.media.MediaPlayer.OnCompletionListener j(p p1)
    {
        return p1.o;
    }

    static android.media.MediaPlayer.OnErrorListener k(p p1)
    {
        return p1.r;
    }

    static WeakReference l(p p1)
    {
        return p1.z;
    }

    static void m(p p1)
    {
        p1.h();
    }

    public void a()
    {
        try
        {
            if (j != null)
            {
                j.stop();
                j.reset();
                j.release();
                j = null;
                g = 0;
                h = 0;
                if (x != null)
                {
                    x.i();
                }
            }
            return;
        }
        catch (Exception exception)
        {
            if (x != null)
            {
                x.m();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
    }

    public void a(int i1)
    {
        if (!ab.k(w))
        {
            if (x != null)
            {
                x.l();
            }
            return;
        }
        if (j == null)
        {
            s = i1;
            h();
            return;
        } else
        {
            j.seekTo(i1);
            return;
        }
    }

    public void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        o = oncompletionlistener;
    }

    public void a(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        r = onerrorlistener;
    }

    public void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        p = onpreparedlistener;
    }

    public void a(Uri uri)
    {
        try
        {
            if (j != null)
            {
                Logging.log("AdMarvelVideoView-ResetMedia Player");
                j.reset();
            }
            e = uri;
            s = 0;
            h();
            requestLayout();
            invalidate();
            return;
        }
        catch (Exception exception)
        {
            if (x != null)
            {
                x.m();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
    }

    public void a(a a1)
    {
        x = a1;
    }

    public void a(boolean flag)
    {
        try
        {
            if (j == null)
            {
                break MISSING_BLOCK_LABEL_40;
            }
            j.reset();
            j.release();
            j = null;
            g = 0;
        }
        catch (Exception exception)
        {
            if (x != null)
            {
                x.m();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        h = 0;
    }

    public void b()
    {
        if (i())
        {
            j.setVolume(0.0F, 0.0F);
        }
    }

    public void c()
    {
        if (i())
        {
            j.setVolume(1.0F, 1.0F);
        }
    }

    public boolean canPause()
    {
        return t;
    }

    public boolean canSeekBackward()
    {
        return u;
    }

    public boolean canSeekForward()
    {
        return v;
    }

    public void d()
    {
        y = getCurrentPosition();
    }

    public void e()
    {
        if (y > 0)
        {
            if (a(y) == a(getCurrentPosition()))
            {
                start();
                if (x != null)
                {
                    x.k();
                }
            } else
            {
                a(y);
            }
            if (x != null)
            {
                x.j();
            }
            return;
        } else
        {
            start();
            return;
        }
    }

    public int f()
    {
        return d;
    }

    public int getBufferPercentage()
    {
        if (j != null)
        {
            return q;
        } else
        {
            return 0;
        }
    }

    public int getCurrentPosition()
    {
        if (i())
        {
            int i1 = j.getCurrentPosition();
            d = i1;
            return i1;
        } else
        {
            return 0;
        }
    }

    public int getDuration()
    {
        if (i())
        {
            if (f > 0)
            {
                return f;
            } else
            {
                f = j.getDuration();
                return f;
            }
        } else
        {
            f = -1;
            return f;
        }
    }

    public boolean isPlaying()
    {
        return i() && j.isPlaying();
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        k1 = getDefaultSize(k, i1);
        l1 = getDefaultSize(l, j1);
        if (k <= 0 || l <= 0) goto _L2; else goto _L1
_L1:
        if (l1 * k <= k1 * l) goto _L4; else goto _L3
_L3:
        l1 = (k1 * l) / k;
_L2:
        setMeasuredDimension(k1, l1);
        return;
_L4:
        if (l1 * k < k1 * l)
        {
            k1 = (l1 * k) / l;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (x != null)
        {
            x.n();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        return false;
    }

    public void pause()
    {
        try
        {
            g = 4;
            y = getCurrentPosition();
            if (i() && j.isPlaying())
            {
                j.pause();
                if (x != null)
                {
                    x.h();
                }
            }
            h = 4;
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            if (x != null)
            {
                x.m();
            }
            Logging.log(Log.getStackTraceString(illegalstateexception));
            return;
        }
    }

    public void seekTo(int i1)
    {
        if (!ab.k(w))
        {
            if (x != null)
            {
                x.l();
            }
            return;
        }
        if (i())
        {
            j.seekTo(i1);
            s = 0;
            return;
        } else
        {
            s = i1;
            return;
        }
    }

    public void start()
    {
        try
        {
            if (i())
            {
                j.start();
                g = 3;
            }
            h = 3;
            y = 0;
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            if (x != null)
            {
                x.m();
            }
            Logging.log(Log.getStackTraceString(illegalstateexception));
            return;
        }
    }

    private class a
    {

        public abstract void h();

        public abstract void i();

        public abstract void j();

        public abstract void k();

        public abstract void l();

        public abstract void m();

        public abstract void n();
    }

}
