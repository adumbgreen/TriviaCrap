// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.a;

import android.os.Bundle;
import com.etermax.gamescommon.language.Language;

// Referenced classes of package com.etermax.preguntados.ui.newgame.a:
//            f, a

public class g
{

    private Bundle a;

    private g()
    {
        a = new Bundle();
    }

    g(f._cls1 _pcls1)
    {
        this();
    }

    public a a()
    {
        f f1 = new f();
        f1.setArguments(a);
        return f1;
    }

    public g a(Language language)
    {
        a.putSerializable("mLanguage", language);
        return this;
    }
}
