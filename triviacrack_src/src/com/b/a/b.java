// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

// Referenced classes of package com.b.a:
//            a

class b extends WeakReference
{

    final a a;

    public b(a a1, Object obj, ReferenceQueue referencequeue)
    {
        super(obj, referencequeue);
        a = a1;
    }
}
