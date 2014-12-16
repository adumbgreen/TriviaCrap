// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations.v1;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.os.CountDownTimer;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.etermax.gamescommon.animations.d;
import com.etermax.gamescommon.animations.e;
import com.etermax.gamescommon.resources.a;
import com.etermax.gamescommon.resources.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.animations.v1:
//            d, c, b, a

public class AnimatedView extends RelativeLayout
    implements d
{

    e a;
    private List b;
    private com.etermax.gamescommon.animations.v1.b c;
    private CountDownTimer d;
    private long e;

    public AnimatedView(Context context)
    {
        super(context);
        a = e.a;
        c();
    }

    public AnimatedView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = e.a;
        c();
    }

    public AnimatedView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = e.a;
        c();
    }

    static void a(AnimatedView animatedview)
    {
        animatedview.e();
    }

    private void a(com.etermax.gamescommon.animations.v1.d d1, a a1)
    {
        if (d1.c().size() == 1 && ((c)d1.c().get(0)).b() == c.c())
        {
            RelativeLayout relativelayout = new RelativeLayout(getContext());
            BitmapDrawable bitmapdrawable1 = (BitmapDrawable)a1.a(((c)d1.c().get(0)).a());
            int l;
            int i1;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            if (android.os.Build.VERSION.SDK_INT < 16)
            {
                relativelayout.setBackgroundDrawable(bitmapdrawable1);
            } else
            {
                relativelayout.setBackground(bitmapdrawable1);
            }
            l = bitmapdrawable1.getBitmap().getWidth();
            i1 = bitmapdrawable1.getBitmap().getHeight();
            e = e + (long)(4 * (bitmapdrawable1.getBitmap().getWidth() * bitmapdrawable1.getBitmap().getHeight()));
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(l, i1);
            layoutparams1.setMargins((int)(d1.a() * c.d()), (int)(d1.b() * c.e()), 0, 0);
            relativelayout.setLayoutParams(layoutparams1);
            addView(relativelayout);
            return;
        }
        AnimationDrawable animationdrawable = new AnimationDrawable();
        Iterator iterator = d1.c().iterator();
        int i = 0;
        int j = 0;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            c c1 = (c)iterator.next();
            BitmapDrawable bitmapdrawable = (BitmapDrawable)a1.a(c1.a());
            if (bitmapdrawable != null && bitmapdrawable.getBitmap() != null)
            {
                animationdrawable.addFrame(bitmapdrawable, c1.b() * (1000 / c.b()));
                j = Math.max(j, bitmapdrawable.getBitmap().getWidth());
                int k = Math.max(i, bitmapdrawable.getBitmap().getHeight());
                e = e + (long)(4 * (bitmapdrawable.getBitmap().getWidth() * bitmapdrawable.getBitmap().getHeight()));
                i = k;
            }
        } while (true);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(j, i);
        layoutparams.setMargins((int)(d1.a() * c.d()), (int)(d1.b() * c.e()), 0, 0);
        com.etermax.gamescommon.animations.v1.a a2 = new com.etermax.gamescommon.animations.v1.a(this, getContext(), animationdrawable);
        a2.setLayoutParams(layoutparams);
        animationdrawable.setOneShot(true);
        b.add(a2);
        addView(a2);
    }

    private void c()
    {
        b = new ArrayList();
    }

    private void d()
    {
        if (d != null)
        {
            return;
        } else
        {
            d = new CountDownTimer(0x7fffffffffffffffL, c.c() * (1000 / c.b())) {

                final AnimatedView a;

                public void onFinish()
                {
                }

                public void onTick(long l)
                {
                    com.etermax.gamescommon.animations.v1.AnimatedView.a(a);
                }

            
            {
                a = AnimatedView.this;
                super(l, l1);
            }
            };
            return;
        }
    }

    private void e()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((com.etermax.gamescommon.animations.v1.a)iterator.next()).a()) { }
    }

    private void f()
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((com.etermax.gamescommon.animations.v1.a)iterator.next()).b()) { }
    }

    public void a()
    {
        d();
        d.start();
        a = e.d;
    }

    public void a(com.etermax.gamescommon.animations.v1.b b1, a a1, b b2)
    {
        c = b1;
        b1.d(com.etermax.gamescommon.resources.a.b(getContext(), b2));
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams((int)b1.d(), (int)b1.e()));
        e = 0L;
        for (Iterator iterator = b1.f().iterator(); iterator.hasNext(); a((com.etermax.gamescommon.animations.v1.d)iterator.next(), a1)) { }
        a = e.c;
    }

    public void b()
    {
        d();
        f();
        d.cancel();
        a = e.c;
    }

    public long getDrawablesSize()
    {
        return e;
    }

    public long getDuration()
    {
        Iterator iterator = b.iterator();
        long l;
        for (l = 0L; iterator.hasNext(); l += ((com.etermax.gamescommon.animations.v1.a)iterator.next()).c()) { }
        return l;
    }

    public e getState()
    {
        return a;
    }

    public int getVersion()
    {
        return 1;
    }

    protected void onDetachedFromWindow()
    {
        b();
        super.onDetachedFromWindow();
    }
}
