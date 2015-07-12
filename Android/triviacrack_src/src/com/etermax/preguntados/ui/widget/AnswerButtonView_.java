// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ViewSwitcher;
import com.etermax.tools.widget.CustomFontButton;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.widget:
//            AnswerButtonView

public final class AnswerButtonView_ extends AnswerButtonView
    implements a, b
{

    private boolean d;
    private final c e;

    public AnswerButtonView_(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = false;
        e = new c();
        b();
    }

    public AnswerButtonView_(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        d = false;
        e = new c();
        b();
    }

    private void b()
    {
        c c1 = c.a(e);
        c.a(this);
        c = com.etermax.preguntados.g.b.a(getContext());
        c.a(c1);
    }

    public void a(a a1)
    {
        a = (CustomFontButton)a1.findViewById(0x7f0a0098);
        b = (ViewSwitcher)a1.findViewById(0x7f0a0099);
        a();
    }

    public void onFinishInflate()
    {
        if (!d)
        {
            d = true;
            inflate(getContext(), 0x7f030025, this);
            e.a(this);
        }
        super.onFinishInflate();
    }
}
