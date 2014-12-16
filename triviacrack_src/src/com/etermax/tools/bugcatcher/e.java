// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            c, i, g, h

class e extends AsyncTask
{

    final c a;
    private boolean b;

    private e(c c1)
    {
        a = c1;
        super();
    }

    e(c c1, c._cls1 _pcls1)
    {
        this(c1);
    }

    private int a(ArrayList arraylist)
    {
        String s = c.h(a).getString("LAST_VERSION", null);
        Iterator iterator = arraylist.iterator();
        int j = 0;
        do
        {
            if (!iterator.hasNext() || ((com.etermax.tools.bugcatcher.i)iterator.next()).b().equals(s))
            {
                return j;
            }
            j++;
        } while (true);
    }

    private int b(List list)
    {
        String s;
        Iterator iterator;
        try
        {
            s = a.getContext().getPackageManager().getPackageInfo(a.getContext().getPackageName(), 0).versionName.replaceAll("-SNAPSHOT", "");
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return -1;
        }
        iterator = list.iterator();
        for (int j = 0; iterator.hasNext(); j++)
        {
            int l = ((com.etermax.tools.bugcatcher.i)iterator.next()).c().compareTo(s);
            if (l == 0)
            {
                return j;
            }
            if (l < 0)
            {
                return -1;
            }
        }

        return -1;
    }

    protected transient List a(Void avoid[])
    {
        List list2 = c.c(a).b(a.getContext().getResources().getString(o.jira_project));
        List list = list2;
_L2:
        return list;
        g g1;
        g1;
        b = true;
        boolean flag = c.c(a).a();
        list = null;
        if (flag)
        {
            List list1;
            try
            {
                list1 = c.c(a).b(a.getContext().getResources().getString(o.jira_project));
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
                return null;
            }
            return list1;
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        exception.printStackTrace();
        return null;
    }

    protected void a(List list)
    {
        if (list != null)
        {
            a.findViewById(i.loading).setVisibility(8);
            c.a(a, list);
            a.a = new ArrayList();
            Iterator iterator = c.f(a).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                com.etermax.tools.bugcatcher.i i1 = (com.etermax.tools.bugcatcher.i)iterator.next();
                if (!i1.a())
                {
                    a.a.add(i1);
                }
            } while (true);
            c.f(a).add(0, new com.etermax.tools.bugcatcher.i(null, "None", false));
            int j = a(a.a);
            ((Spinner)a.findViewById(i.fix_version)).setAdapter(new ArrayAdapter(a.getContext(), k.spinner_item, i.textview, a.a));
            ((Spinner)a.findViewById(i.affects_version)).setAdapter(new ArrayAdapter(a.getContext(), k.spinner_item, i.textview, c.f(a)));
            if (j < a.a.size())
            {
                ((Spinner)a.findViewById(i.fix_version)).setSelection(j);
            }
            int l = b(c.f(a));
            if (l != -1)
            {
                ((Spinner)a.findViewById(i.affects_version)).setSelection(l);
            }
            return;
        }
        if (b)
        {
            Toast.makeText(a.getContext(), o.jira_session_expired, 0).show();
            a.findViewById(i.loading).setVisibility(8);
            c.g(a);
            return;
        } else
        {
            Toast.makeText(a.getContext(), o.jira_error_loading_versions, 1).show();
            a.dismiss();
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((List)obj);
    }

    protected void onPreExecute()
    {
        a.findViewById(i.loading).setVisibility(0);
    }
}
