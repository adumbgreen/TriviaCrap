// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.etermax.preguntados.datasource.dto.enums.Country;
import com.etermax.preguntados.h.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            d

public class f extends d
{

    private Country a;

    public f(Country country)
    {
        a = country;
    }

    public int a()
    {
        return com.etermax.preguntados.h.a.a(a).b();
    }

    public Drawable a(Context context)
    {
        return context.getResources().getDrawable(com.etermax.preguntados.h.a.a(a).c());
    }

    public Country b()
    {
        return a;
    }
}
