// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.b;

import com.etermax.gamescommon.language.Language;

// Referenced classes of package com.etermax.gamescommon.b:
//            l

public class v extends l
{

    public v()
    {
        e("game_created");
    }

    public void a(Language language)
    {
        a("lang", String.valueOf(language));
    }

    public void a(String s)
    {
        a("opponent", s);
    }
}
