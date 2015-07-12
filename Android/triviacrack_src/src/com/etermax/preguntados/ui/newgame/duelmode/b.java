// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.preguntados.ui.game.duelmode.h;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            d, e, c

public class b extends com.etermax.tools.navigation.b
{

    a a;
    String b;
    g c;

    public b()
    {
    }

    public static Fragment a(String s, g g)
    {
        return d.d().a(s).a(g).a();
    }

    static Object a(b b1)
    {
        return b1.mCallbacks;
    }

    static boolean a(b b1, String s)
    {
        return b1.a(s);
    }

    private boolean a(String s)
    {
        if (TextUtils.isEmpty(s) || s.length() < 3 || s.length() > 30)
        {
            Toast.makeText(getApplicationContext(), getString(o.name_group_challenge_alert), 0).show();
            return false;
        } else
        {
            return true;
        }
    }

    public c a()
    {
        return new c() {

            final b a;

            public void a(String s)
            {
            }

            
            {
                a = b.this;
                super();
            }
        };
    }

    void b()
    {
        com.etermax.a.b.a(getApplicationContext());
    }

    public void c()
    {
        String s = ((EditText)getView().findViewById(i.new_duel_mode_name)).getText().toString();
        if (a(s))
        {
            ((c)mCallbacks).a(s);
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.new_duel_mode_name_fragment, null);
        h h1 = h.a(c);
        ((TextView)view.findViewById(i.new_duel_mode_header_title)).setText(getString(h1.g()));
        ((ImageView)view.findViewById(i.new_duel_mode_image)).setImageResource(h1.b(getApplicationContext(), (int)System.currentTimeMillis()));
        EditText edittext = (EditText)view.findViewById(i.new_duel_mode_name);
        edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener(edittext) {

            final EditText a;
            final b b;

            public boolean onEditorAction(TextView textview, int l, KeyEvent keyevent)
            {
                if (l == 3 || l == 6 || l == 2 || l == 5 || l == 4 || keyevent.getAction() == 23 || keyevent.getAction() == 66 || keyevent.getAction() == 84 || keyevent.getAction() == 0)
                {
                    String s = a.getText().toString();
                    if (com.etermax.preguntados.ui.newgame.duelmode.b.a(b, s))
                    {
                        ((c)com.etermax.preguntados.ui.newgame.duelmode.b.a(b)).a(s);
                    }
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                b = b.this;
                a = edittext;
                super();
            }
        });
        if (b != null)
        {
            edittext.setText(b);
        }
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(30);
        edittext.setFilters(ainputfilter);
        int j = h1.h();
        Object aobj[] = new Object[1];
        aobj[0] = a.k();
        edittext.setHint(getString(j, aobj));
        edittext.requestFocus();
        return view;
    }
}
