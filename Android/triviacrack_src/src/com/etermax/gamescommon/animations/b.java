// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.animations;


// Referenced classes of package com.etermax.gamescommon.animations:
//            a

public class b extends Exception
{

    final a a;

    public b(a a1)
    {
        a = a1;
        super();
    }

    public String getMessage()
    {
        return (new StringBuilder()).append("La versi\363n suminstrada del documento no es soportada por este cliente - ").append(super.getMessage()).toString();
    }
}
