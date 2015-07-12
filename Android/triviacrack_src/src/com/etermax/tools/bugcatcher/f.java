// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.os.AsyncTask;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.o;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            c, h, e

class f extends AsyncTask
{

    final c a;

    private f(c c1)
    {
        a = c1;
        super();
    }

    f(c c1, c._cls1 _pcls1)
    {
        this(c1);
    }

    protected transient Boolean a(Void avoid[])
    {
        Boolean boolean1;
        try
        {
            c.c(a).a(c.a(a).getText().toString().trim(), c.b(a).getText().toString().trim());
            boolean1 = Boolean.valueOf(true);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return Boolean.valueOf(false);
        }
        return boolean1;
    }

    protected void a(Boolean boolean1)
    {
        a.findViewById(i.loading).setVisibility(8);
        c.b(a).setText("");
        if (boolean1.booleanValue())
        {
            c.d(a).setText(c.c(a).c());
            c.e(a);
            if (a.a == null)
            {
                e e1 = new e(a, null);
                Void avoid[] = new Void[1];
                avoid[0] = (Void)null;
                e1.execute(avoid);
            }
            return;
        } else
        {
            Toast.makeText(a.getContext(), o.jira_error_login, 1).show();
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onPreExecute()
    {
        a.findViewById(i.loading).setVisibility(0);
    }
}
