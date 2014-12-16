// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

// Referenced classes of package com.admarvel.android.ads:
//            ab, ac

class f extends TextureView
    implements android.view.TextureView.SurfaceTextureListener, android.widget.MediaController.MediaPlayerControl
{

    private static long I = 0x927c0L;
    private Context A;
    private int B;
    private final WeakReference C = null;
    private final boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    private c J;
    private android.media.MediaPlayer.OnCompletionListener K;
    private android.media.MediaPlayer.OnSeekCompleteListener L;
    private android.media.MediaPlayer.OnErrorListener M;
    private android.media.MediaPlayer.OnBufferingUpdateListener N;
    public b a;
    public a b;
    android.media.MediaPlayer.OnVideoSizeChangedListener c;
    android.media.MediaPlayer.OnPreparedListener d;
    private int e;
    private Uri f;
    private final Uri g;
    private int h;
    private boolean i;
    private int j;
    private int k;
    private SurfaceTexture l;
    private Surface m;
    private MediaPlayer n;
    private int o;
    private int p;
    private int q;
    private int r;
    private android.media.MediaPlayer.OnCompletionListener s;
    private android.media.MediaPlayer.OnPreparedListener t;
    private int u;
    private android.media.MediaPlayer.OnErrorListener v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    public f(Context context, boolean flag, String s1)
    {
        super(context);
        e = 0;
        i = true;
        j = 0;
        k = 0;
        l = null;
        m = null;
        n = null;
        B = 0;
        E = 0;
        F = false;
        G = false;
        H = false;
        c = new e();
        d = new d();
        K = new android.media.MediaPlayer.OnCompletionListener() {

            final f a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                f.a(a, 5);
                f.b(a, 5);
                f.d(a, false);
                if (f.g(a) != null)
                {
                    f.g(a).onCompletion(f.d(a));
                }
            }

            
            {
                a = f.this;
                super();
            }
        };
        L = new android.media.MediaPlayer.OnSeekCompleteListener() {

            final f a;

            public void onSeekComplete(MediaPlayer mediaplayer)
            {
                if (a.a != null)
                {
                    a.a.d();
                }
            }

            
            {
                a = f.this;
                super();
            }

            private class b
            {

                public abstract void a();

                public abstract void b();

                public abstract void c();

                public abstract void d();

                public abstract void e();

                public abstract void f();

                public abstract void g();
            }

        };
        M = new android.media.MediaPlayer.OnErrorListener() {

            final f a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                f.a(a, -1);
                f.b(a, -1);
                f.d(a, false);
                if (a.a != null)
                {
                    a.a.d();
                }
                if (!f.h(a))
                {
                    a.c();
                }
                if (f.i(a) != null)
                {
                    if (!f.i(a).onError(f.d(a), i1, j1));
                }
                return true;
            }

            
            {
                a = f.this;
                super();
            }
        };
        N = new android.media.MediaPlayer.OnBufferingUpdateListener() {

            final f a;

            public void onBufferingUpdate(MediaPlayer mediaplayer, int i1)
            {
                f.c(a, i1);
            }

            
            {
                a = f.this;
                super();
            }
        };
        A = context;
        D = flag;
        j();
        g = Uri.parse(s1);
        f = Uri.parse(s1);
    }

    static int a(f f1)
    {
        return f1.o;
    }

    static int a(f f1, int i1)
    {
        f1.j = i1;
        return i1;
    }

    static boolean a(f f1, boolean flag)
    {
        f1.x = flag;
        return flag;
    }

    static int b(f f1)
    {
        return f1.p;
    }

    static int b(f f1, int i1)
    {
        f1.k = i1;
        return i1;
    }

    static boolean b(f f1, boolean flag)
    {
        f1.y = flag;
        return flag;
    }

    static int c(f f1, int i1)
    {
        f1.u = i1;
        return i1;
    }

    static android.media.MediaPlayer.OnPreparedListener c(f f1)
    {
        return f1.t;
    }

    static boolean c(f f1, boolean flag)
    {
        f1.z = flag;
        return flag;
    }

    static MediaPlayer d(f f1)
    {
        return f1.n;
    }

    static boolean d(f f1, boolean flag)
    {
        f1.i = flag;
        return flag;
    }

    static int e(f f1)
    {
        return f1.w;
    }

    static int f(f f1)
    {
        return f1.k;
    }

    static android.media.MediaPlayer.OnCompletionListener g(f f1)
    {
        return f1.s;
    }

    static boolean h(f f1)
    {
        return f1.D;
    }

    static android.media.MediaPlayer.OnErrorListener i(f f1)
    {
        return f1.v;
    }

    private void j()
    {
        setSurfaceTextureListener(this);
        setWillNotDraw(false);
        o = 0;
        p = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        j = 0;
        k = 0;
    }

    private void k()
    {
        Logging.log("### openVideo");
        if (f != null && l != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (ab.k(A))
        {
            break; /* Loop/switch isn't completed */
        }
        if (a != null)
        {
            a.f();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        a(false);
        boolean flag;
        FileInputStream fileinputstream;
        try
        {
            n = new MediaPlayer();
            n.setOnPreparedListener(d);
            n.setOnVideoSizeChangedListener(c);
            h = -1;
            n.setOnCompletionListener(K);
            n.setOnErrorListener(M);
            n.setOnBufferingUpdateListener(N);
            n.setOnSeekCompleteListener(L);
            u = 0;
            flag = f.toString().startsWith("/");
        }
        catch (IOException ioexception)
        {
            Logging.log(Log.getStackTraceString(ioexception));
            j = -1;
            k = -1;
            M.onError(n, 1, 0);
            return;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Logging.log(Log.getStackTraceString(illegalargumentexception));
            j = -1;
            k = -1;
            M.onError(n, 1, 0);
            return;
        }
        if (!flag) goto _L5; else goto _L4
_L4:
        fileinputstream = new FileInputStream(new File(f.toString()));
        n.setDataSource(fileinputstream.getFD());
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_204;
        }
        fileinputstream.close();
_L6:
        m = new Surface(l);
        n.setSurface(m);
        n.setAudioStreamType(3);
        n.prepareAsync();
        j = 1;
        return;
        exception;
        fileinputstream = null;
_L7:
        if (fileinputstream == null)
        {
            break MISSING_BLOCK_LABEL_301;
        }
        fileinputstream.close();
        throw exception;
_L5:
        n.setDataSource(A, f);
          goto _L6
        exception;
          goto _L7
    }

    private boolean l()
    {
        return n != null && j != -1 && j != 0 && j != 1;
    }

    public Uri a()
    {
        return g;
    }

    String a(String s1)
    {
        Logging.log((new StringBuilder()).append("#### getCachedVideoUriPath url: ").append(s1).toString());
        File file = new File((new StringBuilder()).append(getContext().getDir("adm_cache_files", 0).getAbsolutePath()).append("/").append(d(s1)).toString());
        if (file.exists() && System.currentTimeMillis() - file.lastModified() < I)
        {
            Logging.log((new StringBuilder()).append("## getCachedVideoUriPath cached: ").append(file.getPath()).toString());
            return file.getPath();
        } else
        {
            return null;
        }
    }

    public void a(int i1, int j1, int k1, int l1)
    {
        o = i1;
        p = j1;
        q = k1;
        r = l1;
    }

    public void a(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        s = oncompletionlistener;
    }

    public void a(android.media.MediaPlayer.OnErrorListener onerrorlistener)
    {
        v = onerrorlistener;
    }

    public void a(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        t = onpreparedlistener;
    }

    public void a(Uri uri)
    {
        try
        {
            if (n != null)
            {
                n.reset();
                n.release();
                n = null;
            }
            f = uri;
            w = 0;
            k();
            requestLayout();
            invalidate();
            return;
        }
        catch (Exception exception)
        {
            if (a != null)
            {
                a.g();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
    }

    public void a(Uri uri, Boolean boolean1)
    {
        try
        {
            f = uri;
            w = 0;
            Logging.log("### setVideoURIForMrec");
            k();
            requestLayout();
            invalidate();
            return;
        }
        catch (Exception exception)
        {
            if (a != null)
            {
                a.g();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
    }

    public void a(a a1)
    {
        b = a1;
    }

    public void a(String s1, int i1)
    {
        if (E <= 5)
        {
            E = 1 + E;
            if (!b(s1) && !c(s1))
            {
                File file = getContext().getDir("adm_cache_files", 0);
                String s2 = (new StringBuilder()).append(file.getAbsolutePath()).append("/").append(d(s1)).toString();
                Logging.log((new StringBuilder()).append("#### tempPath ").append(s2).toString());
                if (ac.a() >= 11)
                {
                    J = new c(s1, s2, i1);
                    J.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    return;
                } else
                {
                    J = new c(s1, s2, i1);
                    J.execute(new Void[0]);
                    return;
                }
            }
        }
    }

    public void a(String s1, Boolean boolean1)
    {
        a(Uri.parse(s1), boolean1);
    }

    public void a(boolean flag)
    {
        try
        {
            if (n == null)
            {
                break MISSING_BLOCK_LABEL_40;
            }
            n.reset();
            n.release();
            n = null;
            j = 0;
        }
        catch (Exception exception)
        {
            if (a != null)
            {
                a.g();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        k = 0;
        if (m != null)
        {
            m.release();
            m = null;
        }
        return;
    }

    void b()
    {
        if (J != null)
        {
            J.cancel(true);
            J = null;
            Logging.log((new StringBuilder()).append("### ").append(J).append(" thread interuped ").toString());
        }
    }

    public boolean b(String s1)
    {
        Logging.log((new StringBuilder()).append("#### isVideoUriCached url: ").append(s1).toString());
        File file = new File((new StringBuilder()).append(getContext().getDir("adm_cache_files", 0).getAbsolutePath()).append("/").append(d(s1)).toString());
        boolean flag = file.exists();
        boolean flag1 = false;
        if (flag)
        {
            int i1 = System.currentTimeMillis() - file.lastModified() != I;
            flag1 = false;
            if (i1 < 0)
            {
                Logging.log((new StringBuilder()).append("## file cached: ").append(file.getPath()).toString());
                flag1 = true;
            }
        }
        return flag1;
    }

    public void c()
    {
        try
        {
            if (n != null)
            {
                n.reset();
                n.release();
                n = null;
                j = 0;
                k = 0;
                if (a != null)
                {
                    a.b();
                }
            }
            return;
        }
        catch (Exception exception)
        {
            if (a != null)
            {
                a.g();
            }
            Logging.log(Log.getStackTraceString(exception));
            return;
        }
    }

    public boolean c(String s1)
    {
        Logging.log((new StringBuilder()).append("#### isVideoUriProcessing url: ").append(s1).toString());
        File file = new File((new StringBuilder()).append(getContext().getDir("adm_cache_files", 0).getAbsolutePath()).append("/").append(d(s1)).append(".PROCESSING").toString());
        boolean flag = file.exists();
        boolean flag1 = false;
        if (flag)
        {
            int i1 = System.currentTimeMillis() - file.lastModified() != I;
            flag1 = false;
            if (i1 < 0)
            {
                Logging.log((new StringBuilder()).append("## file processing: ").append(file.getPath()).toString());
                flag1 = true;
            }
        }
        return flag1;
    }

    public boolean canPause()
    {
        return x;
    }

    public boolean canSeekBackward()
    {
        return y;
    }

    public boolean canSeekForward()
    {
        return z;
    }

    public String d(String s1)
    {
        byte abyte0[];
        StringBuffer stringbuffer;
        int i1;
        String s2;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(s1.getBytes());
            abyte0 = messagedigest.digest();
            stringbuffer = new StringBuffer();
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            nosuchalgorithmexception.printStackTrace();
            return "";
        }
        i1 = 0;
        if (i1 >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuffer.append(Integer.toHexString(0xff & abyte0[i1]));
        i1++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_33;
_L1:
        s2 = stringbuffer.toString();
        return s2;
    }

    public void d()
    {
        if (l())
        {
            n.setVolume(0.0F, 0.0F);
        }
    }

    public void e()
    {
        if (l())
        {
            n.setVolume(1.0F, 1.0F);
        }
    }

    public void e(String s1)
    {
        i = true;
        if (b(s1))
        {
            Logging.log((new StringBuilder()).append("##### playWithCacheOrLoad  using cached path: ").append(a(s1)).toString());
            a(a(s1), Boolean.valueOf(true));
            start();
            return;
        } else
        {
            Logging.log("##### playWithCacheOrLoad: call start to make video play after loading");
            a(s1, Boolean.valueOf(true));
            start();
            a(s1, 1);
            return;
        }
    }

    public void f()
    {
        i = true;
        if (b(g.toString()))
        {
            a(a(g.toString()), Boolean.valueOf(false));
            start();
            return;
        } else
        {
            a(g, Boolean.valueOf(false));
            start();
            a(g.toString(), 1);
            return;
        }
    }

    public void g()
    {
        Logging.log("### ResumeVideoIfPaused");
        if (B <= 0) goto _L2; else goto _L1
_L1:
        if (!b(g.toString()) || !i) goto _L4; else goto _L3
_L3:
        a(a(g.toString()), Boolean.valueOf(false));
        seekTo(B);
        k = 3;
_L5:
        if (a != null)
        {
            a.c();
        }
        return;
_L4:
        if (i)
        {
            a(g, Boolean.valueOf(false));
            start();
            a(g.toString(), 1);
        }
        if (true) goto _L5; else goto _L2
_L2:
        if (b(g.toString()))
        {
            a(a(g.toString()), Boolean.valueOf(false));
        } else
        {
            a(g);
        }
        start();
        return;
    }

    public int getBufferPercentage()
    {
        if (n != null)
        {
            return u;
        } else
        {
            return 0;
        }
    }

    public int getCurrentPosition()
    {
        if (l())
        {
            int i1 = n.getCurrentPosition();
            e = i1;
            return i1;
        } else
        {
            return 0;
        }
    }

    public int getDuration()
    {
        if (l())
        {
            if (h > 0)
            {
                return h;
            } else
            {
                h = n.getDuration();
                return h;
            }
        } else
        {
            h = -1;
            return h;
        }
    }

    public int h()
    {
        if (l())
        {
            e = n.getCurrentPosition();
            B = e;
            return e;
        } else
        {
            return B;
        }
    }

    public void i()
    {
        float f1 = getContext().getResources().getDisplayMetrics().density;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (o > 0 && p > 0)
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams((int)(f1 * (float)o), (int)(f1 * (float)p));
        } else
        {
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        }
        if (q >= 0)
        {
            if (r >= 0)
            {
                layoutparams.leftMargin = (int)(f1 * (float)q);
                layoutparams.topMargin = (int)(f1 * (float)r);
            } else
            {
                layoutparams.leftMargin = (int)(f1 * (float)q);
                layoutparams.addRule(15);
            }
        } else
        if (r >= 0)
        {
            layoutparams.topMargin = (int)(f1 * (float)r);
            layoutparams.addRule(14);
        } else
        {
            layoutparams.addRule(13);
        }
        setLayoutParams(layoutparams);
    }

    public boolean isPlaying()
    {
        return l() && n.isPlaying();
    }

    protected void onAttachedToWindow()
    {
        Logging.log("#### VideoView - onAttachedToWindow");
        F = false;
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow()
    {
        F = true;
        super.onDetachedFromWindow();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i1, int j1)
    {
        Logging.log((new StringBuilder()).append("#### VideoView - onSurfaceTextureAvailable: ").append(isAvailable()).toString());
        G = true;
        l = surfacetexture;
        if (j != 0)
        {
            k();
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        if (F && b != null)
        {
            Logging.log("#### VideoView - onSurfaceTextureDestroyed + windowDetached");
            b.a();
        }
        Logging.log("#### VideoView - onSurfaceTextureDestroyed");
        G = false;
        H = false;
        a(true);
        return false;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i1, int j1)
    {
        Logging.log("#### VideoView - onSurfaceTextureSizeChanged");
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (a != null)
        {
            a.e();
        }
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionevent)
    {
        return false;
    }

    public void pause()
    {
        j = 4;
        B = getCurrentPosition();
        if (!l() || !n.isPlaying()) goto _L2; else goto _L1
_L1:
        if (!D)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        n.pause();
_L3:
        if (a != null)
        {
            a.a();
        }
_L2:
        k = 4;
        return;
        try
        {
            c();
        }
        catch (IllegalStateException illegalstateexception)
        {
            if (a != null)
            {
                a.g();
            }
            Logging.log(Log.getStackTraceString(illegalstateexception));
            return;
        }
          goto _L3
    }

    public void seekTo(int i1)
    {
        if (!ab.k(A))
        {
            if (a != null)
            {
                a.f();
            }
            return;
        }
        if (l())
        {
            n.seekTo(i1);
            w = 0;
            return;
        } else
        {
            w = i1;
            return;
        }
    }

    public void start()
    {
        try
        {
            if (l())
            {
                n.start();
                j = 3;
            }
            k = 3;
            B = 0;
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            if (a != null)
            {
                a.g();
            }
            Logging.log(Log.getStackTraceString(illegalstateexception));
            return;
        }
    }


    private class e
        implements android.media.MediaPlayer.OnVideoSizeChangedListener
    {

        final f a;

        public void onVideoSizeChanged(MediaPlayer mediaplayer, int i1, int j1)
        {
            if (f.a(a) != 0 && f.b(a) != 0)
            {
                a.i();
            }
        }

        e()
        {
            a = f.this;
            super();
        }
    }


    private class d
        implements android.media.MediaPlayer.OnPreparedListener
    {

        final f a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            int i1;
            f.a(a, 2);
            f.a(a, f.b(a, f.c(a, true)));
            if (f.c(a) != null)
            {
                f.c(a).onPrepared(f.d(a));
            }
            if (a.a != null)
            {
                a.a.d();
            }
            i1 = f.e(a);
            if (i1 != 0)
            {
                a.seekTo(i1);
            }
            if (f.a(a) == 0 || f.b(a) == 0) goto _L2; else goto _L1
_L1:
            a.i();
            if (f.f(a) != 3) goto _L4; else goto _L3
_L3:
            a.start();
_L6:
            return;
_L4:
            if (!a.isPlaying() && i1 == 0 && a.getCurrentPosition() > 0)
            {
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (f.f(a) == 3)
            {
                a.start();
                return;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        d()
        {
            a = f.this;
            super();
        }
    }


    private class c extends AsyncTask
    {

        private final String a;
        private final String b;
        private FileOutputStream c;
        private int d;

        protected transient Boolean a(Void avoid[])
        {
            File file;
            if (isCancelled())
            {
                return Boolean.valueOf(false);
            }
            file = new File((new StringBuilder()).append(b).append(".PROCESSING").toString());
            if (file.exists())
            {
                return Boolean.valueOf(true);
            }
            file.deleteOnExit();
            InputStream inputstream;
            if (isCancelled())
            {
                if (file.exists())
                {
                    file.delete();
                }
                return Boolean.valueOf(false);
            }
            URLConnection urlconnection = (new URL(a)).openConnection();
            urlconnection.setConnectTimeout(3000);
            urlconnection.setReadTimeout(10000);
            urlconnection.connect();
            if (isCancelled())
            {
                if (file.exists())
                {
                    file.delete();
                }
                return Boolean.valueOf(false);
            }
            inputstream = urlconnection.getInputStream();
            if (inputstream == null)
            {
                try
                {
                    throw new RuntimeException("stream is null");
                }
                catch (Exception exception)
                {
                    Logging.log(Log.getStackTraceString(exception));
                }
                if (file.exists())
                {
                    file.delete();
                }
                return Boolean.valueOf(false);
            }
            byte abyte0[];
            if (isCancelled())
            {
                if (file.exists())
                {
                    file.delete();
                }
                return Boolean.valueOf(false);
            }
            if (file.exists())
            {
                return Boolean.valueOf(true);
            }
            c = new FileOutputStream(file);
            abyte0 = new byte[4096];
_L1:
            int i1;
            if (isCancelled())
            {
                break MISSING_BLOCK_LABEL_282;
            }
            i1 = inputstream.read(abyte0);
            if (i1 == -1)
            {
                break MISSING_BLOCK_LABEL_282;
            }
            c.write(abyte0, 0, i1);
              goto _L1
            if (isCancelled())
            {
                if (file.exists())
                {
                    file.delete();
                }
                return Boolean.valueOf(false);
            }
            File file1 = new File(b);
            if (file1.exists())
            {
                file1.delete();
            }
            file.renameTo(file1);
            if (file.exists())
            {
                file.delete();
            }
            inputstream.close();
            c.flush();
            c = null;
            return Boolean.valueOf(true);
        }

        protected void a(Boolean boolean1)
        {
            if (!boolean1.booleanValue() && d < 1)
            {
                if (ac.a() >= 11)
                {
                    Logging.log("#### onPostExecute");
                    (new c(a, b, 1)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } else
                {
                    (new c(a, b, 1)).execute(new Void[0]);
                }
            }
            super.onPostExecute(boolean1);
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

        protected void onCancelled()
        {
            File file = new File(b);
            if (file.exists())
            {
                file.delete();
            }
            super.onCancelled();
        }

        protected void onPostExecute(Object obj)
        {
            a((Boolean)obj);
        }

        public c(String s1, String s2, int i1)
        {
            d = 0;
            a = s1;
            b = s2;
            d = i1;
        }
    }


    private class a
    {

        public abstract void a();
    }

}
