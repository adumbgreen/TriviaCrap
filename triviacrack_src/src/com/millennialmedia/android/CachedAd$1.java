// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.io.File;
import java.io.FileFilter;

// Referenced classes of package com.millennialmedia.android:
//            CachedAd

class a
    implements FileFilter
{

    final CachedAd a;

    public boolean accept(File file)
    {
        return file.isFile() && file.getName().startsWith(CachedAd.a(a));
    }

    (CachedAd cachedad)
    {
        a = cachedad;
        super();
    }
}
