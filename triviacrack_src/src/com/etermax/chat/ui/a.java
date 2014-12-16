// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.content.ClipData;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.ClipboardManager;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import com.etermax.chat.a.b;
import com.etermax.chat.a.f;
import com.etermax.chat.a.i;
import com.etermax.chat.a.l;
import com.etermax.chat.widget.KeyboardNotificatorRelativeLayout;
import com.etermax.gamescommon.menu.a.d;
import com.etermax.h;
import com.etermax.k;
import com.etermax.tools.widget.CustomFontEditText;
import java.util.ArrayList;
import java.util.Date;

// Referenced classes of package com.etermax.chat.ui:
//            e, d, b

public class a extends Fragment
    implements b, e, com.etermax.chat.widget.a
{

    protected com.etermax.chat.a.a a;
    com.etermax.chat.ui.adapter.a b;
    protected d c;
    ImageButton d;
    CustomFontEditText e;
    int f;
    public com.etermax.chat.ui.b g;
    android.widget.AdapterView.OnItemLongClickListener h;
    android.widget.AdapterView.OnItemClickListener i;
    private ListView j;
    private Boolean k;
    private Boolean l;
    private Boolean m;
    private boolean n;
    private View o;
    private ImageButton p;
    private com.etermax.chat.ui.d q;
    private android.view.View.OnTouchListener r;
    private android.view.View.OnClickListener s;

    public a()
    {
        k = Boolean.valueOf(false);
        l = Boolean.valueOf(false);
        m = Boolean.valueOf(false);
        n = false;
        f = 0;
        r = new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (a.a(a))
                {
                    a.b();
                }
                return false;
            }

            
            {
                a = a.this;
                super();
            }
        };
        s = new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                if (!a.a(a))
                {
                    a.e_();
                    return;
                } else
                {
                    a.b();
                    a.b(a.e);
                    return;
                }
            }

            
            {
                a = a.this;
                super();
            }
        };
        h = new android.widget.AdapterView.OnItemLongClickListener() {

            final a a;

            public boolean onItemLongClick(AdapterView adapterview, View view, int i1, long l1)
            {
                f f1 = (f)adapterview.getItemAtPosition(i1);
                if (f1.a() != null && f1.a().a())
                {
                    a.a(a, f1, i1);
                }
                return true;
            }

            
            {
                a = a.this;
                super();
            }
        };
        i = new android.widget.AdapterView.OnItemClickListener() {

            final a a;

            public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
            {
                f f1 = (f)adapterview.getItemAtPosition(i1);
                if (f1.a() != null && f1.a().a() && f1.d() == com.etermax.chat.a.h.b)
                {
                    a.a(a, f1, i1);
                }
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    static void a(a a1, f f1, int i1)
    {
        a1.c(f1, i1);
    }

    static boolean a(a a1)
    {
        return a1.n;
    }

    private void c(f f1, int i1)
    {
        f f2 = new f(i.a);
        f2.a(f1.d());
        f2.a(a.f());
        f2.a(new Date());
        f2.a(f1.c());
        if (q == null)
        {
            q = com.etermax.chat.ui.d.a();
            q.a(this);
        }
        q.a(i1);
        q.a(f2);
        q.show(getFragmentManager(), null);
    }

    public int a(int i1)
    {
        return (int)TypedValue.applyDimension(1, i1, getActivity().getResources().getDisplayMetrics());
    }

    public void a(View view)
    {
        ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(getActivity().getCurrentFocus().getWindowToken(), 2);
        k = Boolean.valueOf(false);
    }

    public void a(f f1)
    {
        e.setText(null);
        a.b(f1);
        g();
    }

    public void a(f f1, int i1)
    {
        h();
        a(f1);
        a.a(i1);
        b.notifyDataSetChanged();
    }

    public void b()
    {
        p.setImageResource(h.icon_chat_sticker);
        o.setVisibility(8);
        n = false;
        m = Boolean.valueOf(false);
    }

    public void b(View view)
    {
        ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(view, 0);
        view.requestFocus();
        k = Boolean.valueOf(true);
    }

    public void b(f f1)
    {
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            ((ClipboardManager)getActivity().getSystemService("clipboard")).setText(f1.c());
            return;
        } else
        {
            ((android.content.ClipboardManager)getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("chatMessage", f1.c()));
            return;
        }
    }

    public void b(f f1, int i1)
    {
        a.a(i1);
        b.notifyDataSetChanged();
    }

    public void c(f f1)
    {
        a(f1);
    }

    public void d()
    {
        if (e.getText().toString().length() <= 0 || e.getText().toString().matches("\\s*"))
        {
            return;
        } else
        {
            f f1 = new f(i.a);
            f1.a(a.f());
            f1.a(new Date());
            f1.a(e.getText().toString());
            a(f1);
            return;
        }
    }

    public void e()
    {
        if (m.booleanValue())
        {
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)o.getLayoutParams();
            int i1;
            if (getResources().getConfiguration().orientation == 2)
            {
                i1 = a(210);
            } else
            {
                i1 = a(250);
            }
            layoutparams.height = i1;
            p.setImageResource(h.icon_chat_keyboard);
            o.setVisibility(0);
            m = Boolean.valueOf(false);
        }
        k = Boolean.valueOf(false);
    }

    public void e_()
    {
        e.requestFocus();
        int i1;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (getResources().getConfiguration().orientation == 2)
        {
            i1 = a(190);
        } else
        {
            i1 = a(250);
        }
        layoutparams = (android.widget.RelativeLayout.LayoutParams)o.getLayoutParams();
        layoutparams.height = i1;
        p.setImageResource(h.icon_chat_keyboard);
        o.setLayoutParams(layoutparams);
        if (!k.booleanValue())
        {
            o.setVisibility(0);
        }
        n = true;
        m = Boolean.valueOf(true);
        a(e);
    }

    public void f_()
    {
        g();
        k = Boolean.valueOf(true);
        b();
    }

    protected void g()
    {
        j.setSelection(a.e().size());
    }

    public void g_()
    {
        b.b();
    }

    public void h()
    {
        f = -1;
    }

    protected void j()
    {
        int i1 = j.getFirstVisiblePosition();
        View view = j.getChildAt(0);
        int j1 = 0;
        if (view != null)
        {
            j1 = view.getTop();
        }
        if (b.getCount() != f)
        {
            g();
            f = b.getCount();
            return;
        } else
        {
            j.setSelectionFromTop(i1, j1);
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.fragment_chat, viewgroup, false);
        ((KeyboardNotificatorRelativeLayout)view.findViewById(com.etermax.i.chat_root)).a(this);
        j = (ListView)view.findViewById(com.etermax.i.message_list);
        b = a.b();
        j.setAdapter(b);
        j.setOnItemLongClickListener(h);
        j.setOnItemClickListener(i);
        p = (ImageButton)view.findViewById(com.etermax.i.sticker_button);
        p.setOnClickListener(s);
        o = view.findViewById(com.etermax.i.sticker_panel_content);
        b.a(new com.etermax.chat.ui.adapter.b() {

            final a a;

            public void a()
            {
                a.j();
            }

            
            {
                a = a.this;
                super();
            }
        });
        f = 0;
        e = (CustomFontEditText)view.findViewById(com.etermax.i.input_message);
        e.setImeOptions(4);
        e.setSingleLine();
        e.setOnTouchListener(r);
        e.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final a a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                if (i1 == 4)
                {
                    a.d();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        e.setOnKeyListener(new android.view.View.OnKeyListener() {

            final a a;

            public boolean onKey(View view1, int i1, KeyEvent keyevent)
            {
                int j1 = keyevent.getKeyCode();
                boolean flag = false;
                if (j1 == 4)
                {
                    boolean flag1 = a.a(a);
                    flag = false;
                    if (flag1)
                    {
                        a.b();
                        flag = true;
                    }
                }
                return flag;
            }

            
            {
                a = a.this;
                super();
            }
        });
        d = (ImageButton)view.findViewById(com.etermax.i.btn_right);
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view1)
            {
                a.d();
            }

            
            {
                a = a.this;
                super();
            }
        });
        if (bundle != null && bundle.getBoolean("stickerPanelStateVisible"))
        {
            n = true;
            l = Boolean.valueOf(true);
        }
        return view;
    }

    public void onDestroyView()
    {
        b.a(null);
        j.setAdapter(null);
        super.onDestroyView();
    }

    public void onPause()
    {
        super.onPause();
        a.a(null);
    }

    public void onResume()
    {
        super.onResume();
        a.a(this);
        if (l.booleanValue())
        {
            e_();
        } else
        {
            b();
        }
        if (k.booleanValue())
        {
            b(j);
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("stickerPanelStateVisible", n);
    }
}
