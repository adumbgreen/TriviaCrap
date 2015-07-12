// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.sharing;

import android.content.Context;
import android.widget.TextView;
import com.etermax.o;
import com.etermax.preguntados.c.a.b;

// Referenced classes of package com.etermax.preguntados.sharing:
//            k, p

public class q extends k
{

    public q(Context context, p p, b b1)
    {
        super(context, p, b1);
    }

    public void b()
    {
        super.b();
        k.setVisibility(0);
    }

    public String getShareText()
    {
        return (new StringBuilder()).append(getContext().getString(o.user_suggest_question)).append(" - ").append(getContext().getString(o.landing_url)).toString();
    }
}
