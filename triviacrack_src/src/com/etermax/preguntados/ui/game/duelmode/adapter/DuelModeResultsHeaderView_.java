// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            DuelModeResultsHeaderView

public final class DuelModeResultsHeaderView_ extends DuelModeResultsHeaderView
    implements a, b
{

    private boolean b;
    private final c c;

    public DuelModeResultsHeaderView_(Context context)
    {
        super(context);
        b = false;
        c = new c();
        a();
    }

    public DuelModeResultsHeaderView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = new c();
        a();
    }

    public static DuelModeResultsHeaderView a(Context context)
    {
        DuelModeResultsHeaderView_ duelmoderesultsheaderview_ = new DuelModeResultsHeaderView_(context);
        duelmoderesultsheaderview_.onFinishInflate();
        return duelmoderesultsheaderview_;
    }

    private void a()
    {
        c c1 = org.a.a.b.c.a(c);
        org.a.a.b.c.a(this);
        org.a.a.b.c.a(c1);
    }

    public void a(a a1)
    {
        a = (TextView)a1.findViewById(0x7f0a019d);
    }

    public void onFinishInflate()
    {
        if (!b)
        {
            b = true;
            inflate(getContext(), 0x7f030072, this);
            c.a(this);
        }
        super.onFinishInflate();
    }
}
