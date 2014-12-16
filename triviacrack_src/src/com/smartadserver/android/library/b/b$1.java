// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

// Referenced classes of package com.smartadserver.android.library.b:
//            b, c

class a
    implements HttpResponseInterceptor
{

    final b a;

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        Header header = httpresponse.getEntity().getContentEncoding();
        if (header == null) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int i;
        int j;
        aheaderelement = header.getElements();
        i = aheaderelement.length;
        j = 0;
_L7:
        if (j >= i) goto _L2; else goto _L3
_L3:
        if (!aheaderelement[j].getName().equalsIgnoreCase("gzip")) goto _L5; else goto _L4
_L4:
        httpresponse.setEntity(new c(httpresponse.getEntity()));
_L2:
        return;
_L5:
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    (b b1)
    {
        a = b1;
        super();
    }
}
