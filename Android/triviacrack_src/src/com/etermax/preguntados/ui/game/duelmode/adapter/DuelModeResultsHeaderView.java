// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.etermax.preguntados.h.c;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            f

public class DuelModeResultsHeaderView extends LinearLayout
    implements f
{

    TextView a;

    public DuelModeResultsHeaderView(Context context)
    {
        super(context);
    }

    public DuelModeResultsHeaderView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void a(long l)
    {
        a.setText(c.a(l, false));
    }
}
