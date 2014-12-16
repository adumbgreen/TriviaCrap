// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.VideoView;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;

// Referenced classes of package com.mopub.mobileads:
//            m, n

public class MraidVideoViewController extends m
{

    private final VideoView a;
    private ImageButton b;
    private int c;
    private int d;

    MraidVideoViewController(Context context, Bundle bundle, long l, n n)
    {
        super(context, l, n);
        a = new VideoView(context);
        a.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            final MraidVideoViewController a;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                MraidVideoViewController.a(a).setVisibility(0);
                a.b(true);
            }

            
            {
                a = MraidVideoViewController.this;
                super();
            }
        });
        a.setOnErrorListener(new android.media.MediaPlayer.OnErrorListener() {

            final MraidVideoViewController a;

            public boolean onError(MediaPlayer mediaplayer, int i, int j)
            {
                MraidVideoViewController.a(a).setVisibility(0);
                a.a(false);
                return false;
            }

            
            {
                a = MraidVideoViewController.this;
                super();
            }
        });
        a.setVideoPath(bundle.getString("video_url"));
    }

    static ImageButton a(MraidVideoViewController mraidvideoviewcontroller)
    {
        return mraidvideoviewcontroller.b;
    }

    private void k()
    {
        b = new ImageButton(h());
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            0xfefeff59
        }, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.decodeImage(h()));
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.decodeImage(h()));
        b.setImageDrawable(statelistdrawable);
        b.setBackgroundDrawable(null);
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final MraidVideoViewController a;

            public void onClick(View view)
            {
                a.g().onFinish();
            }

            
            {
                a = MraidVideoViewController.this;
                super();
            }
        });
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(d, d);
        layoutparams.addRule(11);
        layoutparams.setMargins(c, 0, c, 0);
        i().addView(b, layoutparams);
    }

    void a()
    {
        super.a();
        d = Dips.asIntPixels(50F, h());
        c = Dips.asIntPixels(8F, h());
        k();
        b.setVisibility(8);
        a.start();
    }

    VideoView b()
    {
        return a;
    }

    void c()
    {
    }

    void d()
    {
    }

    void e()
    {
    }
}
