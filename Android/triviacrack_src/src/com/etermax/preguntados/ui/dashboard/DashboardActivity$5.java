// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard;

import com.etermax.preguntados.datasource.dto.enums.SpinType;

// Referenced classes of package com.etermax.preguntados.ui.dashboard:
//            DashboardActivity

class atorType
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[SpinType.values().length];
        try
        {
            b[SpinType.CROWN.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[SpinType.DUEL.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            b[SpinType.FINAL_DUEL.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            b[SpinType.NORMAL.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        a = new int[com.etermax.gamescommon.mediation.ediatorType.values().length];
        try
        {
            a[com.etermax.gamescommon.mediation.ediatorType.admob.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[com.etermax.gamescommon.mediation.ediatorType.mopub.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5)
        {
            return;
        }
    }
}
