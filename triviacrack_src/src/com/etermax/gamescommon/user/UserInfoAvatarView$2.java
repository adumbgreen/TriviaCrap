// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user;


// Referenced classes of package com.etermax.gamescommon.user:
//            UserInfoAvatarView

class TO.Status
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[com.etermax.gamescommon.login.datasource.dto.tus.values().length];
        try
        {
            b[com.etermax.gamescommon.login.datasource.dto.tus.INVITING.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[com.etermax.gamescommon.login.datasource.dto.tus.INVITED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            b[com.etermax.gamescommon.login.datasource.dto.tus.NOT_INVITED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        a = new int[com.etermax.gamescommon.login.datasource.dto.().length];
        try
        {
            a[com.etermax.gamescommon.login.datasource.dto..l()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[com.etermax.gamescommon.login.datasource.dto.E.l()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[com.etermax.gamescommon.login.datasource.dto..l()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5)
        {
            return;
        }
    }
}
