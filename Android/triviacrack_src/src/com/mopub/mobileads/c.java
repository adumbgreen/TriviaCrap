// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import java.lang.ref.WeakReference;
import org.apache.http.HttpResponse;

// Referenced classes of package com.mopub.mobileads:
//            f, AdViewController

abstract class c
{

    WeakReference a;

    c(AdViewController adviewcontroller)
    {
        a = new WeakReference(adviewcontroller);
    }

    static c a(HttpResponse httpresponse, AdViewController adviewcontroller)
    {
        return (new f(httpresponse, adviewcontroller)).a();
    }

    abstract void a();

    abstract void b();
}
