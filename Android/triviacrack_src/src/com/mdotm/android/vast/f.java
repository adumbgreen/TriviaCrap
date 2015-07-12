// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.media.MediaPlayer;
import android.os.Handler;
import android.widget.VideoView;
import com.mdotm.android.c.b;
import com.mdotm.android.c.c;
import com.mdotm.android.e.d;
import java.util.Timer;

// Referenced classes of package com.mdotm.android.vast:
//            c, a, g, d, 
//            i

public class f extends VideoView
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    boolean a;
    boolean b;
    private Context c;
    private ProgressDialog d;
    private boolean e;
    private com.mdotm.android.vast.c f;
    private com.mdotm.android.vast.d g;
    private c h;
    private b i;
    private Timer j;
    private i k;
    private g l;
    private Handler m;

    public f(Context context, com.mdotm.android.vast.c c1, c c2, b b1, Handler handler)
    {
        super(context);
        e = false;
        a = false;
        b = false;
        c = context;
        f = c1;
        m = handler;
        g = f.b();
        h = c2;
        i = b1;
        e();
    }

    static g a(f f1)
    {
        return f1.l;
    }

    static void a(f f1, Timer timer)
    {
        f1.j = timer;
    }

    static Timer b(f f1)
    {
        return f1.j;
    }

    static b c(f f1)
    {
        return f1.i;
    }

    static com.mdotm.android.vast.d d(f f1)
    {
        return f1.g;
    }

    static Handler e(f f1)
    {
        return f1.m;
    }

    private void e()
    {
        a = false;
        b = false;
        e = false;
        d = new ProgressDialog(c);
        d.setMessage("Loading...");
        d.setCanceledOnTouchOutside(false);
        d.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final f a;

            public void onDismiss(DialogInterface dialoginterface)
            {
                if (!a.isPlaying())
                {
                    f.g(a).f();
                }
            }

            
            {
                a = f.this;
                super();
            }
        });
        d.show();
        String s = f.d().b();
        com.mdotm.android.e.d.b(this, (new StringBuilder("video path :: ")).append(s).toString());
        setZOrderOnTop(true);
        setVideoPath(s);
        requestFocus();
        setOnPreparedListener(this);
        setOnCompletionListener(this);
        setOnErrorListener(this);
        l = new g(this);
    }

    static Context f(f f1)
    {
        return f1.c;
    }

    private void f()
    {
        if (j != null)
        {
            j.cancel();
        }
        if (k != null)
        {
            c.getContentResolver().unregisterContentObserver(k);
        }
    }

    static c g(f f1)
    {
        return f1.h;
    }

    public boolean a()
    {
        return a;
    }

    public void b()
    {
        if (!isPlaying() && !l.h)
        {
            start();
            if (g != null)
            {
                com.mdotm.android.e.d.b(this, "Resume impression");
                com.mdotm.android.vast.g.a(l, g.j);
            }
            return;
        } else
        {
            com.mdotm.android.e.d.b(this, "Play called after one complete play");
            e();
            return;
        }
    }

    public void c()
    {
        if (isPlaying())
        {
            pause();
            if (g != null)
            {
                com.mdotm.android.e.d.b(this, "Pause impression event");
                com.mdotm.android.vast.g.a(l, g.i);
            }
        } else
        if (d != null && d.isShowing())
        {
            d.dismiss();
            return;
        }
    }

    public void d()
    {
        com.mdotm.android.e.d.b(this, "Stop video playback");
        if (isPlaying())
        {
            stopPlayback();
        }
        f();
        if (!b && !e)
        {
            com.mdotm.android.e.d.b(this, "Call report impression video resource");
            e = true;
        }
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        com.mdotm.android.e.d.b(this, "On completion of video");
        l.h = true;
        if (g != null)
        {
            com.mdotm.android.vast.g.a(l, g.f);
        }
        h.e();
        f();
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        com.mdotm.android.e.d.b(this, (new StringBuilder("On error playing  video ")).append(i1).append(" extra ").append(j1).toString());
        b = true;
        if (d != null && d.isShowing())
        {
            d.dismiss();
        }
        com.mdotm.android.vast.g.a(l, null);
        h.f();
        return true;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        com.mdotm.android.vast.g.a(l, getDuration());
        a = true;
        d.dismiss();
        start();
        i.b();
        if (g != null)
        {
            com.mdotm.android.e.d.b(this, "Start playing video");
            com.mdotm.android.vast.g.a(l, g.b);
        }
        if (g != null)
        {
            k = new i(c, m, g.g, g.h);
            c.getContentResolver().registerContentObserver(android.provider.Settings.System.CONTENT_URI, true, k);
        }
    }
}
