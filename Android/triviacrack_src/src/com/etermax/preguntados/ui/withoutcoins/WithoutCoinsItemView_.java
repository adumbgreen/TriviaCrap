// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.withoutcoins;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.shop.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.withoutcoins:
//            WithoutCoinsItemView

public final class WithoutCoinsItemView_ extends WithoutCoinsItemView
    implements a, b
{

    private boolean f;
    private final c g;

    public WithoutCoinsItemView_(Context context)
    {
        super(context);
        f = false;
        g = new c();
        a();
    }

    public WithoutCoinsItemView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = false;
        g = new c();
        a();
    }

    public WithoutCoinsItemView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        f = false;
        g = new c();
        a();
    }

    public static WithoutCoinsItemView a(Context context)
    {
        WithoutCoinsItemView_ withoutcoinsitemview_ = new WithoutCoinsItemView_(context);
        withoutcoinsitemview_.onFinishInflate();
        return withoutcoinsitemview_;
    }

    private void a()
    {
        c c1 = c.a(g);
        c.a(this);
        e = com.etermax.tools.j.c.a(getContext());
        d = d.b(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        c = (Button)a1.findViewById(0x7f0a032d);
        a = (TextView)a1.findViewById(0x7f0a04cc);
        b = (ImageView)a1.findViewById(0x7f0a018b);
    }

    public void onFinishInflate()
    {
        if (!f)
        {
            f = true;
            inflate(getContext(), 0x7f03014e, this);
            g.a(this);
        }
        super.onFinishInflate();
    }
}
