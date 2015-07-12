// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.etermax.a.b;
import com.etermax.h;

public class PreguntadosLoading extends FrameLayout
{

    private int a;
    private AnimationDrawable b;

    public PreguntadosLoading(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 200;
        b();
    }

    public PreguntadosLoading(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 200;
        b();
    }

    static AnimationDrawable a(PreguntadosLoading preguntadosloading)
    {
        return preguntadosloading.b;
    }

    private void b()
    {
        Resources resources = getResources();
        setMinimumWidth((int)com.etermax.a.b.b(getContext(), 50));
        setMinimumHeight((int)com.etermax.a.b.b(getContext(), 50));
        ImageView imageview;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            setBackground(resources.getDrawable(h.background_circle_black));
        } else
        {
            setBackgroundDrawable(resources.getDrawable(h.background_circle_black));
        }
        b = new AnimationDrawable();
        b.setOneShot(false);
        b.addFrame(resources.getDrawable(h.loading_image_01), a);
        b.addFrame(resources.getDrawable(h.loading_image_02), a);
        b.addFrame(resources.getDrawable(h.loading_image_03), a);
        b.addFrame(resources.getDrawable(h.loading_image_04), a);
        b.addFrame(resources.getDrawable(h.loading_image_05), a);
        b.addFrame(resources.getDrawable(h.loading_image_06), a);
        imageview = new ImageView(getContext());
        imageview.setImageDrawable(b);
        imageview.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        addView(imageview, new android.widget.FrameLayout.LayoutParams((int)com.etermax.a.b.b(getContext(), 35), (int)com.etermax.a.b.b(getContext(), 40), 17));
        post(new Runnable() {

            final PreguntadosLoading a;

            public void run()
            {
                PreguntadosLoading.a(a).start();
            }

            
            {
                a = PreguntadosLoading.this;
                super();
            }
        });
    }

    public void a()
    {
        post(new Runnable() {

            final PreguntadosLoading a;

            public void run()
            {
                PreguntadosLoading.a(a).start();
            }

            
            {
                a = PreguntadosLoading.this;
                super();
            }
        });
    }

    protected void onDetachedFromWindow()
    {
        b.stop();
        super.onDetachedFromWindow();
    }

    public void setDelayBetweenFrames(int i)
    {
        a = i;
    }
}
