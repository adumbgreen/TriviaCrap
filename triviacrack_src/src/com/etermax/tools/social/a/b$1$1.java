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
//            b, c, h, g

class a extends a
{

    final a a;

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
        GraphObjectList graphobjectlist = com.etermax.tools.social.a.b.a(a.a, a.a);
        if (graphobjectlist != null)
        {
            a.a = new c[graphobjectlist.size()];
            int i = 0;
            while (i < graphobjectlist.size()) 
            {
                JSONObject jsonobject = ((GraphObject)graphobjectlist.get(i)).getInnerJSONObject();
                try
                {
                    a.a[i] = new c(a.a, jsonobject.getString("uid"), jsonobject.getString("name"));
                }
                catch (JSONException jsonexception)
                {
                    jsonexception.printStackTrace();
                }
                i++;
            }
        }
        a.a.a(a.a);
        return null;
    }

    t(t t)
    {
        a = t;
        super();
    }

    // Unreferenced inner class com/etermax/tools/social/a/b$1

/* anonymous class */
    class b._cls1
        implements g
    {

        c a[];
        final int b;
        final h c;
        final Fragment d;
        final b e;

        public void a()
        {
            (new b._cls1._cls1(this)).a(d);
        }

        public void a(String s)
        {
        }

        public void b()
        {
        }

            
            {
                e = b1;
                b = i;
                c = h1;
                d = fragment;
                super();
                a = new c[0];
            }
    }

}
