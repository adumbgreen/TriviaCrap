// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.b.a;

import java.io.File;
import java.io.FileNotFoundException;

// Referenced classes of package org.b.b.a:
//            e

public abstract class a
    implements e
{

    public a()
    {
    }

    public File a()
    {
        throw new FileNotFoundException((new StringBuilder()).append(e()).append(" cannot be resolved to absolute file path").toString());
    }

    public long b()
    {
        return a().length();
    }

    public String c()
    {
        throw new IllegalStateException((new StringBuilder()).append(e()).append(" does not have a filename").toString());
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof e) && ((e)obj).e().equals(e());
    }

    public int hashCode()
    {
        return e().hashCode();
    }

    public String toString()
    {
        return e();
    }
}
