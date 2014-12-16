// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.chat;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.Toast;
import com.etermax.gamescommon.d.a.b;
import com.etermax.gamescommon.menu.a.d;
import com.etermax.gamescommon.menu.a.e;
import com.etermax.i;
import com.etermax.o;

// Referenced classes of package com.etermax.preguntados.ui.chat:
//            ChatActivity

public class a extends com.etermax.chat.ui.a
    implements b, e, com.etermax.tools.widget.b.b
{

    com.etermax.chat.a.a j;
    com.etermax.gamescommon.datasource.a k;
    com.etermax.tools.f.a l;
    com.etermax.gamescommon.datasource.e m;
    d n;
    private com.etermax.gamescommon.d.a.a o;

    public a()
    {
    }

    static void a(a a1)
    {
        a1.j();
    }

    private void m()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                ChatActivity.c(false);
                super.a(a1, void1);
                a.k.a(false, Long.valueOf(com.etermax.preguntados.ui.chat.ChatActivity.b()));
            }

            protected void a(Exception exception, String s)
            {
                Toast.makeText(j(), a.getString(o.error_chat_message), 1).show();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                a.m.b(com.etermax.preguntados.ui.chat.ChatActivity.b());
                return null;
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    private void n()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                com.etermax.preguntados.ui.chat.ChatActivity.b(true);
                super.a(a1, void1);
                a.k.b(true, Long.valueOf(com.etermax.preguntados.ui.chat.ChatActivity.b()));
            }

            protected void a(Exception exception, String s)
            {
                Toast.makeText(j(), a.getString(o.error_chat_message), 1).show();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                a.m.c(com.etermax.preguntados.ui.chat.ChatActivity.b());
                return null;
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    private void o()
    {
        (new com.etermax.tools.i.a() {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                a.j.d();
                a.a(a);
                super.a(a1, void1);
                a.k.a(Long.valueOf(com.etermax.preguntados.ui.chat.ChatActivity.b()));
            }

            protected void a(Exception exception, String s)
            {
                Toast.makeText(j(), a.getString(o.error_chat_message), 1).show();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                a.k.a(com.etermax.preguntados.ui.chat.ChatActivity.b());
                a.j.a(com.etermax.preguntados.ui.chat.ChatActivity.b());
                return null;
            }

            
            {
                a = a.this;
                super();
            }
        }).a(this);
    }

    public void a()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                ChatActivity.c(true);
                super.a(a1, void1);
                a.k.a(true, Long.valueOf(com.etermax.preguntados.ui.chat.ChatActivity.b()));
            }

            protected void a(Exception exception, String s)
            {
                Toast.makeText(j(), a.getString(o.error_chat_message), 1).show();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                a.m.a(com.etermax.preguntados.ui.chat.ChatActivity.b());
                return null;
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    public void a(Bundle bundle)
    {
    }

    public void b_()
    {
        o = null;
    }

    public void c()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("action", 2);
        int i1 = o.are_you_sure_block;
        Object aobj[] = new Object[1];
        aobj[0] = com.etermax.preguntados.ui.chat.ChatActivity.e();
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(i1, aobj), getString(o.yes), getString(o.no), bundle);
        a1.setTargetFragment(this, 0);
        a1.show(getFragmentManager(), "block_dialog_tag");
    }

    public void c_()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("action", 1);
        int i1 = o.are_you_sure_unfriend;
        Object aobj[] = new Object[1];
        aobj[0] = com.etermax.preguntados.ui.chat.ChatActivity.e();
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(i1, aobj), getString(o.yes), getString(o.no), bundle);
        a1.setTargetFragment(this, 0);
        a1.show(getFragmentManager(), "unfriend_dialog_tag");
    }

    public void d_()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                com.etermax.preguntados.ui.chat.ChatActivity.b(false);
                a.k.b(false, Long.valueOf(com.etermax.preguntados.ui.chat.ChatActivity.b()));
            }

            protected void a(Exception exception, String s)
            {
                Toast.makeText(j(), a.getString(o.error_chat_message), 1).show();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                a.m.d(com.etermax.preguntados.ui.chat.ChatActivity.b());
                return null;
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    public void f()
    {
        Bundle bundle = new Bundle();
        bundle.putInt("action", 3);
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(o.are_you_sure_delete_chat), getString(o.yes), getString(o.no), bundle);
        a1.setTargetFragment(this, 0);
        a1.show(getFragmentManager(), "block_dialog_tag");
    }

    public void i()
    {
        int i1 = n.b(com.etermax.preguntados.ui.chat.ChatActivity.b());
        com.etermax.a.a.c("PLAYCHAT", (new StringBuilder()).append("OnUnreadConversationsUpdated unreadConversations:").append(i1).toString());
        g.b(i1);
    }

    public void k()
    {
        if (o == null)
        {
            o = com.etermax.gamescommon.d.a.a.a(ChatActivity.c(), com.etermax.preguntados.ui.chat.ChatActivity.d());
            o.a(this, l);
            getFragmentManager().executePendingTransactions();
            o.show(getFragmentManager(), "OPTIONS_FRAGMENT");
        }
    }

    public void l()
    {
        int i1 = n.b(com.etermax.preguntados.ui.chat.ChatActivity.b());
        g.b(i1);
    }

    public void onAccept(Bundle bundle)
    {
        if (!bundle.containsKey("action")) goto _L2; else goto _L1
_L1:
        bundle.getInt("action");
        JVM INSTR tableswitch 0 3: default 44
    //                   0 44
    //                   1 45
    //                   2 50
    //                   3 55;
           goto _L2 _L2 _L3 _L4 _L5
_L2:
        return;
_L3:
        m();
        return;
_L4:
        n();
        return;
_L5:
        o();
        return;
    }

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        try
        {
            g = (com.etermax.chat.ui.b)activity;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException("Activity must implement fragment's callbacks.");
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        ((ImageButton)view.findViewById(i.btn_left)).setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view1)
            {
                a.k();
            }

            
            {
                a = a.this;
                super();
            }
        });
        l();
        return view;
    }

    public void onStart()
    {
        n.a(getActivity());
        n.a(this);
        super.onStart();
    }

    public void onStop()
    {
        n.b(getActivity());
        n.b(this);
        super.onStop();
    }
}
