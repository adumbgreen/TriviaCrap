// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.datasource;

import android.os.Bundle;
import android.text.TextUtils;
import com.etermax.gamescommon.d;
import com.etermax.gamescommon.datasource.dto.MessageDTO;
import com.etermax.gamescommon.datasource.dto.MessageListDTO;
import com.etermax.gamescommon.notification.b;
import com.etermax.tools.a.a.c;
import com.etermax.tools.a.a.j;
import com.etermax.tools.j.h;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.datasource:
//            c, b

public class a extends d
    implements b
{

    protected com.etermax.gamescommon.datasource.a.a c;
    protected j d;
    com.etermax.gamescommon.notification.d e;
    private final int f = 25;
    private com.etermax.gamescommon.f.a.b g;
    private com.etermax.gamescommon.datasource.b h;
    private boolean i;

    public a()
    {
        i = false;
    }

    static com.etermax.gamescommon.login.datasource.a a(a a1)
    {
        return a1.b;
    }

    static com.etermax.gamescommon.login.datasource.a b(a a1)
    {
        return a1.b;
    }

    static com.etermax.gamescommon.login.datasource.a c(a a1)
    {
        return a1.b;
    }

    public MessageListDTO a(long l, int k, long l1)
    {
        return a(l, k, l1, false);
    }

    public MessageListDTO a(long l, int k, long l1, boolean flag)
    {
        return (MessageListDTO)a(new c(l, k, l1, flag) {

            final long a;
            final int b;
            final long c;
            final boolean d;
            final a e;

            public MessageListDTO a()
            {
                return e.c.a(Long.valueOf(a.a(e).e()), Long.valueOf(a), b, c, d);
            }

            public Object b()
            {
                return a();
            }

            
            {
                e = a.this;
                a = l;
                b = k;
                c = l1;
                d = flag;
                super();
            }
        });
    }

    public void a(long l)
    {
        a(new c(l) {

            final long a;
            final a b;

            public Void a()
            {
                b.c.a(Long.valueOf(com.etermax.gamescommon.datasource.a.c(b).e()), Long.valueOf(a));
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                b = a.this;
                a = l;
                super();
            }
        });
    }

    public void a(long l, String s)
    {
        a(new c(s, l) {

            final String a;
            final long b;
            final a c;

            public Void a()
            {
                MessageDTO messagedto = new MessageDTO();
                messagedto.setMessage(a);
                c.c.a(Long.valueOf(com.etermax.gamescommon.datasource.a.b(c).e()), Long.valueOf(b), messagedto);
                return null;
            }

            public Object b()
            {
                return a();
            }

            
            {
                c = a.this;
                a = s;
                b = l;
                super();
            }
        });
    }

    public void a(MessageListDTO messagelistdto, Long long1)
    {
        a(messagelistdto, long1, g);
    }

    public void a(MessageListDTO messagelistdto, Long long1, com.etermax.gamescommon.f.a.b b1)
    {
        if (b1 != null && messagelistdto.getList() != null && messagelistdto.getList().size() > 0)
        {
            ArrayList arraylist = new ArrayList();
            List list = messagelistdto.getList();
            int k;
            if (list.size() > 25)
            {
                k = -25 + list.size();
            } else
            {
                k = 0;
            }
            for (; k < list.size(); k++)
            {
                arraylist.add(list.get(k));
            }

            com.etermax.gamescommon.f.b.a a1 = (com.etermax.gamescommon.f.b.a)b1.b(com/etermax/gamescommon/f/b/a, long1);
            if (a1 == null)
            {
                com.etermax.gamescommon.f.b.a a2 = new com.etermax.gamescommon.f.b.a();
                a2.a(long1);
                a2.a(arraylist);
                a2.a(com.etermax.tools.j.h.a(s));
                a2.a(messagelistdto.isFriend());
                a2.b(messagelistdto.isBlocked());
                a2.c(messagelistdto.isUserIsBlocked());
                a2.a(messagelistdto.getLastSeen());
                a2.b(Long.valueOf(messagelistdto.getOpponentFacebookId()));
                b1.b(com/etermax/gamescommon/f/b/a, a2);
            } else
            {
                List list1 = a1.a();
                boolean flag;
                if (list1 != null && list1.size() > 0)
                {
                    Date date = ((MessageDTO)list1.get(-1 + list1.size())).getParsedDate();
                    boolean flag1 = ((MessageDTO)arraylist.get(-1 + arraylist.size())).getParsedDate().after(date);
                    flag = false;
                    if (flag1)
                    {
                        flag = true;
                    }
                } else
                {
                    flag = true;
                }
                if (flag)
                {
                    a1.a(arraylist);
                    a1.a(com.etermax.tools.j.h.a(s));
                    a1.a(messagelistdto.isFriend());
                    a1.b(messagelistdto.isBlocked());
                    a1.c(messagelistdto.isUserIsBlocked());
                    a1.a(messagelistdto.getLastSeen());
                    a1.b(Long.valueOf(messagelistdto.getOpponentFacebookId()));
                    b1.b(com/etermax/gamescommon/f/b/a, a1);
                    return;
                }
            }
        }
    }

    public void a(Long long1, Date date, com.etermax.gamescommon.datasource.c c1)
    {
        while (i || g == null) 
        {
            return;
        }
        com.etermax.gamescommon.f.a.b b1 = g;
        b1;
        JVM INSTR monitorenter ;
        com.etermax.gamescommon.f.b.a a1 = (com.etermax.gamescommon.f.b.a)g.b(com/etermax/gamescommon/f/b/a, long1);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        boolean flag = a1.b().before(date);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        MessageListDTO messagelistdto = a(long1.longValue(), 1, (new Date(0L)).getTime() / 1000L, true);
        a(messagelistdto, long1);
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        c1.a();
        b1;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        b1;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        b1;
        JVM INSTR monitorexit ;
    }

    public void a(boolean flag, Long long1)
    {
        if (g != null)
        {
            com.etermax.gamescommon.f.b.a a1 = (com.etermax.gamescommon.f.b.a)g.b(com/etermax/gamescommon/f/b/a, long1);
            if (a1 != null)
            {
                a1.a(flag);
                g.b(com/etermax/gamescommon/f/b/a, a1);
            }
        }
    }

    public boolean a(Long long1)
    {
        if (g != null)
        {
            return g.a(com/etermax/gamescommon/f/b/a, long1);
        } else
        {
            return false;
        }
    }

    public boolean a_(Bundle bundle)
    {
        String s = bundle.getString("data.TYPE");
        if (!TextUtils.isEmpty(s) && s.equals("NEW_MESSAGE"))
        {
            long l;
            try
            {
                l = Long.parseLong(bundle.getString("data.U"));
            }
            catch (NumberFormatException numberformatexception)
            {
                return false;
            }
            if (h == null || !h.a(l))
            {
                a(Long.valueOf(l), new Date(), ((com.etermax.gamescommon.datasource.c) (null)));
            }
        }
        return false;
    }

    public void b(MessageListDTO messagelistdto, Long long1, com.etermax.gamescommon.f.a.b b1)
    {
        boolean flag = false;
        boolean flag1 = true;
        i = flag1;
        if (b1 != null && messagelistdto.getList() != null && messagelistdto.getList().size() > 0)
        {
            List list = messagelistdto.getList();
            com.etermax.gamescommon.f.b.a a1 = (com.etermax.gamescommon.f.b.a)b1.b(com/etermax/gamescommon/f/b/a, long1);
            if (a1 == null)
            {
                com.etermax.gamescommon.f.b.a a2 = new com.etermax.gamescommon.f.b.a();
                a2.a(long1);
                a2.a(list);
                a2.a(com.etermax.tools.j.h.a(s));
                a2.a(messagelistdto.isFriend());
                a2.b(messagelistdto.isBlocked());
                a2.c(messagelistdto.isUserIsBlocked());
                a2.a(messagelistdto.getLastSeen());
                a2.b(Long.valueOf(messagelistdto.getOpponentFacebookId()));
                b1.b(com/etermax/gamescommon/f/b/a, a2);
            } else
            {
                List list1 = a1.a();
                if (list1 != null && list1.size() > 0)
                {
                    Date date = ((MessageDTO)list1.get(0)).getParsedDate();
                    Date date1 = ((MessageDTO)list1.get(-1 + list1.size())).getParsedDate();
                    Date date2 = ((MessageDTO)list.get(0)).getParsedDate();
                    List list2;
                    if (date.after(((MessageDTO)list.get(-1 + list.size())).getParsedDate()))
                    {
                        list.addAll(list1);
                        list2 = list;
                    } else
                    if (date2.after(date1))
                    {
                        list1.addAll(list);
                        list2 = list1;
                    } else
                    {
                        Iterator iterator = list.iterator();
                        while (iterator.hasNext()) 
                        {
                            MessageDTO messagedto = (MessageDTO)iterator.next();
                            boolean flag2;
                            if (messagedto.getParsedDate().after(date1))
                            {
                                list1.add(messagedto);
                                flag2 = flag1;
                            } else
                            {
                                flag2 = flag;
                            }
                            flag = flag2;
                        }
                        flag1 = flag;
                        list2 = list1;
                    }
                } else
                {
                    list2 = list;
                }
                if (flag1)
                {
                    a1.a(list2);
                    a1.a(com.etermax.tools.j.h.a(s));
                    a1.a(messagelistdto.isFriend());
                    a1.b(messagelistdto.isBlocked());
                    a1.c(messagelistdto.isUserIsBlocked());
                    a1.a(messagelistdto.getLastSeen());
                    a1.b(Long.valueOf(messagelistdto.getOpponentFacebookId()));
                    b1.b(com/etermax/gamescommon/f/b/a, a1);
                    return;
                }
            }
        }
    }

    public void b(boolean flag, Long long1)
    {
        if (g != null)
        {
            com.etermax.gamescommon.f.b.a a1 = (com.etermax.gamescommon.f.b.a)g.b(com/etermax/gamescommon/f/b/a, long1);
            if (a1 != null)
            {
                a1.b(flag);
                g.b(com/etermax/gamescommon/f/b/a, a1);
            }
        }
    }

    public void c()
    {
        c.a(F());
        g = new com.etermax.gamescommon.f.a.b(s);
        e.a(this);
    }

    protected com.etermax.tools.a.b.a d()
    {
        return new com.etermax.gamescommon.datasource.b.a();
    }

    public void e()
    {
        c.a(d.b());
    }
}
