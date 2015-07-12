// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.login.datasource.dto.UserListDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.PreguntadosAppConfigDTO;
import com.etermax.preguntados.datasource.dto.SuggestedOpponentDTO;
import com.etermax.preguntados.ui.newgame.duelmode.a.a;
import com.etermax.preguntados.ui.newgame.duelmode.a.a.c;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            r, h, i, g, 
//            o

public class f extends b
    implements a, com.etermax.preguntados.ui.newgame.duelmode.a.a.a, r
{

    d a;
    com.etermax.gamescommon.login.datasource.a b;
    com.etermax.preguntados.ui.newgame.duelmode.o c;
    e d;
    ArrayList e;
    String f;
    private ArrayList g;
    private com.etermax.preguntados.ui.newgame.duelmode.a.b h;
    private com.etermax.preguntados.ui.newgame.duelmode.a.c i;
    private ArrayList j;
    private com.etermax.preguntados.ui.newgame.duelmode.a.a.b k;
    private c l;
    private boolean m;

    public f()
    {
    }

    public static Fragment a(String s, ArrayList arraylist)
    {
        return com.etermax.preguntados.ui.newgame.duelmode.h.g().a(s).a(arraylist).a();
    }

    static ArrayList a(f f1)
    {
        return f1.g;
    }

    static ArrayList a(f f1, ArrayList arraylist)
    {
        f1.g = arraylist;
        return arraylist;
    }

    static List a(f f1, List list)
    {
        return f1.c(list);
    }

    private void a(ArrayList arraylist)
    {
        int i1 = a.s().getDuelModeMinPlayers();
        int j1 = a.s().getDuelModeMaxPlayers();
        if (arraylist.size() < i1 || arraylist.size() > j1)
        {
            android.content.Context context = getApplicationContext();
            int k1 = o.count_friends_group_challenge_alert;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(i1);
            aobj[1] = Integer.valueOf(j1);
            Toast.makeText(context, getString(k1, aobj), 0).show();
            return;
        }
        ArrayList arraylist1 = new ArrayList();
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            UserDTO userdto = (UserDTO)iterator.next();
            if (userdto.getId().longValue() != b.e())
            {
                arraylist1.add(new UserDTO(userdto.getId()));
            }
        } while (true);
        b(arraylist);
        ((com.etermax.preguntados.ui.newgame.duelmode.g)mCallbacks).a(arraylist1);
    }

    static boolean a(f f1, boolean flag)
    {
        f1.m = flag;
        return flag;
    }

    static Object b(f f1)
    {
        return f1.mCallbacks;
    }

    private void b(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            UserDTO userdto = (UserDTO)iterator.next();
            if (userdto.getId().longValue() != b.e())
            {
                arraylist1.add(userdto);
            }
        } while (true);
        Gson gson = new Gson();
        d.b("last_participants", gson.toJson(arraylist1));
    }

    private void b(List list)
    {
        l = new c(this);
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            UserDTO userdto = (UserDTO)iterator.next();
            boolean flag;
            if (userdto.getId().compareTo(Long.valueOf(b.e())) == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            arraylist.add(new com.etermax.preguntados.ui.newgame.duelmode.a.d(userdto, 0, flag));
        }
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new h(arraylist, 0, false));
        k = new com.etermax.preguntados.ui.newgame.duelmode.a.a.b(getApplicationContext(), arraylist1, l);
    }

    private List c(List list)
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

    private void g()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final f a;

            public Object a()
            {
                return a.a.f(a.b.e());
            }

            public void a(f f1, UserListDTO userlistdto)
            {
                super.a(f1, userlistdto);
                if (com.etermax.preguntados.ui.newgame.duelmode.f.a(a) == null)
                {
                    com.etermax.preguntados.ui.newgame.duelmode.f.a(a, new ArrayList());
                } else
                {
                    com.etermax.preguntados.ui.newgame.duelmode.f.a(a).clear();
                }
                if (userlistdto.getList() != null)
                {
                    com.etermax.preguntados.ui.newgame.duelmode.f.a(a).addAll(com.etermax.preguntados.ui.newgame.duelmode.f.a(a, userlistdto.getList()));
                }
                if (f1.isResumed())
                {
                    f1.a(com.etermax.preguntados.ui.newgame.duelmode.f.a(a));
                }
            }

            protected void a(f f1, Exception exception)
            {
                super.a(f1, exception);
                ((com.etermax.preguntados.ui.newgame.duelmode.g)com.etermax.preguntados.ui.newgame.duelmode.f.b(f1)).c();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((f)obj, exception);
            }

            public volatile void a(Object obj, Object obj1)
            {
                a((f)obj, (UserListDTO)obj1);
            }

            
            {
                a = f.this;
                super(s);
            }
        }).a(this);
    }

    private void h()
    {
        ((AutoCompleteTextView)getView().findViewById(i.new_duel_mode_search_edittext)).setAdapter(k);
        ((ListView)getView().findViewById(i.new_duel_mode_listview)).setAdapter(h);
    }

    private void i()
    {
        if (j == null)
        {
            j = new ArrayList();
        } else
        {
            j.clear();
        }
        j.add(j());
        if (e != null && e.size() > 0)
        {
            UserDTO userdto;
            for (Iterator iterator = e.iterator(); iterator.hasNext(); j.add(userdto))
            {
                userdto = (UserDTO)iterator.next();
            }

        }
        i = new com.etermax.preguntados.ui.newgame.duelmode.a.c(getApplicationContext(), this);
        k();
    }

    private UserDTO j()
    {
        UserDTO userdto = new UserDTO();
        userdto.setId(Long.valueOf(b.e()));
        userdto.setUsername(b.g());
        userdto.setFacebook_id(b.j());
        userdto.setFacebook_name(b.k());
        userdto.setFb_show_name(b.l());
        userdto.setFb_show_picture(b.m());
        return userdto;
    }

    private void k()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = j.iterator();
        while (iterator.hasNext()) 
        {
            UserDTO userdto = (UserDTO)iterator.next();
            boolean flag;
            if (userdto.getId().compareTo(Long.valueOf(b.e())) == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            arraylist.add(new com.etermax.preguntados.ui.newgame.duelmode.a.d(userdto, 0, flag));
        }
        ArrayList arraylist1 = new ArrayList();
        arraylist1.add(new h(arraylist, 0, true));
        h = new com.etermax.preguntados.ui.newgame.duelmode.a.b(getApplicationContext(), arraylist1, a.s().getDuelModeMaxPlayers(), i);
    }

    public com.etermax.preguntados.ui.newgame.duelmode.g a()
    {
        return new com.etermax.preguntados.ui.newgame.duelmode.g() {

            final f a;

            public void a(ArrayList arraylist, ArrayList arraylist1)
            {
            }

            public void a(List list)
            {
            }

            public void c()
            {
            }

            
            {
                a = f.this;
                super();
            }
        };
    }

    public void a(UserDTO userdto)
    {
        Iterator iterator;
        AutoCompleteTextView autocompletetextview = (AutoCompleteTextView)getView().findViewById(i.new_duel_mode_search_edittext);
        autocompletetextview.dismissDropDown();
        autocompletetextview.setText("");
        autocompletetextview.clearFocus();
        iterator = j.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (((UserDTO)iterator.next()).getId().compareTo(userdto.getId()) != 0) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L6:
        if (!flag && j.size() < a.s().getDuelModeMaxPlayers())
        {
            j.add(userdto);
            k();
            h();
        }
        com.etermax.a.b.b(getApplicationContext());
        return;
_L2:
        flag = false;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(SuggestedOpponentDTO suggestedopponentdto)
    {
        if (suggestedopponentdto.getList() != null)
        {
            k.a(c(suggestedopponentdto.getList()), false);
        } else
        {
            k.a(new ArrayList(), false);
        }
        k.notifyDataSetChanged();
    }

    public void a(g g1)
    {
        Iterator iterator = j.iterator();
_L4:
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        UserDTO userdto = (UserDTO)iterator.next();
        if (!userdto.getId().equals(((UserDTO)g1.c()).getId())) goto _L4; else goto _L3
_L3:
        if (userdto != null)
        {
            j.remove(userdto);
        }
        h.a(g1);
        h.notifyDataSetChanged();
        return;
_L2:
        userdto = null;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void a(String s)
    {
        if (m)
        {
            c.a(this, s, this);
        }
    }

    protected void a(List list)
    {
        b(list);
        i();
        h();
    }

    public void a(boolean flag)
    {
        m = flag;
        EditText edittext = (EditText)getView().findViewById(i.new_duel_mode_search_edittext);
        String s;
        if (edittext != null)
        {
            s = edittext.getText().toString();
        } else
        {
            s = "";
        }
        if (!m)
        {
            k.a(c(g), false);
            k.getFilter().filter(s);
        } else
        if (!s.isEmpty())
        {
            c.a(this, s, this);
        } else
        {
            k.a(c(g), true);
        }
        k.notifyDataSetChanged();
    }

    public void b()
    {
        com.etermax.a.b.b(getApplicationContext());
    }

    public void c()
    {
        if (g == null)
        {
            i();
            h();
            g();
            return;
        } else
        {
            k();
            h();
            return;
        }
    }

    public void d()
    {
        a(j);
    }

    public void e()
    {
        a(j);
    }

    public void f()
    {
        ((com.etermax.preguntados.ui.newgame.duelmode.g)mCallbacks).a(g, j);
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.new_duel_mode_players_fragment, null);
        ((TextView)view.findViewById(i.new_duel_header_title)).setText(f);
        EditText edittext = (EditText)view.findViewById(i.new_duel_mode_search_edittext);
        edittext.addTextChangedListener(new TextWatcher() {

            final f a;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                if (!TextUtils.isEmpty(charsequence))
                {
                    com.etermax.preguntados.ui.newgame.duelmode.f.a(a, false);
                    a.a(charsequence.toString());
                }
            }

            
            {
                a = f.this;
                super();
            }
        });
        ((ImageView)view.findViewById(i.new_duel_mode_search_clear_button)).setOnClickListener(new android.view.View.OnClickListener(edittext) {

            final EditText a;
            final f b;

            public void onClick(View view1)
            {
                a.getText().clear();
            }

            
            {
                b = f.this;
                a = edittext;
                super();
            }
        });
        return view;
    }
}
