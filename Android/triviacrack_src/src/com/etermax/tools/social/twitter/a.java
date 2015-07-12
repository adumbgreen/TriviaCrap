// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import com.etermax.o;
import com.etermax.tools.i.c;
import java.io.InputStream;
import twitter4j.StatusUpdate;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;

// Referenced classes of package com.etermax.tools.social.twitter:
//            TwitterLoginActivity, c, b

public class a
{

    public static int b = 403;
    Context a;
    private SharedPreferences c;
    private Twitter d;
    private RequestToken e;
    private AccessToken f;
    private String g;
    private String h;
    private String i;
    private com.etermax.tools.social.twitter.c j;

    public a()
    {
    }

    static String a(a a1, String s)
    {
        a1.g = s;
        return s;
    }

    static RequestToken a(a a1)
    {
        return a1.e;
    }

    static RequestToken a(a a1, RequestToken requesttoken)
    {
        a1.e = requesttoken;
        return requesttoken;
    }

    private void a(Activity activity)
    {
        e();
        activity.startActivity(TwitterLoginActivity.a(activity, e.getAuthenticationURL(), i));
    }

    static void a(a a1, Activity activity)
    {
        a1.b(activity);
    }

    static void a(a a1, AccessToken accesstoken)
    {
        a1.a(accesstoken);
    }

    private void a(AccessToken accesstoken)
    {
        d.setOAuthAccessToken(accesstoken);
        g = accesstoken.getToken();
        h = accesstoken.getTokenSecret();
    }

    static String b(a a1)
    {
        return a1.i;
    }

    static String b(a a1, String s)
    {
        a1.h = s;
        return s;
    }

    static AccessToken b(a a1, AccessToken accesstoken)
    {
        a1.f = accesstoken;
        return accesstoken;
    }

    private void b(Activity activity)
    {
        (new Thread(activity) {

            final Activity a;
            final a b;

            public void run()
            {
                try
                {
                    a.a(b, new AccessToken(a.f(b), a.g(b)));
                    com.etermax.tools.social.twitter.a.c(b).verifyCredentials();
                    a.h(b);
                    return;
                }
                catch (TwitterException twitterexception)
                {
                    if (com.etermax.tools.g.a.a())
                    {
                        twitterexception.printStackTrace();
                    }
                }
                a.b(b, a);
            }

            
            {
                b = a.this;
                a = activity;
                super();
            }
        }).start();
    }

    static void b(a a1, Activity activity)
    {
        a1.a(activity);
    }

    private String c()
    {
        String s = new String((new StringBuilder()).append(d.getId()).append("").toString());
        return s;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        if (com.etermax.tools.g.a.a())
        {
            illegalstateexception.printStackTrace();
        }
_L2:
        return "";
        TwitterException twitterexception;
        twitterexception;
        if (com.etermax.tools.g.a.a())
        {
            twitterexception.printStackTrace();
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    static Twitter c(a a1)
    {
        return a1.d;
    }

    static com.etermax.tools.social.twitter.c d(a a1)
    {
        return a1.j;
    }

    private void d()
    {
        if (c().equals(""))
        {
            j.a("Login error");
            b();
            return;
        } else
        {
            j.a();
            f();
            return;
        }
    }

    static SharedPreferences e(a a1)
    {
        return a1.c;
    }

    private void e()
    {
        g = "";
        h = "";
        f();
    }

    static String f(a a1)
    {
        return a1.g;
    }

    private void f()
    {
        c.edit().putString("tw_access_token", g).putString("tw_access_secret", h).commit();
    }

    static String g(a a1)
    {
        return a1.h;
    }

    static void h(a a1)
    {
        a1.d();
    }

    static AccessToken i(a a1)
    {
        return a1.f;
    }

    protected void a()
    {
        if (a instanceof b)
        {
            String s = ((b)a).r();
            String s1 = ((b)a).s();
            d = (new TwitterFactory()).getInstance();
            d.setOAuthConsumer(s, s1);
            c = a.getSharedPreferences("TW_PREFERENCES", 0);
            f = null;
            e = null;
            i = ((b)a).t();
            return;
        } else
        {
            throw new RuntimeException("Application must implement IApplicationTWManager");
        }
    }

    public void a(Activity activity, com.etermax.tools.social.twitter.c c1)
    {
        com.etermax.a.a.c("TwitterManager", "login");
        j = c1;
        (new c(activity.getString(o.loading), activity) {

            final Activity a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(Activity activity1, Exception exception)
            {
                b(false);
                super.a(activity1, exception);
                if (exception instanceof TwitterException)
                {
                    a.d(b).a(((TwitterException)exception).getErrorMessage());
                    if (com.etermax.tools.g.a.a())
                    {
                        exception.printStackTrace();
                    }
                }
            }

            protected void a(Activity activity1, Void void1)
            {
label0:
                {
                    super.a(activity1, void1);
                    if (a.a(b) != null)
                    {
                        a.a(b, a.e(b).getString("tw_access_token", ""));
                        a.b(b, a.e(b).getString("tw_access_secret", ""));
                        if (a.f(b).equals("") || a.g(b).equals(""))
                        {
                            break label0;
                        }
                        a.a(b, a);
                    }
                    return;
                }
                a.b(b, a);
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
                if (a.a(b) == null)
                {
                    a.a(b, com.etermax.tools.social.twitter.a.c(b).getOAuthRequestToken((new StringBuilder()).append(a.b(b)).append(":///").toString()));
                }
                return null;
            }

            
            {
                b = a.this;
                a = activity;
                super(s);
            }
        }).a(activity);
    }

    public void a(String s)
    {
        (new Thread(s) {

            final String a;
            final a b;

            public void run()
            {
                a.b(b, com.etermax.tools.social.twitter.a.c(b).getOAuthAccessToken(a.a(b), a));
                a.a(b, a.i(b));
                a.h(b);
_L1:
                return;
                Exception exception;
                exception;
                if (a.d(b) != null)
                {
                    a.d(b).a(exception.getMessage());
                    if (com.etermax.tools.g.a.a())
                    {
                        exception.printStackTrace();
                        return;
                    }
                }
                  goto _L1
            }

            
            {
                b = a.this;
                a = s;
                super();
            }
        }).start();
    }

    public void a(String s, InputStream inputstream)
    {
        if (inputstream != null)
        {
            try
            {
                StatusUpdate statusupdate = new StatusUpdate(s);
                statusupdate.setMedia("move", inputstream);
                d.updateStatus(statusupdate);
                return;
            }
            catch (TwitterException twitterexception)
            {
                if (twitterexception.getStatusCode() != b)
                {
                    throw twitterexception;
                } else
                {
                    return;
                }
            }
        }
        d.updateStatus(s);
        return;
    }

    public void b()
    {
        a();
        e();
    }

    public void b(String s)
    {
        a(s, ((InputStream) (null)));
    }

    public void c(String s)
    {
        d.createFriendship(s);
    }

}
