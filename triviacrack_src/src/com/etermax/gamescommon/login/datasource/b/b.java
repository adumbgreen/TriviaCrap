// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource.b;

import android.util.SparseIntArray;
import com.etermax.o;

public class b extends com.etermax.tools.a.c.b
{

    private static final SparseIntArray a;

    public b(int i)
    {
        super(i, null, null);
    }

    public b(org.b.e.a.b b1)
    {
        super(b1);
    }

    public int a()
    {
        return o.unknown_error;
    }

    public final int b()
    {
        return a.get(c());
    }

    static 
    {
        a = new SparseIntArray();
        a.put(201, o.username_already_registered);
        a.put(202, o.email_typo_desc);
        a.put(211, o.error_invalid_email);
        a.put(212, o.error_invalid_user_message);
        a.put(213, o.error_invalid_password);
        a.put(301, o.username_available);
        a.put(303, o.email_not_registered);
        a.put(604, o.password_incorrect);
        a.put(607, o.facebook_credentials_invalid);
        a.put(610, o.password_reseted_recently);
        a.put(611, o.password_reset_week_limit);
    }
}
