// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ImageButton;
import android.widget.TextView;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.user.UserGridView;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.navigation.b;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            d

public abstract class c extends b
{

    protected com.etermax.gamescommon.dashboard.b a;
    protected UserGridView b;
    protected com.etermax.gamescommon.user.a.b c;
    protected View d;

    public c()
    {
    }

    static Object a(c c1)
    {
        return c1.mCallbacks;
    }

    static void a(c c1, boolean flag)
    {
        c1.b(flag);
    }

    static Object b(c c1)
    {
        return c1.mCallbacks;
    }

    private void b(boolean flag)
    {
        boolean flag1;
        TextView textview;
        if (c.getCount() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        textview = (TextView)d.findViewById(i.empty_list_textview);
        if (flag1)
        {
            d.setVisibility(4);
            b.setVisibility(0);
            textview.setText("");
            return;
        } else
        {
            d.setVisibility(0);
            b.setVisibility(8);
            textview.setText(a(flag));
            return;
        }
    }

    public d a()
    {
        return new d() {

            final c a;

            public void a(j j, BaseAdapter baseadapter)
            {
                ((d)c.a(a)).a(j, baseadapter);
            }

            
            {
                a = c.this;
                super();
            }
        };
    }

    protected abstract String a(boolean flag);

    public void a(IBinder ibinder)
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getActivity().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.hideSoftInputFromWindow(ibinder, 0);
        }
    }

    protected void a(CharSequence charsequence)
    {
        if (c != null && c.getFilter() != null)
        {
            c.getFilter().filter(charsequence, new android.widget.Filter.FilterListener() {

                final c a;

                public void onFilterComplete(int j)
                {
                    c.a(a, true);
                }

            
            {
                a = c.this;
                super();
            }
            });
        }
    }

    protected void a(Object obj)
    {
        c = new com.etermax.gamescommon.user.a.b(getApplicationContext());
        c.a((List)obj);
        c.a(new d() {

            final c a;

            public void a(j j, BaseAdapter baseadapter)
            {
                ((d)com.etermax.gamescommon.profile.ui.c.b(a)).a(j, baseadapter);
            }

            
            {
                a = c.this;
                super();
            }
        });
        b.setAdapter(c);
        b(false);
    }

    protected void a(String s)
    {
        ((TextView)getView().findViewById(i.users_list_header_textview)).setText(s);
        EditText edittext = (EditText)getView().findViewById(i.search_box);
        edittext.addTextChangedListener(new TextWatcher() {

            final c a;

            public void afterTextChanged(Editable editable)
            {
                a.a(editable);
            }

            public void beforeTextChanged(CharSequence charsequence, int j, int l, int i1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int j, int l, int i1)
            {
            }

            
            {
                a = c.this;
                super();
            }
        });
        edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final c a;

            public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
            {
                switch (j)
                {
                default:
                    return false;

                case 4: // '\004'
                    a.a(textview.getWindowToken());
                    break;
                }
                a.a(textview.getText());
                return true;
            }

            
            {
                a = c.this;
                super();
            }
        });
        edittext.setOnKeyListener(new android.view.View.OnKeyListener() {

            final c a;

            public boolean onKey(View view, int j, KeyEvent keyevent)
            {
                if (j == 66 && keyevent.getAction() == 1)
                {
                    a.a(view.getWindowToken());
                    a.a(((TextView)view).getText());
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = c.this;
                super();
            }
        });
        ((ImageButton)getView().findViewById(i.search_box_clear_button)).setOnClickListener(new android.view.View.OnClickListener(edittext) {

            final EditText a;
            final c b;

            public void onClick(View view)
            {
                b.a(view.getWindowToken());
                a.setText("");
                b.a("");
            }

            
            {
                b = c.this;
                a = edittext;
                super();
            }
        });
    }

    protected abstract void b();

    protected abstract boolean c();

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = new com.etermax.gamescommon.dashboard.b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.user_list_fragment, viewgroup, false);
        b = (UserGridView)view.findViewById(0x102000a);
        d = view.findViewById(i.empty_list);
        return view;
    }

    public void onResume()
    {
        super.onResume();
        if (c())
        {
            b();
        }
    }
}
