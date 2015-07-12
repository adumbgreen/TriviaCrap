// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.questionsfactory.widget.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.preguntados.ui.questionsfactory.a.a;

// Referenced classes of package com.etermax.preguntados.ui.questionsfactory.widget.a:
//            d

public class g extends d
{

    private Language a;

    public g(Language language)
    {
        a = language;
    }

    public int a()
    {
        return LanguageResourceMapper.getByString(a.name()).getNameResource();
    }

    public Drawable a(Context context)
    {
        return context.getResources().getDrawable(com.etermax.preguntados.ui.questionsfactory.a.a.a(a.name()).a());
    }

    public Language b()
    {
        return a;
    }
}
