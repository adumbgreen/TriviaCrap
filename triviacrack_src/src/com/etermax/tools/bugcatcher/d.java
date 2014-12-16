// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.text.Editable;
import android.util.Base64;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import com.etermax.c;
import com.etermax.i;
import com.etermax.o;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            c, i, h

class d extends AsyncTask
{

    final com.etermax.tools.bugcatcher.c a;

    private d(com.etermax.tools.bugcatcher.c c1)
    {
        a = c1;
        super();
    }

    d(com.etermax.tools.bugcatcher.c c1, c._cls1 _pcls1)
    {
        this(c1);
    }

    private String a(String s)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        Bitmap bitmap = BitmapFactory.decodeFile(s, options);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
        return Base64.encodeToString(bytearrayoutputstream.toByteArray(), 0);
    }

    protected transient Boolean a(Boolean aboolean[])
    {
        if (com.etermax.tools.bugcatcher.c.i(a) == null)
        {
            c.a(a, "");
        }
        if (c.j(a).getText().length() <= 0) goto _L2; else goto _L1
_L1:
        String s1;
        s1 = c.j(a).getText().toString();
        if (com.etermax.tools.bugcatcher.c.i(a).length() > 0)
        {
            s1 = (new StringBuilder()).append(s1).append("\n\n").append(com.etermax.tools.bugcatcher.c.i(a)).toString();
        }
_L3:
        String s2 = com.etermax.tools.bugcatcher.c.c(a).a(a.getContext().getResources().getString(o.jira_project), c.k(a).getText().toString().trim(), s1, a.getContext().getResources().getString(o.jira_component_id), ((com.etermax.tools.bugcatcher.i)a.a.get(((Spinner)a.findViewById(i.fix_version)).getSelectedItemPosition())).b(), ((com.etermax.tools.bugcatcher.i)c.f(a).get(((Spinner)a.findViewById(i.affects_version)).getSelectedItemPosition())).b(), a.getContext().getResources().getIntArray(c.jira_priorities_ids)[c.l(a).getSelectedItemPosition()]);
        if (aboolean[0].booleanValue())
        {
            com.etermax.tools.bugcatcher.c.c(a).a(s2, "screenshot.jpg", a(c.m(a)));
        }
        return Boolean.valueOf(true);
_L2:
        String s = com.etermax.tools.bugcatcher.c.i(a);
        s1 = s;
          goto _L3
        Exception exception;
        exception;
        exception.printStackTrace();
        return Boolean.valueOf(false);
    }

    protected void a(Boolean boolean1)
    {
        a.findViewById(i.loading).setVisibility(8);
        if (boolean1.booleanValue())
        {
            Toast.makeText(a.getContext(), o.jira_issue_created, 1).show();
            c.h(a).edit().putString("LAST_VERSION", ((com.etermax.tools.bugcatcher.i)a.a.get(((Spinner)a.findViewById(i.fix_version)).getSelectedItemPosition())).b()).commit();
        } else
        {
            Toast.makeText(a.getContext(), o.jira_issue_creation_failed, 1).show();
        }
        a.dismiss();
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Boolean[])aobj);
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
