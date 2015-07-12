// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.a;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.a.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            r, l, m, o, 
//            n, k

public class j extends b
    implements a, r
{

    d a;
    o b;
    String c;
    ArrayList d;
    ArrayList e;
    private com.etermax.preguntados.ui.newgame.duelmode.a.a.b f;
    private n g;
    private boolean h;

    public j()
    {
    }

    public static Fragment a(String s, ArrayList arraylist, ArrayList arraylist1)
    {
        return l.e().a(s).b(arraylist).a(arraylist1).a();
    }

    static com.etermax.preguntados.ui.newgame.duelmode.a.a.b a(j j1)
    {
        return j1.f;
    }

    private List a(List list)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            UserDTO userdto = (UserDTO)iterator.next();
            if (userdto.getIsAppUser())
            {
                arraylist.add(userdto);
            }
        } while (true);
        return arraylist;
    }

    static boolean a(j j1, boolean flag)
    {
        j1.h = flag;
        return flag;
    }

    public com.etermax.preguntados.ui.newgame.duelmode.k a()
    {
        return new com.etermax.preguntados.ui.newgame.duelmode.k() {

            final j a;

            public void b()
            {
            }

            
            {
                a = j.this;
                super();
            }
        };
    }

    public void a(UserDTO userdto)
    {
        Iterator iterator = e.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        UserDTO userdto1 = (UserDTO)iterator.next();
        if (userdto1.getId().compareTo(userdto.getId()) != 0) goto _L4; else goto _L3
_L3:
        if (userdto1 == null && e.size() < a.s().getDuelModeMaxPlayers())
        {
            e.add(userdto);
        } else
        {
            e.remove(userdto1);
        }
        f.notifyDataSetChanged();
        return;
_L2:
        userdto1 = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void a(SuggestedOpponentDTO suggestedopponentdto)
    {
        if (suggestedopponentdto.getList() != null)
        {
            f.a(a(suggestedopponentdto.getList()), true);
            return;
        } else
        {
            f.a(new ArrayList(), true);
            return;
        }
    }

    public void a(boolean flag)
    {
        h = flag;
        EditText edittext = (EditText)getView().findViewById(i.new_duel_mode_search_edittext);
        if (!h)
        {
            f.a(a(((List) (d))), true);
            return;
        }
        String s = edittext.getText().toString();
        if (!s.isEmpty())
        {
            b.a(this, s, this);
            return;
        } else
        {
            f.a(a(((List) (d))), true);
            return;
        }
    }

    public void b()
    {
        g = new n(getApplicationContext(), e, this);
        ArrayList arraylist;
        if (d == null)
        {
            d = new ArrayList();
        } else
        {
            d = (ArrayList)a(d);
        }
        arraylist = new ArrayList();
        for (Iterator iterator = d.iterator(); iterator.hasNext(); arraylist.add(new com.etermax.preguntados.ui.newgame.duelmode.a.d((UserDTO)iterator.next(), 0))) { }
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new h(arraylist, 0));
        f = new com.etermax.preguntados.ui.newgame.duelmode.a.a.b(getApplicationContext(), arraylist1, g);
    }

    public void c()
    {
        ((ListView)getView().findViewById(i.new_duel_mode_search_listview)).setAdapter(f);
    }

    public void d()
    {
        ((com.etermax.preguntados.ui.newgame.duelmode.k)mCallbacks).b();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.new_duel_mode_search_fragment, null);
        ((TextView)view.findViewById(i.new_duel_header_title)).setText(c);
        EditText edittext = (EditText)view.findViewById(i.new_duel_mode_search_edittext);
        edittext.addTextChangedListener(new TextWatcher() {

            final j a;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                com.etermax.preguntados.ui.newgame.duelmode.j.a(a, false);
                com.etermax.preguntados.ui.newgame.duelmode.j.a(a).getFilter().filter(charsequence);
            }

            
            {
                a = j.this;
                super();
            }
        });
        ((ImageView)view.findViewById(i.new_duel_mode_search_clear_button)).setOnClickListener(new android.view.View.OnClickListener(edittext) {

            final EditText a;
            final j b;

            public void onClick(View view1)
            {
                a.getText().clear();
                com.etermax.preguntados.ui.newgame.duelmode.j.a(b).notifyDataSetChanged();
            }

            
            {
                b = j.this;
                a = edittext;
                super();
            }
        });
        return view;
    }
}
