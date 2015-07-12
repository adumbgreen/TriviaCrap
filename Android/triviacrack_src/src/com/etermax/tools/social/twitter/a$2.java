// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.app.Activity;
import com.etermax.tools.g.a;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.auth.AccessToken;

// Referenced classes of package com.etermax.tools.social.twitter:
//            a

class a extends Thread
{

    final Activity a;
    final com.etermax.tools.social.twitter.a b;

    public void run()
    {
        try
        {
            com.etermax.tools.social.twitter.a.a(b, new AccessToken(com.etermax.tools.social.twitter.a.f(b), com.etermax.tools.social.twitter.a.g(b)));
            com.etermax.tools.social.twitter.a.c(b).verifyCredentials();
            com.etermax.tools.social.twitter.a.h(b);
            return;
        }
        catch (TwitterException twitterexception)
        {
            if (com.etermax.tools.g.a.a())
            {
                twitterexception.printStackTrace();
            }
        }
        com.etermax.tools.social.twitter.a.b(b, a);
    }

    (com.etermax.tools.social.twitter.a a1, Activity activity)
    {
        b = a1;
        a = activity;
        super();
    }
}
