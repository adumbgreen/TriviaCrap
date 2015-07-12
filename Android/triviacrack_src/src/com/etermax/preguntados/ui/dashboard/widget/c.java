// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.widget;

import android.content.Context;
import android.view.View;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.ui.dashboard.h;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.widget:
//            a

public class c extends a
{

    private View b;

    public c(Context context, h h1)
    {
        super(context, h1);
    }

    public void a()
    {
        b = findViewById(i.container);
    }

    public void b()
    {
    }

    public void getClickAction()
    {
        a.B();
    }

    public int getLayoutResourceId()
    {
        return k.button_tv_show_layout;
    }
}
