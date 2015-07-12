// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.content.Context;
import android.os.IBinder;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.etermax.gamescommon.b.u;
import com.etermax.gamescommon.datasource.dto.ChatHeaderDTO;
import com.etermax.gamescommon.datasource.dto.ChatHeaderListDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelSearchDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.a.b;
import com.etermax.gamescommon.menu.a.a.c;
import com.etermax.gamescommon.menu.a.a.d;
import com.etermax.gamescommon.menu.a.a.f;
import com.etermax.gamescommon.menu.a.a.g;
import com.etermax.gamescommon.menu.a.a.h;
import com.etermax.gamescommon.menu.a.b.i;
import com.etermax.tools.navigation.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            h, l, p, o, 
//            d, m, b, c, 
//            f

public class a extends RelativeLayout
    implements com.etermax.gamescommon.menu.a.h, e
{

    protected ListView a;
    protected LinearLayout b;
    protected EditText c;
    protected ImageButton d;
    protected ImageButton e;
    protected com.etermax.gamescommon.datasource.e f;
    protected com.etermax.gamescommon.menu.a.d g;
    protected com.etermax.tools.f.a h;
    m i;
    android.widget.AdapterView.OnItemClickListener j;
    android.widget.AdapterView.OnItemLongClickListener k;
    private l l;
    private com.etermax.gamescommon.menu.a.b m;
    private com.etermax.gamescommon.menu.a.c n;
    private int o;
    private int p;
    private int q;

    public a(Context context)
    {
        super(context);
        o = 1;
        p = 1;
        q = 1;
        j = new android.widget.AdapterView.OnItemClickListener() {

            final a a;

            public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
            {
                com.etermax.gamescommon.menu.a.a.a a1 = (com.etermax.gamescommon.menu.a.a.a)a.a(a).getItem(i1);
                a.a(a, a1);
                if (!b(a).a(a1))
                {
                    class _cls9
                    {

                        static final int a[];
                        static final int b[];
                        static final int c[];

                        static 
                        {
                            c = new int[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.values().length];
                            try
                            {
                                c[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.IDLE.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror) { }
                            try
                            {
                                c[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.OFFLINE.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror1) { }
                            try
                            {
                                c[com.etermax.gamescommon.login.datasource.dto.UserDTO.Status.ONLINE.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror2) { }
                            b = new int[com.etermax.gamescommon.menu.a.a.g.values().length];
                            try
                            {
                                b[g.e.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror3) { }
                            try
                            {
                                b[g.a.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror4) { }
                            try
                            {
                                b[g.b.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror5) { }
                            a = new int[com.etermax.gamescommon.menu.a.o.values().length];
                            try
                            {
                                a[o.a.ordinal()] = 1;
                            }
                            catch (NoSuchFieldError nosuchfielderror6) { }
                            try
                            {
                                a[com.etermax.gamescommon.menu.a.o.b.ordinal()] = 2;
                            }
                            catch (NoSuchFieldError nosuchfielderror7) { }
                            try
                            {
                                a[com.etermax.gamescommon.menu.a.o.c.ordinal()] = 3;
                            }
                            catch (NoSuchFieldError nosuchfielderror8)
                            {
                                return;
                            }
                        }
                    }

                    com.etermax.gamescommon.menu.a.a.e e1;
                    switch (com.etermax.gamescommon.menu.a._cls9.b[a1.a().ordinal()])
                    {
                    default:
                        return;

                    case 1: // '\001'
                        e1 = (com.etermax.gamescommon.menu.a.a.e)a1;
                        break;
                    }
                    if (!e1.c())
                    {
                        e1.a(true);
                        if (view instanceof com.etermax.gamescommon.menu.a.b.g)
                        {
                            ((com.etermax.gamescommon.menu.a.b.g)view).c();
                        }
                        switch (_cls9.a[e1.b().ordinal()])
                        {
                        default:
                            return;

                        case 1: // '\001'
                            c(a);
                            d(a);
                            return;

                        case 2: // '\002'
                            com.etermax.gamescommon.menu.a.a.e(a);
                            f(a);
                            return;

                        case 3: // '\003'
                            g(a);
                            break;
                        }
                        h(a);
                        return;
                    }
                }
            }

            
            {
                a = a.this;
                super();
            }
        };
        k = new android.widget.AdapterView.OnItemLongClickListener() {

            final a a;

            public boolean onItemLongClick(AdapterView adapterview, View view, int i1, long l1)
            {
                if (view instanceof i)
                {
                    i j1 = (i)view;
                    if (!j1.b())
                    {
                        com.etermax.gamescommon.menu.a.a.a a1 = (com.etermax.gamescommon.menu.a.a.a)a.a(a).getItem(i1);
                        a.i.a(a1, view);
                        j1.a(com.etermax.gamescommon.menu.a.a.i(a));
                    } else
                    {
                        j1.c();
                    }
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
        };
        l = new l(context);
    }

    public static a a(Context context, com.etermax.gamescommon.menu.a.b b1, com.etermax.gamescommon.menu.a.c c1)
    {
        a a1 = com.etermax.gamescommon.menu.a.p.a(context);
        a1.a(b1, c1);
        return a1;
    }

    static l a(a a1)
    {
        return a1.l;
    }

    private void a(ChatHeaderListDTO chatheaderlistdto)
    {
        if (o == 1 && (chatheaderlistdto == null || chatheaderlistdto.getChatHeaders() == null || chatheaderlistdto.getChatHeaders().isEmpty() || ((List)chatheaderlistdto.getChatHeaders().get(0)).isEmpty()))
        {
            l.a(o.a);
            return;
        }
        if (chatheaderlistdto == null)
        {
            chatheaderlistdto = new ChatHeaderListDTO();
            chatheaderlistdto.setHasMore(false);
        }
        if (chatheaderlistdto.getChatHeaders() == null)
        {
            chatheaderlistdto.setChatHeaders(new ArrayList());
        }
        if (chatheaderlistdto.getChatHeaders().isEmpty())
        {
            chatheaderlistdto.getChatHeaders().add(new ArrayList());
        }
        List list = (List)chatheaderlistdto.getChatHeaders().get(0);
        ArrayList arraylist = new ArrayList();
        if (o == 1)
        {
            arraylist.add(new f(o.a));
        }
        ChatHeaderDTO chatheaderdto;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new b(o.a, chatheaderdto)))
        {
            chatheaderdto = (ChatHeaderDTO)iterator.next();
        }

        if (chatheaderlistdto.hasMore())
        {
            arraylist.add(new com.etermax.gamescommon.menu.a.a.e(o.a));
        }
        if (o == 1)
        {
            l.a(o.a, arraylist);
            return;
        } else
        {
            l.b(o.a, arraylist);
            return;
        }
    }

    private void a(MessagingPanelDTO messagingpaneldto)
    {
        if (p == 1 && (messagingpaneldto == null || messagingpaneldto.getFriends() == null || messagingpaneldto.getFriends().isEmpty() || ((List)messagingpaneldto.getFriends().get(0)).isEmpty()))
        {
            l.a(com.etermax.gamescommon.menu.a.o.b);
            return;
        }
        if (messagingpaneldto == null)
        {
            messagingpaneldto = new MessagingPanelDTO();
            messagingpaneldto.setHasMoreFriends(false);
        }
        if (messagingpaneldto.getFriends() == null)
        {
            messagingpaneldto.setFriends(new ArrayList());
        }
        if (messagingpaneldto.getFriends().isEmpty())
        {
            messagingpaneldto.getFriends().add(new ArrayList());
        }
        List list = (List)messagingpaneldto.getFriends().get(0);
        ArrayList arraylist = new ArrayList();
        if (p == 1)
        {
            arraylist.add(new f(com.etermax.gamescommon.menu.a.o.b));
        }
        UserDTO userdto;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new h(com.etermax.gamescommon.menu.a.o.b, userdto)))
        {
            userdto = (UserDTO)iterator.next();
        }

        if (messagingpaneldto.hasMoreFriends())
        {
            arraylist.add(new com.etermax.gamescommon.menu.a.a.e(com.etermax.gamescommon.menu.a.o.b));
        }
        if (p == 1)
        {
            l.a(com.etermax.gamescommon.menu.a.o.b, arraylist);
            return;
        } else
        {
            l.b(com.etermax.gamescommon.menu.a.o.b, arraylist);
            return;
        }
    }

    private void a(MessagingPanelSearchDTO messagingpanelsearchdto, boolean flag)
    {
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        boolean flag1 = false;
        if (messagingpanelsearchdto == null || messagingpanelsearchdto.getChatHeaders() == null || messagingpanelsearchdto.getChatHeaders().isEmpty())
        {
            if (flag && messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist.add(new f(o.a));
                arraylist.add(new c(o.a));
            } else
            {
                boolean flag2 = messagingpanelsearchdto.isSearchingOnServer();
                flag1 = false;
                if (!flag2)
                {
                    arraylist.add(new f(o.a));
                    arraylist.add(new d(o.a));
                    flag1 = false;
                }
            }
        } else
        {
            arraylist.add(new f(o.a));
            ChatHeaderDTO chatheaderdto;
            for (Iterator iterator2 = messagingpanelsearchdto.getChatHeaders().iterator(); iterator2.hasNext(); arraylist.add(new b(o.a, chatheaderdto)))
            {
                chatheaderdto = (ChatHeaderDTO)iterator2.next();
            }

            if (flag && messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist.add(new c(o.a));
            }
            flag1 = true;
        }
        if (messagingpanelsearchdto == null || messagingpanelsearchdto.getFriends() == null || messagingpanelsearchdto.getFriends().isEmpty())
        {
            if (flag && messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist1.add(new f(com.etermax.gamescommon.menu.a.o.b));
                arraylist1.add(new c(com.etermax.gamescommon.menu.a.o.b));
            } else
            if (!messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist1.add(new f(com.etermax.gamescommon.menu.a.o.b));
                arraylist1.add(new d(com.etermax.gamescommon.menu.a.o.b));
            }
        } else
        {
            arraylist1.add(new f(com.etermax.gamescommon.menu.a.o.b));
            UserDTO userdto1;
            for (Iterator iterator1 = messagingpanelsearchdto.getFriends().iterator(); iterator1.hasNext(); arraylist1.add(new h(com.etermax.gamescommon.menu.a.o.b, userdto1)))
            {
                userdto1 = (UserDTO)iterator1.next();
            }

            if (flag && messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist1.add(new c(com.etermax.gamescommon.menu.a.o.b));
            }
            flag1 = true;
        }
        if (messagingpanelsearchdto == null || messagingpanelsearchdto.getSuggested() == null || messagingpanelsearchdto.getSuggested().isEmpty())
        {
            if (flag && messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist2.add(new f(com.etermax.gamescommon.menu.a.o.c));
                arraylist2.add(new c(com.etermax.gamescommon.menu.a.o.c));
            } else
            if (!messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist2.add(new f(com.etermax.gamescommon.menu.a.o.c));
                arraylist2.add(new d(com.etermax.gamescommon.menu.a.o.c));
            }
        } else
        {
            arraylist2.add(new f(com.etermax.gamescommon.menu.a.o.c));
            UserDTO userdto;
            for (Iterator iterator = messagingpanelsearchdto.getSuggested().iterator(); iterator.hasNext(); arraylist2.add(new h(com.etermax.gamescommon.menu.a.o.c, userdto)))
            {
                userdto = (UserDTO)iterator.next();
            }

            if (flag && messagingpanelsearchdto.isSearchingOnServer())
            {
                arraylist2.add(new c(com.etermax.gamescommon.menu.a.o.c));
            }
            flag1 = true;
        }
        if (!flag)
        {
            u u1 = new u(u.c);
            if (flag1)
            {
                u1.d("yes");
            } else
            {
                u1.d("no");
            }
            h.a(u1);
        }
        l.a();
        if (!arraylist.isEmpty())
        {
            l.a(o.a, arraylist);
        }
        if (!arraylist1.isEmpty())
        {
            l.a(com.etermax.gamescommon.menu.a.o.b, arraylist1);
        }
        if (!arraylist2.isEmpty())
        {
            l.a(com.etermax.gamescommon.menu.a.o.c, arraylist2);
        }
    }

    private void a(com.etermax.gamescommon.menu.a.a.a a1)
    {
        int i1;
        Object obj;
        i1 = com.etermax.gamescommon.menu.a._cls9.b[a1.a().ordinal()];
        obj = null;
        i1;
        JVM INSTR tableswitch 1 3: default 40
    //                   1 89
    //                   2 103
    //                   3 103;
           goto _L1 _L2 _L3 _L3
_L1:
        if (obj == null) goto _L5; else goto _L4
_L4:
        _cls9.a[a1.b().ordinal()];
        JVM INSTR tableswitch 1 3: default 80
    //                   1 252
    //                   2 262
    //                   3 272;
           goto _L6 _L7 _L8 _L9
_L6:
        h.a(((com.etermax.tools.f.a.a) (obj)));
_L5:
        return;
_L2:
        obj = new u(u.b);
        continue; /* Loop/switch isn't completed */
_L3:
        u u1;
        u1 = new u(u.a);
        u1.b("dashboard");
        com.etermax.gamescommon.login.datasource.dto.UserDTO.Status status;
        if (a1 instanceof b)
        {
            status = ((b)a1).c().getUser().getOnlineStatus();
        } else
        {
            boolean flag = a1 instanceof h;
            status = null;
            if (flag)
            {
                status = ((h)a1).c().getOnlineStatus();
            }
        }
        if (status == null)
        {
            break; /* Loop/switch isn't completed */
        }
        com.etermax.gamescommon.menu.a._cls9.c[status.ordinal()];
        JVM INSTR tableswitch 1 3: default 184
    //                   1 219
    //                   2 230
    //                   3 241;
           goto _L10 _L11 _L12 _L13
_L10:
        obj = u1;
        continue; /* Loop/switch isn't completed */
_L11:
        u1.c("idle");
        continue; /* Loop/switch isn't completed */
_L12:
        u1.c("offline");
        continue; /* Loop/switch isn't completed */
_L13:
        u1.c("online");
        if (true) goto _L10; else goto _L7
_L7:
        ((u) (obj)).a("chats");
        continue; /* Loop/switch isn't completed */
_L8:
        ((u) (obj)).a("friends");
        continue; /* Loop/switch isn't completed */
_L9:
        ((u) (obj)).a("suggested");
        if (true) goto _L6; else goto _L14
_L14:
        obj = u1;
        if (true) goto _L1; else goto _L15
_L15:
    }

    static void a(a a1, ChatHeaderListDTO chatheaderlistdto)
    {
        a1.a(chatheaderlistdto);
    }

    static void a(a a1, MessagingPanelDTO messagingpaneldto)
    {
        a1.a(messagingpaneldto);
    }

    static void a(a a1, MessagingPanelSearchDTO messagingpanelsearchdto, boolean flag)
    {
        a1.a(messagingpanelsearchdto, flag);
    }

    static void a(a a1, com.etermax.gamescommon.menu.a.a.a a2)
    {
        a1.a(a2);
    }

    static com.etermax.gamescommon.menu.a.b b(a a1)
    {
        return a1.m;
    }

    private void b(MessagingPanelDTO messagingpaneldto)
    {
        if (q == 1 && (messagingpaneldto == null || messagingpaneldto.getSuggested() == null || messagingpaneldto.getSuggested().isEmpty() || ((List)messagingpaneldto.getSuggested().get(0)).isEmpty()))
        {
            l.a(com.etermax.gamescommon.menu.a.o.c);
            return;
        }
        if (messagingpaneldto == null)
        {
            messagingpaneldto = new MessagingPanelDTO();
            messagingpaneldto.setHasMoreSuggested(false);
        }
        if (messagingpaneldto.getSuggested() == null)
        {
            messagingpaneldto.setSuggested(new ArrayList());
        }
        if (messagingpaneldto.getSuggested().isEmpty())
        {
            messagingpaneldto.getSuggested().add(new ArrayList());
        }
        List list = (List)messagingpaneldto.getSuggested().get(0);
        ArrayList arraylist = new ArrayList();
        if (q == 1)
        {
            arraylist.add(new f(com.etermax.gamescommon.menu.a.o.c));
        }
        UserDTO userdto;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new h(com.etermax.gamescommon.menu.a.o.c, userdto)))
        {
            userdto = (UserDTO)iterator.next();
        }

        if (messagingpaneldto.hasMoreSuggested())
        {
            arraylist.add(new com.etermax.gamescommon.menu.a.a.e(com.etermax.gamescommon.menu.a.o.c));
        }
        if (q == 1)
        {
            l.a(com.etermax.gamescommon.menu.a.o.c, arraylist);
            return;
        } else
        {
            l.b(com.etermax.gamescommon.menu.a.o.c, arraylist);
            return;
        }
    }

    static void b(a a1, MessagingPanelDTO messagingpaneldto)
    {
        a1.b(messagingpaneldto);
    }

    static int c(a a1)
    {
        int i1 = a1.o;
        a1.o = i1 + 1;
        return i1;
    }

    static void d(a a1)
    {
        a1.n();
    }

    static int e(a a1)
    {
        int i1 = a1.p;
        a1.p = i1 + 1;
        return i1;
    }

    static void f(a a1)
    {
        a1.o();
    }

    static int g(a a1)
    {
        int i1 = a1.q;
        a1.q = i1 + 1;
        return i1;
    }

    static void h(a a1)
    {
        a1.p();
    }

    static com.etermax.gamescommon.menu.a.c i(a a1)
    {
        return a1.n;
    }

    static int j(a a1)
    {
        return a1.o;
    }

    static int k(a a1)
    {
        int i1 = a1.o;
        a1.o = i1 - 1;
        return i1;
    }

    private void k()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new f(o.a));
        arraylist.add(new c(o.a));
        l.a(o.a, arraylist);
        arraylist.clear();
        arraylist.add(new f(com.etermax.gamescommon.menu.a.o.b));
        arraylist.add(new c(com.etermax.gamescommon.menu.a.o.b));
        l.a(com.etermax.gamescommon.menu.a.o.b, arraylist);
    }

    static int l(a a1)
    {
        return a1.p;
    }

    private void l()
    {
        b.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
        c.addTextChangedListener(new TextWatcher() {

            final a a;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                if (TextUtils.isEmpty(charsequence))
                {
                    a.e.setVisibility(8);
                    a..k();
                    a.();
                    return;
                } else
                {
                    a.e.setVisibility(0);
                    a.();
                    return;
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        c.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final a a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                switch (i1)
                {
                default:
                    return false;

                case 4: // '\004'
                    a.a(textview.getWindowToken());
                    break;
                }
                a.();
                return true;
            }

            
            {
                a = a.this;
                super();
            }
        });
        c.setOnKeyListener(new android.view.View.OnKeyListener() {

            final a a;

            public boolean onKey(View view, int i1, KeyEvent keyevent)
            {
                if (i1 == 66 && keyevent.getAction() == 1)
                {
                    a.a(view.getWindowToken());
                    a.();
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
    }

    static int m(a a1)
    {
        int i1 = a1.p;
        a1.p = i1 - 1;
        return i1;
    }

    private void m()
    {
        a.setOnTouchListener(new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0 && a.getParent() != null)
                {
                    a.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }

            
            {
                a = a.this;
                super();
            }
        });
        b.setOnTouchListener(new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0 && a.getParent() != null)
                {
                    a.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }

            
            {
                a = a.this;
                super();
            }
        });
        c.setOnTouchListener(new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0 && a.getParent() != null)
                {
                    a.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }

            
            {
                a = a.this;
                super();
            }
        });
        d.setOnTouchListener(new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0 && a.getParent() != null)
                {
                    a.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }

            
            {
                a = a.this;
                super();
            }
        });
        e.setOnTouchListener(new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0 && a.getParent() != null)
                {
                    a.getParent().requestDisallowInterceptTouchEvent(true);
                }
                return false;
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    static int n(a a1)
    {
        return a1.q;
    }

    private void n()
    {
        g.a(o, new com.etermax.gamescommon.menu.a.f() {

            final a a;

            public void a(ChatHeaderListDTO chatheaderlistdto)
            {
                com.etermax.a.a.c("FriendsPanel", "loadChatHeaders - onRequestComplete");
                a.a(a, chatheaderlistdto);
            }

            public volatile void a(Object obj)
            {
                a((ChatHeaderListDTO)obj);
            }

            public void a(boolean flag)
            {
                com.etermax.a.a.c("FriendsPanel", (new StringBuilder()).append("loadChatHeaders - onRequestFail - noMorePages = ").append(flag).toString());
                ChatHeaderListDTO chatheaderlistdto = new ChatHeaderListDTO();
                if (flag)
                {
                    chatheaderlistdto.setHasMore(false);
                } else
                {
                    if (a.j(a) > 1)
                    {
                        a.k(a);
                    }
                    chatheaderlistdto.setHasMore(true);
                }
                a.a(a, chatheaderlistdto);
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    static int o(a a1)
    {
        int i1 = a1.q;
        a1.q = i1 - 1;
        return i1;
    }

    private void o()
    {
        g.b(p, new com.etermax.gamescommon.menu.a.f() {

            final a a;

            public void a(MessagingPanelDTO messagingpaneldto)
            {
                com.etermax.a.a.c("FriendsPanel", "loadMessagingPanel - onRequestComplete");
                a.a(a, messagingpaneldto);
                h(a);
            }

            public volatile void a(Object obj)
            {
                a((MessagingPanelDTO)obj);
            }

            public void a(boolean flag)
            {
                com.etermax.a.a.c("FriendsPanel", (new StringBuilder()).append("loadMessagingPanel - onRequestFail - noMorePages = ").append(flag).toString());
                MessagingPanelDTO messagingpaneldto = new MessagingPanelDTO();
                if (flag)
                {
                    messagingpaneldto.setHasMoreFriends(false);
                } else
                {
                    if (a.l(a) > 1)
                    {
                        a.m(a);
                    }
                    messagingpaneldto.setHasMoreFriends(true);
                }
                a.a(a, messagingpaneldto);
                if (flag)
                {
                    h(a);
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    private void p()
    {
        g.c(q, new com.etermax.gamescommon.menu.a.f() {

            final a a;

            public void a(MessagingPanelDTO messagingpaneldto)
            {
                com.etermax.a.a.c("FriendsPanel", "loadSuggested - onRequestComplete");
                b(a, messagingpaneldto);
            }

            public volatile void a(Object obj)
            {
                a((MessagingPanelDTO)obj);
            }

            public void a(boolean flag)
            {
                com.etermax.a.a.c("FriendsPanel", (new StringBuilder()).append("loadSuggested - onRequestFail - noMorePages = ").append(flag).toString());
                MessagingPanelDTO messagingpaneldto = new MessagingPanelDTO();
                if (flag)
                {
                    messagingpaneldto.setHasMoreSuggested(false);
                } else
                {
                    if (a.n(a) > 1)
                    {
                        a.o(a);
                    }
                    messagingpaneldto.setHasMoreSuggested(true);
                }
                b(a, messagingpaneldto);
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void a()
    {
        g.a(this);
    }

    public void a(IBinder ibinder)
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
        if (inputmethodmanager != null)
        {
            inputmethodmanager.hideSoftInputFromWindow(ibinder, 0);
        }
    }

    public void a(com.etermax.gamescommon.menu.a.b b1, com.etermax.gamescommon.menu.a.c c1)
    {
        m = b1;
        n = c1;
        a.setAdapter(l);
        a.setOnItemClickListener(j);
        a.setOnItemLongClickListener(k);
        a.setCacheColorHint(0);
        a.setDividerHeight(0);
        g.b();
        g.c();
        m();
        l();
        k();
        a();
    }

    public void b()
    {
        g.a(this);
        c();
        d();
    }

    public void c()
    {
        com.etermax.a.a.c("FriendsPanel", "Updating ChatHeaders");
        o = 1;
        n();
    }

    public void d()
    {
        com.etermax.a.a.c("FriendsPanel", "Updating MessagingPanel");
        p = 1;
        q = 1;
        o();
    }

    void e()
    {
        g();
    }

    void f()
    {
        c.setText("");
        b();
    }

    public void g()
    {
        if (c.getText() == null || TextUtils.isEmpty(c.getText().toString()))
        {
            g.k();
            b();
            return;
        } else
        {
            g.a(c.getText().toString(), new com.etermax.gamescommon.menu.a.f() {

                final a a;

                public void a(MessagingPanelSearchDTO messagingpanelsearchdto)
                {
                    a.a(a, messagingpanelsearchdto, true);
                }

                public volatile void a(Object obj)
                {
                    a((MessagingPanelSearchDTO)obj);
                }

                public void a(boolean flag)
                {
                }

            
            {
                a = a.this;
                super();
            }
            }, new com.etermax.gamescommon.menu.a.f() {

                final a a;

                public void a(MessagingPanelSearchDTO messagingpanelsearchdto)
                {
                    a.a(a, messagingpanelsearchdto, false);
                }

                public volatile void a(Object obj)
                {
                    a((MessagingPanelSearchDTO)obj);
                }

                public void a(boolean flag)
                {
                }

            
            {
                a = a.this;
                super();
            }
            });
            return;
        }
    }

    public void h()
    {
        if (!TextUtils.isEmpty(c.getText()))
        {
            c.setText("");
        }
        if (i.a() != null)
        {
            i.b();
            if (l != null)
            {
                l.notifyDataSetChanged();
            }
        }
    }

    public void i()
    {
        if (g.f() || g.d())
        {
            com.etermax.a.a.c("FriendsPanel", "needToUpdateChatHeaders");
            if (!g.d())
            {
                g.h();
            }
            c();
        }
        if (g.g())
        {
            com.etermax.a.a.c("FriendsPanel", "needToUpdateMessagingPanel");
            g.i();
            d();
        }
    }

    public void j()
    {
        c();
    }

    protected void onAttachedToWindow()
    {
        com.etermax.a.a.c("FriendsPanel", "Agregando NotificationListener");
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow()
    {
        com.etermax.a.a.c("FriendsPanel", "Eliminando NotificationListener");
        g.b(this);
        super.onDetachedFromWindow();
    }
}
