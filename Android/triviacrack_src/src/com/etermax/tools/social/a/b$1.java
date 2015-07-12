// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import android.support.v4.app.Fragment;
import com.etermax.tools.i.a;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.etermax.tools.social.a:
//            g, b, c, h

class a
    implements g
{

    c a[];
    final int b;
    final h c;
    final Fragment d;
    final b e;

    public void a()
    {
        (new a() {

            final b._cls1 a;

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
                    int i = 0;
                    while (i < graphobjectlist.size()) 
                    {
                        JSONObject jsonobject = ((GraphObject)graphobjectlist.get(i)).getInnerJSONObject();
                        try
                        {
                            a.a[i] = new c(a.e, jsonobject.getString("uid"), jsonobject.getString("name"));
                        }
                        catch (JSONException jsonexception)
                        {
                            jsonexception.printStackTrace();
                        }
                        i++;
                    }
                }
                a.c.a(a.a);
                return null;
            }

            
            {
                a = b._cls1.this;
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

    (b b1, int i, h h, Fragment fragment)
    {
        e = b1;
        b = i;
        c = h;
        d = fragment;
        super();
        a = new c[0];
    }
}
