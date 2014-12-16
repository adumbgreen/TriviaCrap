// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;

import com.etermax.chat.a.a.d;
import com.etermax.chat.a.a.g;
import com.etermax.chat.a.a.h;
import com.etermax.gamescommon.datasource.dto.MessageDTO;
import com.etermax.gamescommon.datasource.dto.MessageListDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.chat.a:
//            d, l, j, b, 
//            c, f

public class a
{

    com.etermax.gamescommon.login.datasource.a a;
    d b;
    com.etermax.chat.ui.adapter.a c;
    private ArrayList d;
    private c e;
    private b f;
    private HashMap g;
    private l h;

    public a()
    {
        d = new ArrayList();
    }

    private ArrayList a(ArrayList arraylist, ArrayList arraylist1)
    {
        ArrayList arraylist2 = new ArrayList();
        arraylist.addAll(arraylist1);
        Collections.sort(arraylist, new com.etermax.chat.a.d(this));
        Iterator iterator = arraylist.iterator();
        long l1 = 0L;
        while (iterator.hasNext()) 
        {
            g g1 = (g)iterator.next();
            long l2;
            if (g1.f() != l1)
            {
                arraylist2.add(g1);
                l2 = g1.f();
            } else
            {
                l2 = l1;
            }
            l1 = l2;
        }
        return arraylist2;
    }

    public l a(String s)
    {
        return (l)g.get(s);
    }

    public ArrayList a(MessageListDTO messagelistdto, long l1)
    {
        ArrayList arraylist = new ArrayList();
        if (messagelistdto != null && messagelistdto.getList() != null)
        {
            Iterator iterator = messagelistdto.getList().iterator();
            while (iterator.hasNext()) 
            {
                MessageDTO messagedto = (MessageDTO)iterator.next();
                g g1 = new g();
                g1.a(messagedto.getMessage());
                g1.d(messagedto.getParsedDate().getTime());
                g1.b(messagedto.getType().toString());
                g1.b(messagedto.getUserId().longValue());
                g1.c(l1);
                String s;
                String s1;
                if (messagedto.getReason() == null)
                {
                    s = null;
                } else
                {
                    s = messagedto.getReason().toString();
                }
                g1.c(s);
                if (messagedto.getSourceApplication() == null)
                {
                    s1 = null;
                } else
                {
                    s1 = messagedto.getSourceApplication().toString();
                }
                g1.d(s1);
                g1.a(messagedto.getUser_to_mention());
                arraylist.add(g1);
            }
        }
        com.etermax.chat.a.a.a a1 = c(l1);
        a1.b(a(a1.b(), arraylist));
        a1.a(b);
        return a1.b();
    }

    protected void a()
    {
        g = new HashMap();
        h = new l();
        h.b(a.j());
        l l1 = h;
        String s;
        if (a.k() == null)
        {
            s = a.g();
        } else
        {
            s = a.k();
        }
        l1.a(s);
        h.a(true);
    }

    public void a(int i)
    {
        d.remove(i);
    }

    public void a(long l1)
    {
        c(l1).b(b);
    }

    public void a(b b1)
    {
        f = b1;
    }

    public void a(c c1)
    {
        e = c1;
    }

    public void a(f f1)
    {
        d.add(f1);
        j.a(d, 10);
        if (f != null)
        {
            f.g_();
        }
    }

    public void a(String s, l l1)
    {
        g.put(s, l1);
    }

    public void a(ArrayList arraylist)
    {
        d = arraylist;
        c.notifyDataSetChanged();
        if (f != null)
        {
            f.g_();
        }
    }

    public com.etermax.chat.ui.adapter.a b()
    {
        return c;
    }

    public ArrayList b(long l1)
    {
        return c(l1).b();
    }

    public void b(f f1)
    {
        if (e == null)
        {
            return;
        } else
        {
            e.a(f1);
            a(f1);
            return;
        }
    }

    public com.etermax.chat.a.a.a c(long l1)
    {
        com.etermax.chat.a.a.a a1 = new com.etermax.chat.a.a.a(b, l1);
        if (a1.a().isEmpty())
        {
            h h1 = new h();
            h1.b(l1);
            h1.c(h.d());
            h h2 = new h();
            h2.b(l1);
            h2.c(l1);
            ArrayList arraylist = new ArrayList();
            arraylist.add(h1);
            arraylist.add(h2);
            a1.a(arraylist);
        }
        return a1;
    }

    public void c()
    {
        if (f != null)
        {
            f.g_();
        }
    }

    public void d()
    {
        d.clear();
    }

    public ArrayList e()
    {
        return d;
    }

    public l f()
    {
        return h;
    }
}
