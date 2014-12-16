// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import com.facebook.SessionState;

// Referenced classes of package com.etermax.tools.social.a:
//            b

class 
{

    static final int a[];

    static 
    {
        a = new int[SessionState.values().length];
        try
        {
            a[SessionState.CLOSED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[SessionState.CLOSED_LOGIN_FAILED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[SessionState.CREATED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[SessionState.CREATED_TOKEN_LOADED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[SessionState.OPENED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[SessionState.OPENED_TOKEN_UPDATED.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[SessionState.OPENING.ordinal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror6)
        {
            return;
        }
    }
}
