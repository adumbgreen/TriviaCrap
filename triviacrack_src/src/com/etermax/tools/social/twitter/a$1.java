// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.app.Activity;
import android.content.SharedPreferences;
import com.etermax.tools.g.a;
import com.etermax.tools.i.c;
import twitter4j.Twitter;
import twitter4j.TwitterException;

// Referenced classes of package com.etermax.tools.social.twitter:
//            a, c

class a extends c
{

    final Activity a;
    final com.etermax.tools.social.twitter.a b;

    public Object a()
    {
        return b();
    }

    protected void a(Activity activity, Exception exception)
    {
        b(false);
        super.a(activity, exception);
        if (exception instanceof TwitterException)
        {
            com.etermax.tools.social.twitter.a.d(b).a(((TwitterException)exception).getErrorMessage());
            if (com.etermax.tools.g.a.a())
            {
                exception.printStackTrace();
            }
        }
    }

    protected void a(Activity activity, Void void1)
    {
label0:
        {
            super.a(activity, void1);
            if (com.etermax.tools.social.twitter.a.a(b) != null)
            {
                com.etermax.tools.social.twitter.a.a(b, com.etermax.tools.social.twitter.a.e(b).getString("tw_access_token", ""));
                com.etermax.tools.social.twitter.a.b(b, com.etermax.tools.social.twitter.a.e(b).getString("tw_access_secret", ""));
                if (com.etermax.tools.social.twitter.a.f(b).equals("") || com.etermax.tools.social.twitter.a.g(b).equals(""))
                {
                    break label0;
                }
                com.etermax.tools.social.twitter.a.a(b, a);
            }
            return;
        }
        com.etermax.tools.social.twitter.a.b(b, a);
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((Activity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((Activity)obj, (Void)obj1);
    }

    public Void b()
    {
        if (com.etermax.tools.social.twitter.a.a(b) == null)
        {
            com.etermax.tools.social.twitter.a.a(b, com.etermax.tools.social.twitter.a.c(b).getOAuthRequestToken((new StringBuilder()).append(com.etermax.tools.social.twitter.a.b(b)).append(":///").toString()));
        }
        return null;
    }

    (com.etermax.tools.social.twitter.a a1, String s, Activity activity)
    {
        b = a1;
        a = activity;
        super(s);
    }
}
