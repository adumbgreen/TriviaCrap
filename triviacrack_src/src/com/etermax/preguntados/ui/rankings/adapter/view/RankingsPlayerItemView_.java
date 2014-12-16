// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings.adapter.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings.adapter.view:
//            RankingsPlayerItemView

public final class RankingsPlayerItemView_ extends RankingsPlayerItemView
    implements a, b
{

    private boolean i;
    private final c j;

    public RankingsPlayerItemView_(Context context)
    {
        super(context);
        i = false;
        j = new c();
        a();
    }

    public RankingsPlayerItemView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        i = false;
        j = new c();
        a();
    }

    public RankingsPlayerItemView_(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        i = false;
        j = new c();
        a();
    }

    public static RankingsPlayerItemView a(Context context)
    {
        RankingsPlayerItemView_ rankingsplayeritemview_ = new RankingsPlayerItemView_(context);
        rankingsplayeritemview_.onFinishInflate();
        return rankingsplayeritemview_;
    }

    private void a()
    {
        c c1 = c.a(j);
        c.a(this);
        c.a(c1);
    }

    public void a(a a1)
    {
        b = (TextView)a1.findViewById(0x7f0a0189);
        f = (TextView)a1.findViewById(0x7f0a0190);
        d = (TextView)a1.findViewById(0x7f0a018d);
        c = (ViewSwitcher)a1.findViewById(0x7f0a018b);
        e = (TextView)a1.findViewById(0x7f0a018f);
        a = a1.findViewById(0x7f0a0188);
        g = (TextView)a1.findViewById(0x7f0a018e);
    }

    public void onFinishInflate()
    {
        if (!i)
        {
            i = true;
            inflate(getContext(), 0x7f030070, this);
            j.a(this);
        }
        super.onFinishInflate();
    }
}
