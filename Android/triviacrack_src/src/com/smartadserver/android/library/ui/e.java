// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.smartadserver.android.library.g.a;
import java.util.Timer;
import java.util.TimerTask;

public class e extends RelativeLayout
{

    private ImageView a;
    private RotateAnimation b;

    public e(Context context)
    {
        this(context, null);
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
    }

    public e(Context context, Bitmap bitmap)
    {
        super(context);
        a();
        if (bitmap == null)
        {
            bitmap = a.b;
        }
        setLoaderBitmap(bitmap);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final e a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    static RotateAnimation a(e e1)
    {
        return e1.b;
    }

    private void a()
    {
        a = new ImageView(getContext());
        addView(a);
        b = new RotateAnimation(0.0F, 90F, 1, 0.5F, 1, 0.5F);
        b.setRepeatCount(-1);
        b.setInterpolator(new AccelerateDecelerateInterpolator());
        b.setDuration(650L);
    }

    static ImageView b(e e1)
    {
        return e1.a;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        Timer timer = new Timer();
        timer.schedule(new TimerTask(timer) {

            final Timer a;
            final e b;

            public void run()
            {
                b.post(new Runnable(this) {

                    final _cls2 a;

                    public void run()
                    {
                        e.b(a.b).startAnimation(com.smartadserver.android.library.ui.e.a(a.b));
                        a.a.cancel();
                    }

            
            {
                a = _pcls2;
                super();
            }
                });
            }

            
            {
                b = e.this;
                a = timer;
                super();
            }
        }, 100L);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        b.cancel();
        b.reset();
    }

    public void setLoaderBitmap(Bitmap bitmap)
    {
        post(new Runnable(bitmap) {

            final Bitmap a;
            final e b;

            public void run()
            {
                e.b(b).setImageBitmap(a);
                float f = b.getResources().getDisplayMetrics().density / 1.5F;
                android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(Math.round(f * (float)a.getWidth()), Math.round(f * (float)a.getHeight()));
                int i = Math.round(f * 7F);
                layoutparams.setMargins(i, i, i, i);
                layoutparams.addRule(13);
                e.b(b).setLayoutParams(layoutparams);
            }

            
            {
                b = e.this;
                a = bitmap;
                super();
            }
        });
    }
}
