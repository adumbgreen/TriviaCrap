// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            h, e, d, f

public class c extends Dialog
    implements android.view.View.OnClickListener
{

    public ArrayList a;
    private h b;
    private String c;
    private String d;
    private List e;
    private EditText f;
    private TextView g;
    private View h;
    private View i;
    private EditText j;
    private EditText k;
    private EditText l;
    private Spinner m;
    private SharedPreferences n;

    public c(Context context, String s)
    {
        super(context);
        c = s;
        a(context);
    }

    public c(Context context, String s, boolean flag)
    {
        super(context);
        d = s;
        a(context);
    }

    static EditText a(c c1)
    {
        return c1.k;
    }

    static String a(c c1, String s)
    {
        c1.c = s;
        return s;
    }

    static List a(c c1, List list)
    {
        c1.e = list;
        return list;
    }

    private void a()
    {
        h.setVisibility(0);
        i.setVisibility(8);
    }

    private void a(Context context)
    {
        n = context.getSharedPreferences("JIRA_CONNECTOR", 0);
        setTitle(o.jira_create_issue);
        setContentView(k.create_issue_dialog);
        f = (EditText)findViewById(i.extra_info);
        l = (EditText)findViewById(i.summary);
        g = (TextView)findViewById(i.username);
        j = (EditText)findViewById(i.pass);
        k = (EditText)findViewById(i.user);
        h = findViewById(i.login_container);
        i = findViewById(i.create_container);
        m = (Spinner)findViewById(i.priority);
        b = new h(context);
        ((Button)findViewById(i.send_button)).setOnClickListener(this);
        ((Button)findViewById(i.change_user_button)).setOnClickListener(this);
        ((Button)findViewById(i.login_button)).setOnClickListener(this);
        m.setAdapter(new ArrayAdapter(getContext(), k.spinner_item, i.textview, context.getResources().getStringArray(com.etermax.c.jira_priorities)));
        m.setSelection(1);
        if (!b.b())
        {
            a();
            return;
        } else
        {
            g.setText(b.c());
            e e1 = new e(this);
            Void avoid[] = new Void[1];
            avoid[0] = (Void)null;
            e1.execute(avoid);
            return;
        }
    }

    static EditText b(c c1)
    {
        return c1.j;
    }

    private void b()
    {
        i.setVisibility(0);
        h.setVisibility(8);
    }

    static h c(c c1)
    {
        return c1.b;
    }

    private void c()
    {
        boolean flag = true;
        if (l.getText().toString().trim().length() == 0)
        {
            Toast.makeText(getContext(), o.jira_summary_must_be_filled, flag).show();
            return;
        }
        d d1 = new d(this);
        Boolean aboolean[] = new Boolean[flag];
        if (d == null)
        {
            flag = false;
        }
        aboolean[0] = Boolean.valueOf(flag);
        d1.execute(aboolean);
    }

    static TextView d(c c1)
    {
        return c1.g;
    }

    static void e(c c1)
    {
        c1.b();
    }

    static List f(c c1)
    {
        return c1.e;
    }

    static void g(c c1)
    {
        c1.a();
    }

    static SharedPreferences h(c c1)
    {
        return c1.n;
    }

    static String i(c c1)
    {
        return c1.c;
    }

    static EditText j(c c1)
    {
        return c1.f;
    }

    static EditText k(c c1)
    {
        return c1.l;
    }

    static Spinner l(c c1)
    {
        return c1.m;
    }

    static String m(c c1)
    {
        return c1.d;
    }

    public void onClick(View view)
    {
        if (view == findViewById(i.send_button))
        {
            c();
        } else
        {
            if (view == findViewById(i.login_button))
            {
                f f1 = new f(this);
                Void avoid[] = new Void[1];
                avoid[0] = (Void)null;
                f1.execute(avoid);
                return;
            }
            if (view == findViewById(i.change_user_button))
            {
                a();
                return;
            }
        }
    }
}
