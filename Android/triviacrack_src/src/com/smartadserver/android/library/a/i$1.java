// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.a;

import com.smartadserver.android.library.b.d;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library.a:
//            i

final class b
    implements d
{

    final String a;
    final String b;

    public void a(Exception exception)
    {
        c.a(a, (new StringBuilder()).append("logRemoteError failed: ").append(exception.getMessage()).toString());
    }

    public void a(String s)
    {
        c.a(a, (new StringBuilder()).append("logRemoteError called: ").append(b).toString());
    }

    (String s, String s1)
    {
        a = s;
        b = s1;
        super();
    }
}
