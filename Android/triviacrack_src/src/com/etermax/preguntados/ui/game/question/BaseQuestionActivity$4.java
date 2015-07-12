// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.question;


// Referenced classes of package com.etermax.preguntados.ui.game.question:
//            BaseQuestionActivity

class e
{

    static final int a[];

    static 
    {
        a = new int[com.etermax.gamescommon.mediation.atorType.values().length];
        try
        {
            a[com.etermax.gamescommon.mediation.atorType.admob.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[com.etermax.gamescommon.mediation.atorType.mopub.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1)
        {
            return;
        }
    }
}
