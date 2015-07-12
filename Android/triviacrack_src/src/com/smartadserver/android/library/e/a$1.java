// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.e;

import java.io.File;
import java.io.FileFilter;

// Referenced classes of package com.smartadserver.android.library.e:
//            a

class a
    implements FileFilter
{

    final a a;

    public boolean accept(File file)
    {
        return file.isDirectory();
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
