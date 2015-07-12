// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.tabs;

import java.util.HashMap;
import java.util.Map;
import java.util.Observable;

// Referenced classes of package com.etermax.gamescommon.dashboard.tabs:
//            b

public class a extends Observable
{

    private Map a;

    public a()
    {
        a = new HashMap();
    }

    public int a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        int i = ((b)a.get(s)).a();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }
}
