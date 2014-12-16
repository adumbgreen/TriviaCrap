// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.etermax.tools.g.a;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.model.GraphMultiResult;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.GraphUser;
import com.facebook.widget.WebDialog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.etermax.tools.social.a:
//            d, i, g, a, 
//            c, h, e, f

public class b
{

    Context a;
    private SharedPreferences b;
    private GraphUser c;
    private c d[];
    private c e[];
    private Map f;

    public b()
    {
    }

    private Response a(String s)
    {
        Bundle bundle = new Bundle();
        bundle.putString("q", s);
        Response response;
        try
        {
            response = a("/fql", bundle, HttpMethod.GET);
        }
        catch (Exception exception)
        {
            throw new FacebookException();
        }
        return response;
    }

    private Response a(String s, Bundle bundle, HttpMethod httpmethod)
    {
        Session session = Session.getActiveSession();
        Response response1;
        if (session.isClosed())
        {
            response1 = null;
        } else
        {
            Request request = new Request(session, s, bundle, httpmethod);
            Response response;
            try
            {
                response = request.executeAndWait();
            }
            catch (Exception exception)
            {
                throw new FacebookException();
            }
            response1 = response;
            if (response1.getError() != null)
            {
                throw new FacebookException(response1.getError().getErrorMessage());
            }
        }
        return response1;
    }

    private GraphObjectList a(int i1)
    {
        GraphMultiResult graphmultiresult = (GraphMultiResult)a((new StringBuilder()).append("SELECT uid, name FROM user WHERE uid IN (SELECT uid2 FROM friend WHERE uid1 = me() ) order by rand() limit ").append(i1).toString()).getGraphObjectAs(com/facebook/model/GraphMultiResult);
        if (graphmultiresult != null)
        {
            return graphmultiresult.getData();
        } else
        {
            return null;
        }
    }

    static GraphObjectList a(b b1, int i1)
    {
        return b1.a(i1);
    }

    private Session l()
    {
        com.facebook.Session.Builder builder = new com.facebook.Session.Builder(a);
        builder.setApplicationId(((d)a).o());
        Session session = builder.build();
        Session.setActiveSession(session);
        return session;
    }

    private GraphObjectList m()
    {
        GraphMultiResult graphmultiresult = (GraphMultiResult)a("SELECT uid, name, is_app_user FROM user WHERE uid IN (SELECT uid2 FROM friend WHERE uid1 = me()) order by is_app_user desc").getGraphObjectAs(com/facebook/model/GraphMultiResult);
        if (graphmultiresult != null)
        {
            return graphmultiresult.getData();
        } else
        {
            return null;
        }
    }

    protected void a()
    {
        if (a instanceof d)
        {
            b = a.getSharedPreferences("FB_PREFERENCES", 0);
            if (com.etermax.tools.g.a.a())
            {
                Settings.addLoggingBehavior(LoggingBehavior.INCLUDE_ACCESS_TOKENS);
            }
            if (Session.getActiveSession() == null)
            {
                l();
            }
            return;
        } else
        {
            throw new RuntimeException("Application must implement IApplicationFBManager");
        }
    }

    public void a(int i1, Fragment fragment, h h1)
    {
        a(((Activity) (fragment.getActivity())), new g(i1, h1, fragment) {

            c a[];
            final int b;
            final h c;
            final Fragment d;
            final b e;

            public void a()
            {
                (new com.etermax.tools.i.a(this) {

                    final _cls1 a;

                    public Object a()
                    {
                        return b();
                    }

                    protected void a(Fragment fragment, Exception exception)
                    {
                        super.a(fragment, exception);
                    }

                    protected volatile void a(Object obj, Exception exception)
                    {
                        a((Fragment)obj, exception);
                    }

                    public Void b()
                    {
                        GraphObjectList graphobjectlist = com.etermax.tools.social.a.b.a(a.e, a.b);
                        if (graphobjectlist != null)
                        {
                            a.a = new c[graphobjectlist.size()];
                            int i1 = 0;
                            while (i1 < graphobjectlist.size()) 
                            {
                                JSONObject jsonobject = ((GraphObject)graphobjectlist.get(i1)).getInnerJSONObject();
                                try
                                {
                                    a.a[i1] = new c(a.e, jsonobject.getString("uid"), jsonobject.getString("name"));
                                }
                                catch (JSONException jsonexception)
                                {
                                    jsonexception.printStackTrace();
                                }
                                i1++;
                            }
                        }
                        a.c.a(a.a);
                        return null;
                    }

            
            {
                a = _pcls1;
                super();
            }
                }).a(d);
            }

            public void a(String s)
            {
            }

            public void b()
            {
            }

            
            {
                e = b.this;
                b = i1;
                c = h1;
                d = fragment;
                super();
                a = new c[0];
            }
        });
    }

