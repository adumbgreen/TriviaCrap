// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.a.a.b.a;

import com.millennialmedia.a.a.d.a;
import com.millennialmedia.a.a.d.b;
import com.millennialmedia.a.a.d.c;
import com.millennialmedia.a.a.k;
import com.millennialmedia.a.a.s;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package com.millennialmedia.a.a.b.a:
//            p

final class  extends s
{

    public URI a(a a1)
    {
        if (a1.f() != b.i) goto _L2; else goto _L1
_L1:
        a1.j();
_L4:
        return null;
_L2:
        String s1 = a1.h();
        if ("null".equals(s1)) goto _L4; else goto _L3
_L3:
        URI uri = new URI(s1);
        return uri;
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
        throw new k(urisyntaxexception);
    }

    public volatile void a(c c1, Object obj)
    {
        a(c1, (URI)obj);
    }

    public void a(c c1, URI uri)
    {
        String s1;
        if (uri == null)
        {
            s1 = null;
        } else
        {
            s1 = uri.toASCIIString();
        }
        c1.b(s1);
    }

    public Object b(a a1)
    {
        return a(a1);
    }

    ()
    {
    }
}
