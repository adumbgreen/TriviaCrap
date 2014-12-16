// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.smartadserver.android.library.g.a;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.SASPlayerActivity;
import com.smartadserver.android.library.ui.SASVideoView;
import com.smartadserver.android.library.ui.g;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            SASMRAIDVideoConfig

public class f
    implements com.smartadserver.android.library.ui.f
{

    public static String a = "mraidvideo";
    public android.media.MediaPlayer.OnCompletionListener b;
    public android.media.MediaPlayer.OnErrorListener c;
    public android.media.MediaPlayer.OnPreparedListener d;
    final Runnable e = new Runnable() {

        final f a;

        public void run()
        {
            if (f.q(a) && f.d(a).getCurrentPosition() != 0)
            {
                com.smartadserver.android.library.controller.mraid.f.a(a, f.d(a).getCurrentPosition());
            }
            if (f.r(a))
            {
                f.b(a, false);
                return;
            } else
            {
                f.s(a).postDelayed(this, 100L);
                return;
            }
        }

            
            {
                a = f.this;
                super();
            }
    };
    android.view.View.OnClickListener f;
    android.view.View.OnClickListener g;
    private SASAdView h;
    private RelativeLayout i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o[];
    private boolean p;
    private SASVideoView q;
    private ImageView r;
    private ImageView s;
    private ProgressBar t;
    private SASMRAIDVideoConfig u;
    private boolean v;
    private Handler w;
    private boolean x;
    private int y;
    private int z;

    public f(SASAdView sasadview)
    {
        v = false;
        x = false;
        b = new android.media.MediaPlayer.OnCompletionListener() {

            final f a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                f.n(a);
                if (com.smartadserver.android.library.controller.mraid.f.c(a).f())
                {
                    a.b();
                    return;
                }
                if (com.smartadserver.android.library.controller.mraid.f.c(a).c())
                {
                    com.smartadserver.android.library.controller.mraid.f.a(a, false);
                    return;
                }
                if (f.o(a) != null)
                {
                    f.o(a).setImageBitmap(a.c);
                    return;
                } else
                {
                    a.b();
                    return;
                }
            }

            
            {
                a = f.this;
                super();
            }
        };
        c = new android.media.MediaPlayer.OnErrorListener() {

            final f a;

            public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
            {
                com.smartadserver.android.library.controller.mraid.f.a(a, "Cannot play movie!");
                f.n(a);
                if (f.p(a) != null)
                {
                    f.p(a).setVisibility(8);
                }
                a.b();
                return true;
            }

            
            {
                a = f.this;
                super();
            }
        };
        d = new android.media.MediaPlayer.OnPreparedListener() {

            final f a;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                f.p(a).setVisibility(8);
            }

            
            {
                a = f.this;
                super();
            }
        };
        f = new android.view.View.OnClickListener() {

            final f a;

            public void onClick(View view)
            {
                if (f.d(a).isPlaying())
                {
                    f.t(a);
                    return;
                } else
                {
                    f.u(a);
                    com.smartadserver.android.library.controller.mraid.f.a(a, false);
                    return;
                }
            }

            
            {
                a = f.this;
                super();
            }
        };
        g = new android.view.View.OnClickListener() {

            final f a;

            public void onClick(View view)
            {
                if (f.d(a).c())
                {
                    f.d(a).b();
                    f.v(a).setImageBitmap(a.e);
                } else
                {
                    f.d(a).a();
                    f.v(a).setImageBitmap(a.f);
                }
                com.smartadserver.android.library.controller.mraid.f.a(a, f.d(a).getCurrentVolume());
            }

            
            {
                a = f.this;
                super();
            }
        };
        h = sasadview;
        i = new RelativeLayout(h.getContext());
    }

    static int a(f f1, int i1)
    {
        f1.y = i1;
        return i1;
    }

    static SASVideoView a(f f1)
    {
        return f1.m();
    }

    static SASVideoView a(f f1, SASVideoView sasvideoview)
    {
        f1.q = sasvideoview;
        return sasvideoview;
    }

    private void a(float f1)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(String.valueOf(f1));
        h.a("sas_mediaVolumeChanged", arraylist);
    }

    static void a(f f1, float f2)
    {
        f1.a(f2);
    }

    static void a(f f1, String s1)
    {
        f1.a(s1);
    }

    static void a(f f1, boolean flag)
    {
        f1.a(flag);
    }

    private void a(String s1)
    {
        h.a(s1, "sas_mediaError");
    }

    private void a(boolean flag)
    {
        if (r != null)
        {
            r.setImageBitmap(a.d);
        }
        q.start();
        w.post(e);
        if (flag)
        {
            t.setVisibility(0);
        } else
        {
            t.setVisibility(8);
        }
        if (!p)
        {
            g();
            p = true;
        }
    }

    static SASAdView b(f f1)
    {
        return f1.h;
    }

    static boolean b(f f1, boolean flag)
    {
        f1.x = flag;
        return flag;
    }

    private int c(int i1)
    {
        return com.smartadserver.android.library.h.c.a(i1, h.getResources());
    }

    static SASMRAIDVideoConfig c(f f1)
    {
        return f1.u;
    }

    private void c()
    {
        t = q.a(h.getContext(), i);
    }

    static SASVideoView d(f f1)
    {
        return f1.q;
    }

    private void d()
    {
        if (u.b())
        {
            k();
        }
    }

    static int e(f f1)
    {
        return f1.k;
    }

    private void e()
    {
        if (u.d())
        {
            r = q.a(h.getContext(), i, f);
        }
        if (u.a() || u.d())
        {
            s = q.b(h.getContext(), i, g);
        }
    }

    static int f(f f1)
    {
        return f1.l;
    }

    private void f()
    {
        int i1;
        int j1;
        int k1;
        float f1;
        i1 = 1;
        k = c(o[2]);
        l = c(o[3]);
        j1 = h.getWidth();
        k1 = h.getHeight() - h.getNeededTopPadding();
        f1 = (float)k / (float)l;
        int l1;
        if ((float)j1 / (float)k1 < f1)
        {
            l1 = i1;
        } else
        {
            l1 = 0;
        }
        if (o[4] == -1) goto _L2; else goto _L1
_L1:
        j = o[4];
        int i2;
        if (l1 != 0)
        {
            k = j1;
            l = (int)((float)k / f1);
            m = 0;
        } else
        {
            l = k1;
            k = (int)(f1 * (float)l);
            m = (j1 - k) / 2;
        }
        i2 = j;
        if (com.smartadserver.android.library.h.c.h(h.getContext()) != 0)
        {
            i1 = i2;
        }
        i1;
        JVM INSTR tableswitch 0 2: default 176
    //                   0 216
    //                   1 222
    //                   2 235;
           goto _L3 _L4 _L5 _L6
_L3:
        return;
_L4:
        n = 0;
        return;
_L5:
        n = (k1 - l) / 2;
        return;
_L6:
        n = k1 - l;
        return;
_L2:
        if (o[0] != -1)
        {
            n = c(o[0]);
            m = c(o[i1]);
            return;
        }
        if (true) goto _L3; else goto _L7
_L7:
    }

    static int g(f f1)
    {
        return f1.m;
    }

    private void g()
    {
        h.a("sas_mediaStarted", null);
    }

    static int h(f f1)
    {
        return f1.n;
    }

    private void h()
    {
        h.a("sas_mediaEnded", null);
    }

    static RelativeLayout i(f f1)
    {
        return f1.i;
    }

    private void i()
    {
        h.a("sas_mediaPlay", null);
    }

    private void j()
    {
        h.a("sas_mediaPause", null);
    }

    static int[] j(f f1)
    {
        return f1.o;
    }

    private void k()
    {
        a(true);
    }

    static void k(f f1)
    {
        f1.e();
    }

    private void l()
    {
        if (r != null)
        {
            r.setImageBitmap(a.c);
        }
        j();
        q.pause();
        x = true;
    }

    static void l(f f1)
    {
        f1.c();
    }

    private SASVideoView m()
    {
        if (n())
        {
            q.d();
        }
        q = new SASVideoView(h.getContext());
        q.setOnVideoViewVisibilityChangedListener(this);
        v = false;
        w = new Handler();
        return q;
    }

    static void m(f f1)
    {
        f1.d();
    }

    static void n(f f1)
    {
        f1.h();
    }

    private boolean n()
    {
        return q != null;
    }

    static ImageView o(f f1)
    {
        return f1.r;
    }

    static ProgressBar p(f f1)
    {
        return f1.t;
    }

    static boolean q(f f1)
    {
        return f1.n();
    }

    static boolean r(f f1)
    {
        return f1.x;
    }

    static Handler s(f f1)
    {
        return f1.w;
    }

    static void t(f f1)
    {
        f1.l();
    }

    static void u(f f1)
    {
        f1.i();
    }

    static ImageView v(f f1)
    {
        return f1.s;
    }

    public void a()
    {
        if (n())
        {
            f();
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)i.getLayoutParams();
            layoutparams.width = k;
            layoutparams.height = l;
            layoutparams.setMargins(m, n, 0, 0);
            q.a(0, 0, k, l);
        }
    }

    public void a(int i1)
    {
        if (i1 == 8)
        {
            v = true;
            x = true;
        } else
        if (i1 == 0 && v)
        {
            v = false;
            q.seekTo(y);
            if (u.b())
            {
                k();
                return;
            } else
            {
                l();
                return;
            }
        }
    }

    public void b()
    {
        x = true;
        if (n())
        {
            h.a(new Runnable() {

                final f a;

                public void run()
                {
                    if (f.o(a) != null)
                    {
                        f.i(a).removeView(f.o(a));
                    }
                    if (f.v(a) != null)
                    {
                        f.i(a).removeView(f.v(a));
                    }
                    if (f.p(a) != null)
                    {
                        f.i(a).removeView(f.p(a));
                    }
                    f.d(a).d();
                }

            
            {
                a = f.this;
                super();
            }
            });
        }
    }

    public void b(int i1)
    {
        z = i1;
    }

    public void playVideo(String s1, boolean flag, boolean flag1, boolean flag2, boolean flag3, int ai[], String s2, 
            String s3)
    {
        com.smartadserver.android.library.h.c.a("SASMRAIDVideoController", (new StringBuilder()).append("playVideo: url: ").append(s1).append(" audioMuted: ").append(flag).append(" autoPlay: ").append(flag1).append(" controls: ").append(flag2).append(" loop: ").append(flag3).append(" x: ").append(ai[0]).append(" y: ").append(ai[1]).append(" width: ").append(ai[2]).append(" height: ").append(ai[3]).append(" sasPosition: ").append(ai[4]).append(" startStyle: ").append(s2).append(" stopStyle: ").append(s3).toString());
        o = ai;
        f();
        u = new SASMRAIDVideoConfig(s1, k, l, flag, flag1, flag3, flag2, s2, s3);
        if (URLUtil.isValidUrl(s1)) goto _L2; else goto _L1
_L1:
        a("Invalid url!");
_L3:
        return;
_L2:
        com.smartadserver.android.library.h.c.a("SASMRAIDVideoController", (new StringBuilder()).append("request create video view with params:").append(m).append(",").append(n).append(",").append(k).append(",").append(l).toString());
        if (!u.e())
        {
            break MISSING_BLOCK_LABEL_425;
        }
        Intent intent = new Intent(h.getContext(), com/smartadserver/android/library/ui/SASPlayerActivity);
        Bundle bundle = new Bundle();
        bundle.putParcelable("videoConfig", u);
        bundle.putInt("closeButtonPosition", z);
        bundle.putBoolean("isCloseButtonVisible", h.m());
        intent.putExtras(bundle);
        h.getContext().startActivity(intent);
        Thread.sleep(500L);
_L4:
        boolean flag4 = true;
_L5:
        if (!flag4)
        {
            h.a(new Runnable() {

                final f a;

                public void run()
                {
                    android.widget.RelativeLayout.LayoutParams layoutparams;
                    com.smartadserver.android.library.controller.mraid.f.a(a, com.smartadserver.android.library.controller.mraid.f.a(a));
                    AudioManager audiomanager = (AudioManager)f.b(a).getContext().getSystemService("audio");
                    if (com.smartadserver.android.library.controller.mraid.f.c(a).a() || audiomanager.getRingerMode() != 2)
                    {
                        f.d(a).a();
                    }
                    layoutparams = new android.widget.RelativeLayout.LayoutParams(f.e(a), f.f(a));
                    layoutparams.setMargins(com.smartadserver.android.library.controller.mraid.f.g(a), f.h(a), 0, 0);
                    com.smartadserver.android.library.h.c.a("SASMRAIDVideoController", (new StringBuilder()).append("create video view with params:").append(com.smartadserver.android.library.controller.mraid.f.g(a)).append(",").append(f.h(a)).append(",").append(f.e(a)).append(",").append(f.f(a)).toString());
                    MediaPlayer mediaplayer = new MediaPlayer();
                    mediaplayer.setDataSource(com.smartadserver.android.library.controller.mraid.f.c(a).g());
                    mediaplayer.release();
                    f.d(a).setVideoPath(com.smartadserver.android.library.controller.mraid.f.c(a).g());
                    f.d(a).setOnPreparedListener(a.d);
                    f.d(a).setOnErrorListener(a.c);
                    f.d(a).setOnCompletionListener(a.b);
                    f.b(a).j.removeView(f.i(a));
                    byte byte0 = -1;
                    if (f.j(a).length >= 6 && f.j(a)[5] == 0)
                    {
                        byte0 = 0;
                    }
                    try
                    {
                        f.b(a).j.addView(f.i(a), byte0, layoutparams);
                        f.d(a).setLayoutParams(new android.widget.RelativeLayout.LayoutParams(f.e(a), f.f(a)));
                        f.d(a).setZOrderOnTop(SASAdView.f());
                        f.i(a).addView(f.d(a));
                        f.k(a);
                        f.l(a);
                        f.m(a);
                        f.d(a).a(0, 0, f.e(a), f.f(a));
                        return;
                    }
                    catch (Exception exception)
                    {
                        a.c.onError(null, 0, 0);
                    }
                    return;
                }

            
            {
                a = f.this;
                super();
            }
            });
            return;
        }
          goto _L3
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L4
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        com.smartadserver.android.library.h.c.b(activitynotfoundexception.getMessage());
        flag4 = false;
          goto _L5
    }

    public void playVideoInNativePlayer(String s1)
    {
        boolean flag = true;
        Context context = h.getContext();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.parse(s1), "video/mp4");
        AudioManager audiomanager = (AudioManager)h.getContext().getSystemService("audio");
        if (audiomanager.getRingerMode() == 2 || audiomanager.isMusicActive())
        {
            flag = false;
        }
        if (context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0)
        {
            if (flag)
            {
                audiomanager.setStreamVolume(3, 0, 0);
            }
            context.startActivity(intent);
            return;
        }
        try
        {
            MediaPlayer mediaplayer = new MediaPlayer();
            mediaplayer.setDataSource(s1);
            mediaplayer.prepare();
            int i1 = mediaplayer.getVideoWidth();
            int j1 = mediaplayer.getVideoHeight();
            mediaplayer.release();
            playVideo(s1, flag, true, true, false, new int[] {
                0, 0, i1, j1, 0
            }, "fullscreen", "exit");
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

}
