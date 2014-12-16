// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.VideoView;
import com.smartadserver.android.library.g.a;
import java.lang.ref.WeakReference;

// Referenced classes of package com.smartadserver.android.library.ui:
//            f

public class SASVideoView extends VideoView
{

    private int a;
    private int b;
    private boolean c;
    private AudioManager d;
    private int e;
    private WeakReference f;

    public SASVideoView(Context context)
    {
        super(context);
        a = 0;
        b = 0;
        c = false;
        e = -1;
        e();
    }

    public SASVideoView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        b = 0;
        c = false;
        e = -1;
        e();
    }

    public SASVideoView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 0;
        b = 0;
        c = false;
        e = -1;
        e();
    }

    static int a(SASVideoView sasvideoview)
    {
        return sasvideoview.b;
    }

    public static ImageView a(Context context, Bitmap bitmap, int i, int j)
    {
        ImageView imageview = new ImageView(context);
        imageview.setBackgroundColor(0);
        imageview.setImageBitmap(bitmap);
        float f1 = context.getResources().getDisplayMetrics().density / 2.5F;
        int k = Math.round((f1 * (float)bitmap.getWidth()) / 6F);
        int l = Math.round((f1 * (float)bitmap.getHeight()) / 6F);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(Math.round(f1 * (float)bitmap.getWidth()) + k * 2, Math.round(f1 * (float)bitmap.getHeight()) + l * 2);
        layoutparams.addRule(j, 1);
        layoutparams.addRule(i, 1);
        imageview.setLayoutParams(layoutparams);
        imageview.setPadding(k, l, k, l);
        return imageview;
    }

    static int b(SASVideoView sasvideoview)
    {
        return sasvideoview.a;
    }

    private void e()
    {
        d = (AudioManager)getContext().getSystemService("audio");
    }

    private void f()
    {
        if (getParent() != null)
        {
            ((ViewGroup)getParent()).removeView(this);
        }
    }

    public ImageView a(Context context, ViewGroup viewgroup, android.view.View.OnClickListener onclicklistener)
    {
        ImageView imageview = a(context, a.c, 9, 12);
        imageview.setOnClickListener(onclicklistener);
        viewgroup.addView(imageview);
        return imageview;
    }

    public ProgressBar a(Context context, ViewGroup viewgroup)
    {
        ProgressBar progressbar = new ProgressBar(context);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13, 1);
        progressbar.setLayoutParams(layoutparams);
        viewgroup.addView(progressbar);
        return progressbar;
    }

    public void a()
    {
        e = getCurrentVolume();
        d.setStreamVolume(3, 0, 0);
    }

    public void a(int i, int j, int k, int l)
    {
        a = l;
        b = k;
        post(new Runnable(i, j) {

            final int a;
            final int b;
            final SASVideoView c;

            public void run()
            {
                ((android.widget.RelativeLayout.LayoutParams)c.getLayoutParams()).setMargins(a, b, 0, 0);
                c.getHolder().setFixedSize(com.smartadserver.android.library.ui.SASVideoView.a(c), SASVideoView.b(c));
                c.requestLayout();
                c.invalidate();
            }

            
            {
                c = SASVideoView.this;
                a = i;
                b = j;
                super();
            }
        });
    }

    public ImageView b(Context context, ViewGroup viewgroup, android.view.View.OnClickListener onclicklistener)
    {
        ImageView imageview;
        if (getCurrentVolume() != 0)
        {
            imageview = a(context, a.e, 11, 12);
        } else
        {
            a();
            imageview = a(context, a.f, 11, 12);
        }
        imageview.setOnClickListener(onclicklistener);
        viewgroup.addView(imageview);
        return imageview;
    }

    public void b()
    {
        if (e == 0)
        {
            e = 5;
        }
        d.setStreamVolume(3, e, 0);
        e = -1;
    }

    public boolean c()
    {
        return e != -1;
    }

    public void d()
    {
        if (!c)
        {
            c = true;
            stopPlayback();
            f();
            if (e != -1)
            {
                b();
                return;
            }
        }
    }

    public int getCurrentVolume()
    {
        return d.getStreamVolume(3);
    }

    public f getOnVideoViewVisibilityChangedListener()
    {
        return (f)f.get();
    }

    protected void onDetachedFromWindow()
    {
        setOnVideoViewVisibilityChangedListener(null);
        super.onDetachedFromWindow();
    }

    protected void onMeasure(int i, int j)
    {
        setMeasuredDimension(b, a);
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        if (f != null)
        {
            f f1 = (f)f.get();
            if (f1 != null)
            {
                f1.a(i);
            }
        }
    }

    public void setMutedVolume(int i)
    {
        e = i;
    }

    public void setOnVideoViewVisibilityChangedListener(f f1)
    {
        f = new WeakReference(f1);
    }
}
