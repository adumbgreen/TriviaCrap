// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.c.a.a;

import android.util.Log;
import java.net.URI;
import org.b.c.a.e;
import org.b.c.a.g;
import org.b.c.a.k;
import org.b.c.a.q;
import org.b.c.f;

public abstract class a
{

    private static final String a = org/b/c/a/a/a.getSimpleName();
    private g b;

    protected a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            b = new q();
            return;
        } else
        {
            b = new k();
            return;
        }
    }

    protected e a(URI uri, f f1)
    {
        e e = a().a(uri, f1);
        if (Log.isLoggable(a, 3))
        {
            Log.d(a, (new StringBuilder()).append("Created ").append(f1.name()).append(" request for \"").append(uri).append("\"").toString());
        }
        return e;
    }

    public g a()
    {
        return b;
    }

    public void a(g g1)
    {
        org.b.d.a.a(g1, "'requestFactory' must not be null");
        b = g1;
    }

}
