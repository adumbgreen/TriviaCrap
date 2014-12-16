// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import com.etermax.tools.g.a;
import twitter4j.Twitter;

// Referenced classes of package com.etermax.tools.social.twitter:
//            a, c

class a extends Thread
{

    final String a;
    final com.etermax.tools.social.twitter.a b;

    public void run()
    {
        com.etermax.tools.social.twitter.a.b(b, com.etermax.tools.social.twitter.a.c(b).getOAuthAccessToken(com.etermax.tools.social.twitter.a.a(b), a));
        com.etermax.tools.social.twitter.a.a(b, com.etermax.tools.social.twitter.a.i(b));
        com.etermax.tools.social.twitter.a.h(b);
_L1:
        return;
        Exception exception;
        exception;
        if (com.etermax.tools.social.twitter.a.d(b) != null)
        {
            com.etermax.tools.social.twitter.a.d(b).a(exception.getMessage());
            if (com.etermax.tools.g.a.a())
            {
                exception.printStackTrace();
                return;
            }
        }
          goto _L1
    }

    (com.etermax.tools.social.twitter.a a1, String s)
    {
        b = a1;
        a = s;
        super();
    }
}
