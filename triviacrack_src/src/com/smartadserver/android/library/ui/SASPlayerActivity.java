// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.smartadserver.android.library.controller.mraid.SASMRAIDVideoConfig;
import com.smartadserver.android.library.g.a;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASVideoView

public class SASPlayerActivity extends Activity
{

    android.view.View.OnClickListener a;
    android.view.View.OnClickListener b;
    android.view.View.OnClickListener c;
    public android.media.MediaPlayer.OnCompletionListener d;
    private RelativeLayout e;
    private android.widget.RelativeLayout.LayoutParams f;
    private SASVideoView g;
    private ImageView h;
    private ImageView i;
    private SASMRAIDVideoConfig j;
    private ProgressBar k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private boolean q;

    public SASPlayerActivity()
    {
        a = new android.view.View.OnClickListener() {

            final SASPlayerActivity a;

            public void onClick(View view)
            {
                com.smartadserver.android.library.ui.SASPlayerActivity.a(a).stopPlayback();
                a.finish();
            }

            
            {
                a = SASPlayerActivity.this;
                super();
            }
        };
        b = new android.view.View.OnClickListener() {

            final SASPlayerActivity a;

            public void onClick(View view)
            {
                if (com.smartadserver.android.library.ui.SASPlayerActivity.a(a).isPlaying())
                {
                    SASPlayerActivity.i(a);
                    return;
                } else
                {
                    SASPlayerActivity.j(a);
                    return;
                }
            }

            
            {
                a = SASPlayerActivity.this;
                super();
            }
        };
        c = new android.view.View.OnClickListener() {

            final SASPlayerActivity a;

            public void onClick(View view)
            {
                if (com.smartadserver.android.library.ui.SASPlayerActivity.a(a).c())
                {
                    com.smartadserver.android.library.ui.SASPlayerActivity.a(a).b();
                    if (SASPlayerActivity.k(a) != null)
                    {
                        SASPlayerActivity.k(a).setImageBitmap(a.e);
                    }
                } else
                {
                    com.smartadserver.android.library.ui.SASPlayerActivity.a(a).a();
                    if (SASPlayerActivity.k(a) != null)
                    {
                        SASPlayerActivity.k(a).setImageBitmap(a.f);
                        return;
                    }
                }
            }

            
            {
                a = SASPlayerActivity.this;
                super();
            }
        };
        d = new android.media.MediaPlayer.OnCompletionListener() {

            final SASPlayerActivity a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                if (SASPlayerActivity.l(a) != null)
                {
                    SASPlayerActivity.l(a).setImageBitmap(a.c);
                }
                if (SASPlayerActivity.m(a).f())
                {
                    a.finish();
                } else
                if (SASPlayerActivity.m(a).c())
                {
                    SASPlayerActivity.j(a);
                    return;
                }
            }

            
            {
                a = SASPlayerActivity.this;
                super();
            }
        };
    }

    static SASVideoView a(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.g;
    }

    private void a()
    {
        ImageView imageview = com.smartadserver.android.library.ui.SASVideoView.a(getBaseContext(), a.g, 11, 10);
        android.widget.RelativeLayout.LayoutParams _tmp = (android.widget.RelativeLayout.LayoutParams)imageview.getLayoutParams();
        e.addView(imageview);
        imageview.setOnClickListener(a);
    }

    private void b()
    {
        if (j.d())
        {
            h = g.a(this, e, b);
        }
        if (j.a() || j.d())
        {
            i = g.b(this, e, c);
        }
    }

    static void b(SASPlayerActivity sasplayeractivity)
    {
        sasplayeractivity.f();
    }

    static int c(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.n;
    }

    private void c()
    {
        if (j.b())
        {
            d();
        }
    }

    static int d(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.o;
    }

    private void d()
    {
        if (h != null)
        {
            h.setImageBitmap(a.d);
        }
        g.start();
    }

    static int e(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.l;
    }

    private void e()
    {
        if (h != null)
        {
            h.setImageBitmap(a.c);
        }
        g.pause();
    }

    static int f(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.m;
    }

    private void f()
    {
        Display display = getWindowManager().getDefaultDisplay();
        int i1 = display.getWidth();
        int j1 = display.getHeight();
        boolean flag;
        if ((float)i1 / (float)j1 < j.h())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            l = i1;
            m = (int)((float)l / j.h());
            n = 0;
        } else
        {
            m = j1;
            l = (int)((float)m * j.h());
            n = (i1 - l) / 2;
        }
        o = (j1 - m) / 2;
    }

    static ProgressBar g(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.k;
    }

    static void h(SASPlayerActivity sasplayeractivity)
    {
        sasplayeractivity.c();
    }

    static void i(SASPlayerActivity sasplayeractivity)
    {
        sasplayeractivity.e();
    }

    static void j(SASPlayerActivity sasplayeractivity)
    {
        sasplayeractivity.d();
    }

    static ImageView k(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.i;
    }

    static ImageView l(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.h;
    }

    static SASMRAIDVideoConfig m(SASPlayerActivity sasplayeractivity)
    {
        return sasplayeractivity.j;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        Bundle bundle1 = getIntent().getExtras();
        q = bundle1.getBoolean("isCloseButtonVisible");
        e = new RelativeLayout(this) {

            final SASPlayerActivity a;

            protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
            {
                super.onLayout(flag, i1, j1, k1, l1);
                if (com.smartadserver.android.library.ui.SASPlayerActivity.a(a) != null)
                {
                    SASPlayerActivity.b(a);
                    com.smartadserver.android.library.ui.SASPlayerActivity.a(a).a(com.smartadserver.android.library.ui.SASPlayerActivity.c(a), SASPlayerActivity.d(a), SASPlayerActivity.e(a), SASPlayerActivity.f(a));
                }
            }

            
            {
                a = SASPlayerActivity.this;
                super(context);
            }
        };
        e.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        e.setBackgroundColor(0xff000000);
        j = (SASMRAIDVideoConfig)bundle1.getParcelable("videoConfig");
        g = new SASVideoView(this);
        g.setVideoPath(j.g());
        g.setOnErrorListener(new android.media.MediaPlayer.OnErrorListener() {

            final SASPlayerActivity a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                a.finish();
                return true;
            }

            
            {
                a = SASPlayerActivity.this;
                super();
            }
        });
        g.setOnCompletionListener(d);
        g.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final SASPlayerActivity a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                com.smartadserver.android.library.h.c.a("SASPlayerActivity", "onPrepared");
                SASPlayerActivity.g(a).setVisibility(8);
                SASPlayerActivity.h(a);
            }

            
            {
                a = SASPlayerActivity.this;
                super();
            }
        });
        AudioManager audiomanager = (AudioManager)getSystemService("audio");
        if (j.a() || audiomanager.getRingerMode() != 2)
        {
            g.a();
        }
        f = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        f.addRule(13);
        e.addView(g, f);
        setContentView(e);
        f();
        k = g.a(this, e);
        k.setVisibility(8);
        b();
        if (q)
        {
            a();
        }
    }

    public boolean onKeyUp(int i1, KeyEvent keyevent)
    {
        if (g.getCurrentVolume() != 0) goto _L2; else goto _L1
_L1:
        g.setMutedVolume(5);
        if (i != null)
        {
            i.setImageBitmap(a.f);
        }
_L4:
        return super.onKeyUp(i1, keyevent);
_L2:
        g.setMutedVolume(-1);
        if (i != null)
        {
            i.setImageBitmap(a.e);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onPause()
    {
        super.onPause();
        p = g.getCurrentPosition();
        g.stopPlayback();
    }

    public void onResume()
    {
        super.onResume();
        k.setVisibility(0);
        if (j.b())
        {
            d();
        } else
        {
            e();
        }
        g.seekTo(p);
    }
}
