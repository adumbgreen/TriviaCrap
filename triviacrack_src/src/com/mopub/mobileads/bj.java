// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.CountdownDrawable;
import com.mopub.mobileads.resource.LearnMoreDrawable;

// Referenced classes of package com.mopub.mobileads:
//            bi, bh

class bj extends LinearLayout
{

    private final bh a = b();
    private final bh b = c();
    private final bh c = d();
    private final bh d = e();

    public bj(Context context)
    {
        super(context);
        setId((int)Utils.generateUniqueId());
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final bj a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = bj.this;
                super();
            }
        });
        setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, Dips.dipsToIntPixels(44F, getContext())));
        setBackgroundColor(0xff000000);
        getBackground().setAlpha(180);
        addView(a);
        addView(b);
        addView(c);
        addView(d);
    }

    private bh b()
    {
        return (new bi(getContext())).a(2.0F).a(19).a().b(9).b();
    }

    private bh c()
    {
        return (new bi(getContext())).a(1.0F).a(21).a("Learn More").a(new LearnMoreDrawable()).c(4).b();
    }

    private bh d()
    {
        CountdownDrawable countdowndrawable = new CountdownDrawable(getContext());
        return (new bi(getContext())).a(1.0F).a(21).a("Skip in").a(countdowndrawable).c(4).b();
    }

    private bh e()
    {
        return (new bi(getContext())).a(1.0F).a(21).a("Close").a(new CloseButtonDrawable()).c(8).b();
    }

    String a(long l)
    {
        return String.valueOf(Math.round(Math.ceil((float)l / 1000F)));
    }

    void a()
    {
        c.setVisibility(8);
        b.setVisibility(0);
        d.setVisibility(0);
    }

    void a(int i)
    {
        if (i >= 200)
        {
            a.a((new StringBuilder()).append("Ends in ").append(a(i)).append(" seconds").toString());
        } else
        if (i >= 0)
        {
            a.a("Thanks for watching");
            return;
        }
    }

    void a(android.view.View.OnTouchListener ontouchlistener)
    {
        d.setOnTouchListener(ontouchlistener);
    }

    void b(int i)
    {
        if (i >= 0 && c.getVisibility() == 4)
        {
            d.setVisibility(8);
            c.setVisibility(0);
        }
        c.b(a(i));
    }

    void b(android.view.View.OnTouchListener ontouchlistener)
    {
        b.setOnTouchListener(ontouchlistener);
    }
}
