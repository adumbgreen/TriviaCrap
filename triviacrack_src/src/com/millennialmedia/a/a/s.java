// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a;

import com.millennialmedia.a.a.b.a.f;
import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.c;
import java.io.IOException;

// Referenced classes of package com.millennialmedia.a.a:
//            k, j

public abstract class s
{

    public s()
    {
    }

    public final j a(Object obj)
    {
        j j;
        try
        {
            f f1 = new f();
            a(((c) (f1)), obj);
            j = f1.a();
        }
        catch (IOException ioexception)
        {
            throw new k(ioexception);
        }
        return j;
    }

    public abstract void a(c c, Object obj);

    public abstract Object b(a a1);
}
