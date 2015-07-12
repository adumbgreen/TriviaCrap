// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.b.b.a;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import org.b.d.a;
import org.b.d.j;

// Referenced classes of package org.b.b.a:
//            a, f

public class c extends org.b.b.a.a
    implements f
{

    private final File a;
    private final String b;

    public c(File file)
    {
        org.b.d.a.a(file, "File must not be null");
        a = file;
        b = j.d(file.getPath());
    }

    public File a()
    {
        return a;
    }

    public String c()
    {
        return a.getName();
    }

    public InputStream d()
    {
        return new FileInputStream(a);
    }

    public String e()
    {
        return (new StringBuilder()).append("file [").append(a.getAbsolutePath()).append("]").toString();
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof c) && b.equals(((c)obj).b);
    }

    public int hashCode()
    {
        return b.hashCode();
    }
}
