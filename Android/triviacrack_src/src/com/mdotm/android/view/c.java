// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.app.ProgressDialog;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.widget.VideoView;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;
import com.mdotm.android.e.f;

class c extends VideoView
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener
{

    b a;
    com.mdotm.android.c.c b;
    Context c;
    ProgressDialog d;
    boolean e;
    boolean f;
    private boolean g;

    public c(Context context, b b1, com.mdotm.android.c.c c1)
    {
        super(context);
        g = false;
        e = false;
        f = false;
        c = context;
        a = b1;
        b = c1;
        e = false;
        f = false;
        g = false;
        d = new ProgressDialog(context);
        d.setMessage("Loading...");
        d.setCanceledOnTouchOutside(false);
        d.show();
        requestFocus();
        setOnPreparedListener(this);
        setOnCompletionListener(this);
        setOnErrorListener(this);
        setVideoPath(b1.d());
        setFocusable(true);
    }

    static void a(c c1, boolean flag)
    {
        c1.g = flag;
    }

    public void a()
    {
        if (isPlaying())
        {
            pause();
        }
    }

    public void a(Handler handler)
    {
        com.mdotm.android.e.d.b(this, "Stop video playback");
        if (isPlaying())
        {
            stopPlayback();
        }
        if (!f && !g)
        {
            com.mdotm.android.e.d.b(this, "Call report impression video resource");
            handler.post(new Runnable() {

                final c a;

                public void run()
                {
                    com.mdotm.android.e.d.b(this, "Call report impression image");
                    com.mdotm.android.e.f.a().a(a.a.c(), a.c);
                    c.a(a, true);
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
    }

    public void b()
    {
        if (!isPlaying())
        {
            start();
        }
    }

    public boolean c()
    {
        return e;
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        com.mdotm.android.e.d.b(this, "On completion of video");
        b.e();
    }

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        com.mdotm.android.e.d.b(this, (new StringBuilder("On error playing  video ")).append(i).append(" extra ").append(j).toString());
        f = true;
        if (d != null && d.isShowing())
        {
            d.dismiss();
        }
        b.f();
        return true;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        com.mdotm.android.e.d.b(this, "onPrepared");
        e = true;
        d.dismiss();
        mediaplayer.start();
    }
}