    public void a(Activity activity, int i1, int j1, Intent intent)
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            session.onActivityResult(activity, i1, j1, intent);
        }
    }

    public void a(Activity activity, Uri uri)
    {
        a(activity, new g(uri) {

            final Uri a;
            final b b;

            public void a()
            {
                b.a(a);
            }

            public void a(String s)
            {
            }

            public void b()
            {
            }

            
            {
                b = b.this;
                a = uri;
                super();
            }
        });
    }

    public void a(Activity activity, g g1)
    {
        a(activity, false, g1);
    }

    public void a(Activity activity, String s, g g1)
    {
        a(activity, new g(g1, s, activity) {

            final g a;
            final String b;
            final Activity c;
            final b d;

            public void a()
            {
                Bundle bundle = new Bundle();
                bundle.putString("filters", "['app_non_users']");
                bundle.putString("message", b);
                com.facebook.widget.WebDialog.RequestsDialogBuilder requestsdialogbuilder = new com.facebook.widget.WebDialog.RequestsDialogBuilder(c, Session.getActiveSession(), bundle);
                requestsdialogbuilder.setOnCompleteListener(new com.facebook.widget.WebDialog.OnCompleteListener(this) {

                    final _cls3 a;

                    public void onComplete(Bundle bundle, FacebookException facebookexception)
                    {
                        if (facebookexception == null)
                        {
                            if (bundle.containsKey("request"))
                            {
                                a.a.a();
                                return;
                            } else
                            {
                                a.a.b();
                                return;
                            }
                        }
                        if (facebookexception instanceof FacebookOperationCanceledException)
                        {
                            a.a.b();
                            return;
                        } else
                        {
                            a.a.a(facebookexception.getMessage());
                            return;
                        }
                    }

            
            {
                a = _pcls3;
                super();
            }
                });
                requestsdialogbuilder.build().show();
            }

            public void a(String s1)
            {
                a.a(s1);
            }

            public void b()
            {
                a.b();
            }

            
            {
                d = b.this;
                a = g1;
                b = s;
                c = activity;
                super();
            }
        });
    }

    public void a(Activity activity, String s, String as[], e e1)
    {
        a(activity, new g(e1, s, as, activity) {

            final e a;
            final String b;
            final String c[];
            final Activity d;
            final b e;

            public void a()
            {
                Bundle bundle = new Bundle();
                bundle.putString("message", b);
                bundle.putBoolean("frictionless", true);
                String s1 = "";
                if (c.length > 0)
                {
                    for (int i1 = 0; i1 < -1 + c.length; i1++)
                    {
                        s1 = (new StringBuilder()).append(s1).append(c[i1]).append(",").toString();
                    }

                    s1 = (new StringBuilder()).append(s1).append(c[-1 + c.length]).toString();
                }
                bundle.putString("exclude_ids", s1);
                com.facebook.widget.WebDialog.RequestsDialogBuilder requestsdialogbuilder = new com.facebook.widget.WebDialog.RequestsDialogBuilder(d, Session.getActiveSession(), bundle);
                requestsdialogbuilder.setOnCompleteListener(new com.facebook.widget.WebDialog.OnCompleteListener(this) {

                    final _cls5 a;

                    public void onComplete(Bundle bundle, FacebookException facebookexception)
                    {
                        if (facebookexception == null)
                        {
                            if (bundle.containsKey("request"))
                            {
                                Set set = bundle.keySet();
                                ArrayList arraylist = new ArrayList();
                                Iterator iterator = set.iterator();
                                do
                                {
                                    if (!iterator.hasNext())
                                    {
                                        break;
                                    }
                                    String s = (String)iterator.next();
                                    com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("key ").append(s).append(" vlaue ").append(bundle.getString(s)).toString());
                                    if (s.contains("to["))
                                    {
                                        arraylist.add(bundle.getString(s));
                                    }
                                } while (true);
                                a.a.a((String[])arraylist.toArray(new String[arraylist.size()]));
                                return;
                            } else
                            {
                                a.a.a();
                                return;
                            }
                        }
                        if (facebookexception instanceof FacebookOperationCanceledException)
                        {
                            a.a.a();
                            return;
                        } else
                        {
                            a.a.a(facebookexception.getMessage());
                            return;
                        }
                    }

            
            {
                a = _pcls5;
                super();
            }
                });
                requestsdialogbuilder.build().show();
            }

            public void a(String s1)
            {
                a.a(s1);
            }

            public void b()
            {
                a.a();
            }

            
            {
                e = b.this;
                a = e1;
                b = s;
                c = as;
                d = activity;
                super();
            }
        });
    }

    public void a(Activity activity, boolean flag, g g1)
    {
        String s = b.getString("access_token", null);
        Session session = Session.getActiveSession();
        Session session1;
        int i1;
        i j1;
        if (session.getState() == SessionState.CLOSED || session.getState() == SessionState.CLOSED_LOGIN_FAILED)
        {
            session1 = l();
        } else
        {
            session1 = session;
        }
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        j1 = new i(this, activity, i1, g1);
        if (s != null)
        {
            com.etermax.a.a.c("Facebook Manager", "Existing access token from facebook 2.0 sdk");
            com.etermax.a.a.c("Facebook Manager", "Opening session using the old access token.");
            session1.open(AccessToken.createFromExistingAccessToken(s, null, null, null, Arrays.asList(new String[] {
                "email", "publish_stream"
            })), j1);
            android.content.SharedPreferences.Editor editor = b.edit();
            editor.remove("access_token");
            editor.remove("access_expires");
            editor.commit();
        } else
        {
            if (!session1.isOpened() && !session1.isClosed())
            {
                if (flag)
                {
                    session1.openForPublish((new com.facebook.Session.OpenRequest(activity)).setPermissions(Arrays.asList(new String[] {
                        "email", "publish_actions"
                    })).setCallback(j1));
                    return;
                } else
                {
                    session1.openForRead((new com.facebook.Session.OpenRequest(activity)).setPermissions(Arrays.asList(new String[] {
                        "email"
                    })).setCallback(j1));
                    return;
                }
            }
            if (flag && b())
            {
                g1.a();
                return;
            }
            if (!flag)
            {
                g1.a();
                return;
            }
            if (!b())
            {
                session1.addCallback(j1);
                session1.requestNewPublishPermissions(new com.facebook.Session.NewPermissionsRequest(activity, Arrays.asList(new String[] {
                    "publish_actions"
                })));
                return;
            }
        }
    }

    public void a(Uri uri)
    {
        String s1;
        String s = uri.getQueryParameter("request_ids");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        String as[] = s.split(",");
        s1 = as[-1 + as.length];
        String s2 = i();
        a(new Request(Session.getActiveSession(), (new StringBuilder()).append(s1).append("_").append(s2).toString(), new Bundle(), HttpMethod.DELETE, new com.facebook.Request.Callback() {

            final b a;

            public void onCompleted(Response response)
            {
            }

            
            {
                a = b.this;
                super();
            }
        }));
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        return;
    }

    public void a(FragmentActivity fragmentactivity, String s, String s1, g g1)
    {
        a(((Activity) (fragmentactivity)), new g(g1, s1, s, fragmentactivity) {

            final g a;
            final String b;
            final String c;
            final FragmentActivity d;
            final b e;

            public void a()
            {
                Bundle bundle = new Bundle();
                bundle.putString("to", b);
                bundle.putString("message", c);
                com.facebook.widget.WebDialog.RequestsDialogBuilder requestsdialogbuilder = new com.facebook.widget.WebDialog.RequestsDialogBuilder(d, Session.getActiveSession(), bundle);
                requestsdialogbuilder.setOnCompleteListener(new com.facebook.widget.WebDialog.OnCompleteListener(this) {

                    final _cls4 a;

                    public void onComplete(Bundle bundle, FacebookException facebookexception)
                    {
                        if (facebookexception == null)
                        {
                            if (bundle.containsKey("request"))
                            {
                                a.a.a();
                                return;
                            } else
                            {
                                a.a.b();
                                return;
                            }
                        }
                        if (facebookexception instanceof FacebookOperationCanceledException)
                        {
                            a.a.b();
                            return;
                        } else
                        {
                            a.a.a(facebookexception.getMessage());
                            return;
                        }
                    }

            
            {
                a = _pcls4;
                super();
            }
                });
                requestsdialogbuilder.build().show();
            }

            public void a(String s2)
            {
                a.a(s2);
            }

            public void b()
            {
                a.b();
            }

            
            {
                e = b.this;
                a = g1;
                b = s;
                c = s1;
                d = fragmentactivity;
                super();
            }
        });
    }

    public void a(f f1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "cover");
        (new Request(Session.getActiveSession(), "/me", bundle, HttpMethod.GET, new com.facebook.Request.Callback(f1) {

            final f a;
            final b b;

            public void onCompleted(Response response)
            {
                JSONObject jsonobject = (JSONObject)response.getGraphObject().getProperty("cover");
                if (jsonobject == null)
                {
                    break MISSING_BLOCK_LABEL_63;
                }
                String s1 = jsonobject.getString("source");
                String s = s1;
_L1:
                Exception exception;
                if (!TextUtils.isEmpty(s))
                {
                    a.a(s);
                    return;
                } else
                {
                    a.a();
                    return;
                }
                exception;
                a.b("No Cover Photo?");
                s = null;
                  goto _L1
            }

            
            {
                b = b.this;
                a = f1;
                super();
            }
        })).executeAsync();
    }

    public void a(Request request)
    {
        Request.executeBatchAsync(new Request[] {
            request
        });
    }

    public void b(Activity activity, String s, String as[], e e1)
    {
        a(activity, new g(e1, s, as, activity) {

            final e a;
            final String b;
            final String c[];
            final Activity d;
            final b e;

            public void a()
            {
                Bundle bundle = new Bundle();
                bundle.putString("message", b);
                bundle.putString("frictionless", "1");
                if (c.length > 0)
                {
                    String s1 = "";
                    for (int i1 = 0; i1 < -1 + c.length; i1++)
                    {
                        s1 = (new StringBuilder()).append(s1).append(c[i1]).append(",").toString();
                    }

                    bundle.putString("to", (new StringBuilder()).append(s1).append(c[-1 + c.length]).toString());
                }
                com.facebook.widget.WebDialog.RequestsDialogBuilder requestsdialogbuilder = new com.facebook.widget.WebDialog.RequestsDialogBuilder(d, Session.getActiveSession(), bundle);
                requestsdialogbuilder.setOnCompleteListener(new com.facebook.widget.WebDialog.OnCompleteListener(this) {

                    final _cls6 a;

                    public void onComplete(Bundle bundle, FacebookException facebookexception)
                    {
                        if (facebookexception == null)
                        {
                            if (bundle.containsKey("request"))
                            {
                                a.a.a(a.c);
                                return;
                            } else
                            {
                                a.a.a();
                                return;
                            }
                        }
                        if (facebookexception instanceof FacebookOperationCanceledException)
                        {
                            a.a.a();
                            return;
                        } else
                        {
                            a.a.a(facebookexception.getMessage());
                            return;
                        }
                    }

            
            {
                a = _pcls6;
                super();
            }
                });
                requestsdialogbuilder.build().show();
            }

            public void a(String s1)
            {
                a.a(s1);
            }

            public void b()
            {
                a.a();
            }

            
            {
                e = b.this;
                a = e1;
                b = s;
                c = as;
                d = activity;
                super();
            }
        });
    }

    public boolean b()
    {
        Session session = Session.getActiveSession();
        return session != null && session.getPermissions().contains("publish_actions");
    }

    public void c()
    {
        c = null;
        d = null;
        e = null;
        if (f != null)
        {
            f.clear();
        }
        f = null;
    }

    public void d()
    {
        Session session;
        try
        {
            c();
            session = Session.getActiveSession();
        }
        catch (Exception exception)
        {
            return;
        }
        if (session == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        if (!session.isClosed())
        {
            session.closeAndClearTokenInformation();
        }
    }

    public GraphUser e()
    {
        if (c == null)
        {
            Response response = Request.newMeRequest(Session.getActiveSession(), null).executeAndWait();
            if (response != null && response.getError() == null)
            {
                c = (GraphUser)response.getGraphObjectAs(com/facebook/model/GraphUser);
            } else
            if (response.getError() != null)
            {
                throw new com.etermax.tools.social.a.a(response.getError().getErrorMessage());
            }
        }
        return c;
    }

    public String f()
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            return session.getAccessToken();
        } else
        {
            return null;
        }
    }

    public boolean g()
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            return session.isOpened();
        } else
        {
            return false;
        }
    }

    public boolean h()
    {
        Session session = Session.getActiveSession();
        boolean flag = false;
        if (session != null)
        {
            SessionState sessionstate = session.getState();
            SessionState sessionstate1 = SessionState.CLOSED;
            flag = false;
            if (sessionstate != sessionstate1)
            {
                SessionState sessionstate2 = session.getState();
                SessionState sessionstate3 = SessionState.CLOSED_LOGIN_FAILED;
                flag = false;
                if (sessionstate2 != sessionstate3)
                {
                    boolean flag1 = TextUtils.isEmpty(session.getAccessToken());
                    flag = false;
                    if (!flag1)
                    {
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public String i()
    {
        return e().getId();
    }

    public String j()
    {
        String s;
        try
        {
            s = e().getInnerJSONObject().getString("email");
        }
        catch (Exception exception)
        {
            return null;
        }
        return s;
    }

    public c[] k()
    {
        if (e == null || e.length == 0)
        {
            GraphObjectList graphobjectlist = m();
            if (graphobjectlist != null)
            {
                c ac[] = new c[graphobjectlist.size()];
                for (int i1 = 0; i1 < graphobjectlist.size(); i1++)
                {
                    JSONObject jsonobject = ((GraphObject)graphobjectlist.get(i1)).getInnerJSONObject();
                    ac[i1] = new c(this, jsonobject.getString("uid"), jsonobject.getString("name"), jsonobject.getBoolean("is_app_user"));
                }

                e = ac;
            } else
            {
                e = new c[0];
            }
        }
        return e;
    }

    // Unreferenced inner class com/etermax/tools/social/a/b$2

/* anonymous class */
    class _cls2
    {

        static final int a[];

        static 
        {
            a = new int[SessionState.values().length];
            try
            {
                a[SessionState.CLOSED.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[SessionState.CLOSED_LOGIN_FAILED.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                a[SessionState.CREATED.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                a[SessionState.CREATED_TOKEN_LOADED.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                a[SessionState.OPENED.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                a[SessionState.OPENED_TOKEN_UPDATED.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                a[SessionState.OPENING.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror6)
            {
                return;
            }
        }
    }

}
