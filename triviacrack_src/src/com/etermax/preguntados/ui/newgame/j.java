// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame;

import android.os.Bundle;
import com.etermax.gamescommon.language.Language;

// Referenced classes of package com.etermax.preguntados.ui.newgame:
//            i, g

public class j
{

    private Bundle a;

    private j()
    {
        a = new Bundle();
    }

    j(i._cls1 _pcls1)
    {
        this();
    }

    public g a()
    {
        i k = new i();
        k.setArguments(a);
        return k;
    }

    public j a(Language language)
    {
        a.putSerializable("mSelectedLanguage", language);
        return this;
    }
}
