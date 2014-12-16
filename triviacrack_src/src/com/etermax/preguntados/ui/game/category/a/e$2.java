// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category.a;

import com.etermax.preguntados.datasource.dto.enums.EndedReason;

// Referenced classes of package com.etermax.preguntados.ui.game.category.a:
//            e

class dedReason
{

    static final int a[];

    static 
    {
        a = new int[EndedReason.values().length];
        try
        {
            a[EndedReason.EXPIRED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[EndedReason.FINAL_DUEL.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[EndedReason.NORMAL.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[EndedReason.REJECTED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[EndedReason.RESIGNED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
