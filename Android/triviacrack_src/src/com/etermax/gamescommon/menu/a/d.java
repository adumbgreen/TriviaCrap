// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.etermax.gamescommon.datasource.dto.AppConfigDTO;
import com.etermax.gamescommon.datasource.dto.ChatHeaderDTO;
import com.etermax.gamescommon.datasource.dto.ChatHeaderListDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelDTO;
import com.etermax.gamescommon.datasource.dto.MessagingPanelSearchDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.datasource.f;
import com.etermax.gamescommon.e.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.notification.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            f, i, h, g, 
//            e

public class d
    implements f, b
{

    protected e a;
    protected a b;
    protected com.etermax.gamescommon.datasource.a c;
    protected com.etermax.gamescommon.notification.d d;
    private FragmentActivity e;
    private ChatHeaderListDTO f;
    private MessagingPanelDTO g;
    private long h;
    private long i;
    private long j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private com.etermax.gamescommon.menu.a.e o;
    private h p;
    private i q;
    private g r;
    private Handler s;

    public d()
    {
        h = 0L;
        i = 0L;
        j = 0L;
        k = false;
        l = false;
        m = false;
        n = false;
        s = new Handler();
    }

    static long a(d d1, long l1)
    {
        d1.i = l1;
        return l1;
    }

    static ChatHeaderListDTO a(d d1)
    {
        return d1.f;
    }

    static ChatHeaderListDTO a(d d1, ChatHeaderListDTO chatheaderlistdto)
    {
        d1.f = chatheaderlistdto;
        return chatheaderlistdto;
    }

    static MessagingPanelDTO a(d d1, MessagingPanelDTO messagingpaneldto)
    {
        d1.g = messagingpaneldto;
        return messagingpaneldto;
    }

    static g a(d d1, g g1)
    {
        d1.r = g1;
        return g1;
    }

    static i a(d d1, i i1)
    {
        d1.q = i1;
        return i1;
    }

    private List a(String s1)
    {
        ArrayList arraylist = new ArrayList();
        if (f != null && f.getChatHeaders() != null)
        {
            for (Iterator iterator = f.getChatHeaders().iterator(); iterator.hasNext();)
            {
                Iterator iterator1 = ((List)iterator.next()).iterator();
                while (iterator1.hasNext()) 
                {
                    ChatHeaderDTO chatheaderdto = (ChatHeaderDTO)iterator1.next();
                    if (a(chatheaderdto.getUser(), s1))
                    {
                        arraylist.add(chatheaderdto);
                    }
                }
            }

        }
        return arraylist;
    }

    private void a(com.etermax.gamescommon.menu.a.f f1)
    {
        if (e != null && !e.isFinishing())
        {
            (new com.etermax.tools.i.a(f1) {

                final com.etermax.gamescommon.menu.a.f a;
                final d b;

                public Object a()
                {
                    return b.a.a(1);
                }

                protected void a(FragmentActivity fragmentactivity, ChatHeaderListDTO chatheaderlistdto)
                {
                    super.a(fragmentactivity, chatheaderlistdto);
                    com.etermax.gamescommon.menu.a.d.a(b, chatheaderlistdto);
                    if (com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders() == null)
                    {
                        com.etermax.gamescommon.menu.a.d.a(b).setChatHeaders(new ArrayList());
                    }
                    com.etermax.gamescommon.menu.a.d.a(b, System.currentTimeMillis());
                    com.etermax.gamescommon.menu.a.d.b(b, b.b.a());
                    if (com.etermax.gamescommon.menu.a.d.b(b) != null)
                    {
                        com.etermax.gamescommon.menu.a.d.b(b).i();
                    }
                    a.a(chatheaderlistdto);
                }

                protected void a(FragmentActivity fragmentactivity, Exception exception)
                {
                    boolean flag = com.etermax.gamescommon.menu.a.d.a(b, exception);
                    if (flag)
                    {
                        com.etermax.gamescommon.menu.a.d.a(b, System.currentTimeMillis());
                        com.etermax.gamescommon.menu.a.d.b(b, b.b.a());
                        com.etermax.gamescommon.menu.a.d.a(b, new ChatHeaderListDTO());
                        com.etermax.gamescommon.menu.a.d.a(b).setChatHeaders(new ArrayList());
                        com.etermax.gamescommon.menu.a.d.a(b).setHasMore(false);
                    }
                    a.a(flag);
                    boolean flag1 = false;
                    if (!flag)
                    {
                        flag1 = true;
                    }
                    b(flag1);
                    super.a(fragmentactivity, exception);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((FragmentActivity)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((FragmentActivity)obj, (ChatHeaderListDTO)obj1);
                }

            
            {
                b = d.this;
                a = f1;
                super();
            }
            }).a(e);
        }
    }

    static boolean a(d d1, Exception exception)
    {
        return d1.a(exception);
    }

    private boolean a(Exception exception)
    {
        return (exception instanceof com.etermax.tools.a.c.b) && ((com.etermax.tools.a.c.b)exception).c() == 416;
    }

    static long b(d d1, long l1)
    {
        d1.h = l1;
        return l1;
    }

    static com.etermax.gamescommon.menu.a.e b(d d1)
    {
        return d1.o;
    }

    private List b(String s1)
    {
        ArrayList arraylist = new ArrayList();
        if (g != null)
        {
            ArrayList arraylist1 = new ArrayList();
            if (g.getFriends() != null)
            {
                arraylist1.addAll(g.getFriends());
            }
            for (Iterator iterator = arraylist1.iterator(); iterator.hasNext();)
            {
                Iterator iterator1 = ((List)iterator.next()).iterator();
                while (iterator1.hasNext()) 
                {
                    UserDTO userdto = (UserDTO)iterator1.next();
                    if (a(userdto, s1))
                    {
                        arraylist.add(userdto);
                    }
                }
            }

        }
        return arraylist;
    }

    private void b(com.etermax.gamescommon.menu.a.f f1)
    {
        if (e != null && !e.isFinishing())
        {
            (new com.etermax.tools.i.a(f1) {

                final com.etermax.gamescommon.menu.a.f a;
                final d b;

                public Object a()
                {
                    int i1 = 1;
                    if (com.etermax.gamescommon.menu.a.d.a(b) != null && com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders() != null && !com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders().isEmpty())
                    {
                        i1 = 1 + com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders().size();
                    }
                    return b.a.a(i1);
                }

                protected void a(FragmentActivity fragmentactivity, ChatHeaderListDTO chatheaderlistdto)
                {
                    super.a(fragmentactivity, chatheaderlistdto);
                    if (chatheaderlistdto.hasMore() && (chatheaderlistdto.getChatHeaders() == null || chatheaderlistdto.getChatHeaders().isEmpty() || ((List)chatheaderlistdto.getChatHeaders().get(0)).isEmpty()))
                    {
                        chatheaderlistdto.setHasMore(false);
                    }
                    if (com.etermax.gamescommon.menu.a.d.a(b) != null && com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders() != null && !com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders().isEmpty()) goto _L2; else goto _L1
_L1:
                    com.etermax.gamescommon.menu.a.d.a(b, chatheaderlistdto);
_L4:
                    a.a(chatheaderlistdto);
                    return;
_L2:
                    if (chatheaderlistdto != null && chatheaderlistdto.getChatHeaders() != null)
                    {
                        com.etermax.gamescommon.menu.a.d.a(b).getChatHeaders().addAll(chatheaderlistdto.getChatHeaders());
                        com.etermax.gamescommon.menu.a.d.a(b).setHasMore(chatheaderlistdto.hasMore());
                    }
                    if (true) goto _L4; else goto _L3
_L3:
                }

                protected void a(FragmentActivity fragmentactivity, Exception exception)
                {
                    boolean flag = com.etermax.gamescommon.menu.a.d.a(b, exception);
                    a.a(flag);
                    boolean flag1;
                    if (!flag)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    b(flag1);
                    super.a(fragmentactivity, exception);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((FragmentActivity)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((FragmentActivity)obj, (ChatHeaderListDTO)obj1);
                }

            
            {
                b = d.this;
                a = f1;
                super();
            }
            }).a(e);
        }
    }

    static long c(d d1, long l1)
    {
        d1.j = l1;
        return l1;
    }

    static MessagingPanelDTO c(d d1)
    {
        return d1.g;
    }

    private List c(String s1)
    {
        ArrayList arraylist = new ArrayList();
        if (g != null)
        {
            ArrayList arraylist1 = new ArrayList();
            if (g.getSuggested() != null)
            {
                arraylist1.addAll(g.getSuggested());
            }
            for (Iterator iterator = arraylist1.iterator(); iterator.hasNext();)
            {
                Iterator iterator1 = ((List)iterator.next()).iterator();
                while (iterator1.hasNext()) 
                {
                    UserDTO userdto = (UserDTO)iterator1.next();
                    if (a(userdto, s1))
                    {
                        arraylist.add(userdto);
                    }
                }
            }

        }
        return arraylist;
    }

    private void c(com.etermax.gamescommon.menu.a.f f1)
    {
        if (e != null && !e.isFinishing())
        {
            (new com.etermax.tools.i.a(f1) {

                final com.etermax.gamescommon.menu.a.f a;
                final d b;

                public Object a()
                {
                    return b.a.g();
                }

                protected void a(FragmentActivity fragmentactivity, MessagingPanelDTO messagingpaneldto)
                {
                    super.a(fragmentactivity, messagingpaneldto);
                    com.etermax.gamescommon.menu.a.d.a(b, messagingpaneldto);
                    if (d.c(b).getFriends() == null)
                    {
                        d.c(b).setFriends(new ArrayList());
                    }
                    if (d.c(b).getSuggested() == null)
                    {
                        d.c(b).setSuggested(new ArrayList());
                    }
                    if (d.c(b).getFriends().isEmpty())
                    {
                        d.c(b).setHasMoreFriends(false);
                    }
                    if (d.c(b).getSuggested().isEmpty())
                    {
                        d.c(b).setHasMoreSuggested(false);
                    }
                    d.c(b, System.currentTimeMillis());
                    a.a(messagingpaneldto);
                }

                protected void a(FragmentActivity fragmentactivity, Exception exception)
                {
                    boolean flag = com.etermax.gamescommon.menu.a.d.a(b, exception);
                    a.a(flag);
                    boolean flag1;
                    if (!flag)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    b(flag1);
                    super.a(fragmentactivity, exception);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((FragmentActivity)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((FragmentActivity)obj, (MessagingPanelDTO)obj1);
                }

            
            {
                b = d.this;
                a = f1;
                super();
            }
            }).a(e);
        }
    }

    static FragmentActivity d(d d1)
    {
        return d1.e;
    }

    private void d(com.etermax.gamescommon.menu.a.f f1)
    {
        if (e != null && !e.isFinishing())
        {
            (new com.etermax.tools.i.a(f1) {

                final com.etermax.gamescommon.menu.a.f a;
                final d b;

                public Object a()
                {
                    int i1 = 1;
                    if (d.c(b) != null && d.c(b).getFriends() != null && !d.c(b).getFriends().isEmpty())
                    {
                        i1 = 1 + d.c(b).getFriends().size();
                    }
                    return b.a.b(i1);
                }

                protected void a(FragmentActivity fragmentactivity, MessagingPanelDTO messagingpaneldto)
                {
                    super.a(fragmentactivity, messagingpaneldto);
                    if (messagingpaneldto.getFriends() != null && !messagingpaneldto.getFriends().isEmpty() && !((List)messagingpaneldto.getFriends().get(0)).isEmpty())
                    {
                        d.c(b).getFriends().addAll(messagingpaneldto.getFriends());
                        d.c(b).setHasMoreFriends(messagingpaneldto.hasMoreFriends());
                    } else
                    {
                        d.c(b).setHasMoreFriends(false);
                    }
                    a.a(messagingpaneldto);
                }

                protected void a(FragmentActivity fragmentactivity, Exception exception)
                {
                    boolean flag = com.etermax.gamescommon.menu.a.d.a(b, exception);
                    a.a(flag);
                    boolean flag1;
                    if (!flag)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    b(flag1);
                    super.a(fragmentactivity, exception);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((FragmentActivity)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((FragmentActivity)obj, (MessagingPanelDTO)obj1);
                }

            
            {
                b = d.this;
                a = f1;
                super();
            }
            }).a(e);
        }
    }

    static g e(d d1)
    {
        return d1.r;
    }

    private void e(com.etermax.gamescommon.menu.a.f f1)
    {
        if (e != null && !e.isFinishing())
        {
            (new com.etermax.tools.i.a(f1) {

                final com.etermax.gamescommon.menu.a.f a;
                final d b;

                public Object a()
                {
                    int i1 = 1;
                    if (d.c(b) != null && d.c(b).getSuggested() != null && !d.c(b).getSuggested().isEmpty())
                    {
                        i1 = 1 + d.c(b).getSuggested().size();
                    }
                    return b.a.c(i1);
                }

                protected void a(FragmentActivity fragmentactivity, MessagingPanelDTO messagingpaneldto)
                {
                    super.a(fragmentactivity, messagingpaneldto);
                    if (messagingpaneldto.getSuggested() != null && !messagingpaneldto.getSuggested().isEmpty() && !((List)messagingpaneldto.getSuggested().get(0)).isEmpty())
                    {
                        d.c(b).getSuggested().addAll(messagingpaneldto.getSuggested());
                        d.c(b).setHasMoreSuggested(messagingpaneldto.hasMoreSuggested());
                    } else
                    {
                        d.c(b).setHasMoreSuggested(false);
                    }
                    a.a(messagingpaneldto);
                }

                protected void a(FragmentActivity fragmentactivity, Exception exception)
                {
                    boolean flag = com.etermax.gamescommon.menu.a.d.a(b, exception);
                    a.a(flag);
                    boolean flag1;
                    if (!flag)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    b(flag1);
                    super.a(fragmentactivity, exception);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((FragmentActivity)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((FragmentActivity)obj, (MessagingPanelDTO)obj1);
                }

            
            {
                b = d.this;
                a = f1;
                super();
            }
            }).a(e);
        }
    }

    public void a()
    {
        a.a(this);
        d.a(this);
    }

    public void a(int i1, com.etermax.gamescommon.menu.a.f f1)
    {
        boolean flag = true;
        if (f == null || f.getChatHeaders() == null || f.getChatHeaders().size() < i1)
        {
            if (f != null && f.getChatHeaders() != null && !f.hasMore())
            {
                f1.a(flag);
                return;
            }
            com.etermax.gamescommon.menu.a.f f2 = new com.etermax.gamescommon.menu.a.f(i1, f1) {

                final int a;
                final com.etermax.gamescommon.menu.a.f b;
                final d c;

                public void a(ChatHeaderListDTO chatheaderlistdto1)
                {
                    c.a(a, b);
                }

                public volatile void a(Object obj)
                {
                    a((ChatHeaderListDTO)obj);
                }

                public void a(boolean flag1)
                {
                    b.a(flag1);
                }

            
            {
                c = d.this;
                a = i1;
                b = f1;
                super();
            }
            };
            if (i1 == flag)
            {
                a(f2);
                return;
            } else
            {
                b(f2);
                return;
            }
        }
        ChatHeaderListDTO chatheaderlistdto = new ChatHeaderListDTO();
        ArrayList arraylist = new ArrayList();
        arraylist.add(f.getChatHeaders().get(i1 - 1));
        chatheaderlistdto.setChatHeaders(arraylist);
        if (f.getChatHeaders().size() <= i1 && !f.hasMore())
        {
            flag = false;
        }
        chatheaderlistdto.setHasMore(flag);
        f1.a(chatheaderlistdto);
        k = false;
    }

    public void a(long l1)
    {
        Iterator iterator;
        if (f == null || f.getChatHeaders() == null || f.getChatHeaders().isEmpty())
        {
            break MISSING_BLOCK_LABEL_122;
        }
        iterator = f.getChatHeaders().iterator();
_L2:
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_122;
        }
        iterator1 = ((List)iterator.next()).iterator();
_L4:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        ChatHeaderDTO chatheaderdto = (ChatHeaderDTO)iterator1.next();
        if (chatheaderdto.getUser().getId().longValue() != l1) goto _L4; else goto _L3
_L3:
        chatheaderdto.setUnreadCount(Integer.valueOf(0));
        k = true;
    }

    public void a(long l1, String s1)
    {
label0:
        {
            if (f == null || f.getChatHeaders() == null || f.getChatHeaders().isEmpty())
            {
                break label0;
            }
            Iterator iterator = f.getChatHeaders().iterator();
            List list;
            ChatHeaderDTO chatheaderdto;
label1:
            do
            {
                if (iterator.hasNext())
                {
                    list = (List)iterator.next();
                    Iterator iterator1 = list.iterator();
                    do
                    {
                        if (!iterator1.hasNext())
                        {
                            continue label1;
                        }
                        chatheaderdto = (ChatHeaderDTO)iterator1.next();
                    } while (chatheaderdto.getUser().getId().longValue() != l1);
                    break;
                }
                break label0;
            } while (true);
            chatheaderdto.setLastText(s1);
            list.remove(chatheaderdto);
            ((List)f.getChatHeaders().get(0)).add(0, chatheaderdto);
            k = true;
            return;
        }
        l = true;
    }

    public void a(FragmentActivity fragmentactivity)
    {
        e = fragmentactivity;
    }

    public void a(com.etermax.gamescommon.menu.a.e e1)
    {
        o = e1;
    }

    public void a(h h1)
    {
        p = h1;
    }

    public void a(Long long1)
    {
        m = true;
    }

    public void a(String s1, com.etermax.gamescommon.menu.a.f f1, com.etermax.gamescommon.menu.a.f f2)
    {
        k();
        MessagingPanelSearchDTO messagingpanelsearchdto = new MessagingPanelSearchDTO();
        messagingpanelsearchdto.setChatHeaders(a(s1));
        messagingpanelsearchdto.setFriends(b(s1));
        messagingpanelsearchdto.setSuggested(c(s1));
        if (s1.length() < 3)
        {
            messagingpanelsearchdto.setSearchingOnServer(false);
            f1.a(messagingpanelsearchdto);
        } else
        {
            messagingpanelsearchdto.setSearchingOnServer(true);
            f1.a(messagingpanelsearchdto);
            if (e != null && !e.isFinishing())
            {
                q = new i(this, s1, f2);
                s.postDelayed(q, 500L);
                return;
            }
        }
    }

    public boolean a(UserDTO userdto, String s1)
    {
        boolean flag;
        Pattern pattern = Pattern.compile(s1, 2);
        if (pattern.matcher(userdto.getUsername()).find())
        {
            break MISSING_BLOCK_LABEL_58;
        }
        if (!userdto.getFb_show_name() || TextUtils.isEmpty(userdto.getFacebook_name()))
        {
            break MISSING_BLOCK_LABEL_61;
        }
        flag = pattern.matcher(userdto.getFacebook_name()).find();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        return true;
        PatternSyntaxException patternsyntaxexception;
        patternsyntaxexception;
        return false;
    }

    public boolean a_(Bundle bundle)
    {
        String s1 = bundle.getString("data.TYPE");
        if (!TextUtils.isEmpty(s1) && s1.equals("NEW_MESSAGE"))
        {
            if (e != null && !e.isFinishing() && p != null)
            {
                h();
                p.j();
            } else
            {
                e();
            }
        }
        return false;
    }

    public int b(long l1)
    {
        ChatHeaderListDTO chatheaderlistdto = f;
        int i1 = 0;
        if (chatheaderlistdto != null)
        {
            List list = f.getChatHeaders();
            i1 = 0;
            if (list != null)
            {
                boolean flag = f.getChatHeaders().isEmpty();
                i1 = 0;
                if (!flag)
                {
                    Iterator iterator = f.getChatHeaders().iterator();
                    int j1 = 0;
                    while (iterator.hasNext()) 
                    {
                        Iterator iterator1 = ((List)iterator.next()).iterator();
                        while (iterator1.hasNext()) 
                        {
                            ChatHeaderDTO chatheaderdto = (ChatHeaderDTO)iterator1.next();
                            if (chatheaderdto.getUnreadCount().intValue() > 0 && chatheaderdto.getUser().getId().longValue() != l1)
                            {
                                j1++;
                            }
                        }
                    }
                    i1 = j1;
                }
            }
        }
        b.a(i1);
        return i1;
    }

    public void b()
    {
        m = true;
    }

    public void b(int i1, com.etermax.gamescommon.menu.a.f f1)
    {
        boolean flag = true;
        if (g == null || g.getFriends() == null || g.getFriends().size() < i1)
        {
            if (g != null && g.getFriends() != null && !g.hasMoreFriends())
            {
                f1.a(flag);
                return;
            }
            com.etermax.gamescommon.menu.a.f f2 = new com.etermax.gamescommon.menu.a.f(i1, f1) {

                final int a;
                final com.etermax.gamescommon.menu.a.f b;
                final d c;

                public void a(MessagingPanelDTO messagingpaneldto1)
                {
                    c.b(a, b);
                }

                public volatile void a(Object obj)
                {
                    a((MessagingPanelDTO)obj);
                }

                public void a(boolean flag1)
                {
                    b.a(flag1);
                }

            
            {
                c = d.this;
                a = i1;
                b = f1;
                super();
            }
            };
            if (i1 == flag)
            {
                c(f2);
                return;
            } else
            {
                d(f2);
                return;
            }
        }
        MessagingPanelDTO messagingpaneldto = new MessagingPanelDTO();
        ArrayList arraylist = new ArrayList();
        arraylist.add(g.getFriends().get(i1 - 1));
        messagingpaneldto.setFriends(arraylist);
        if (g.getFriends().size() <= i1 && !g.hasMoreFriends())
        {
            flag = false;
        }
        messagingpaneldto.setHasMoreFriends(flag);
        f1.a(messagingpaneldto);
    }

    public void b(FragmentActivity fragmentactivity)
    {
        if (e == fragmentactivity)
        {
            e = null;
        }
    }

    public void b(com.etermax.gamescommon.menu.a.e e1)
    {
        if (o == e1)
        {
            o = null;
        }
    }

    public void b(h h1)
    {
        if (p == h1)
        {
            p = null;
        }
    }

    public void b(Long long1)
    {
        m = true;
    }

    public void c()
    {
        n = true;
    }

    public void c(int i1, com.etermax.gamescommon.menu.a.f f1)
    {
        boolean flag = true;
        if (g == null || g.getSuggested() == null || g.getSuggested().size() < i1)
        {
            if (g != null && g.getSuggested() != null && !g.hasMoreSuggested())
            {
                f1.a(flag);
                return;
            }
            com.etermax.gamescommon.menu.a.f f2 = new com.etermax.gamescommon.menu.a.f(i1, f1) {

                final int a;
                final com.etermax.gamescommon.menu.a.f b;
                final d c;

                public void a(MessagingPanelDTO messagingpaneldto1)
                {
                    c.c(a, b);
                }

                public volatile void a(Object obj)
                {
                    a((MessagingPanelDTO)obj);
                }

                public void a(boolean flag1)
                {
                    b.a(flag1);
                }

            
            {
                c = d.this;
                a = i1;
                b = f1;
                super();
            }
            };
            if (i1 == flag)
            {
                c(f2);
                return;
            } else
            {
                e(f2);
                return;
            }
        }
        MessagingPanelDTO messagingpaneldto = new MessagingPanelDTO();
        ArrayList arraylist = new ArrayList();
        arraylist.add(g.getSuggested().get(i1 - 1));
        messagingpaneldto.setSuggested(arraylist);
        if (g.getSuggested().size() <= i1 && !g.hasMoreSuggested())
        {
            flag = false;
        }
        messagingpaneldto.setHasMoreSuggested(flag);
        f1.a(messagingpaneldto);
    }

    public void c(long l1)
    {
        Iterator iterator;
        if (f == null || f.getChatHeaders() == null)
        {
            break MISSING_BLOCK_LABEL_107;
        }
        iterator = f.getChatHeaders().iterator();
_L2:
        List list;
        Iterator iterator1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_107;
        }
        list = (List)iterator.next();
        iterator1 = list.iterator();
_L4:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        ChatHeaderDTO chatheaderdto = (ChatHeaderDTO)iterator1.next();
        if (chatheaderdto.getUser().getId().longValue() != l1) goto _L4; else goto _L3
_L3:
        list.remove(chatheaderdto);
    }

    public boolean d()
    {
        return k;
    }

    public void e()
    {
        l = true;
    }

    public boolean f()
    {
        if (n)
        {
            n = false;
        } else
        {
            AppConfigDTO appconfigdto = b.a(new AppConfigDTO(), com/etermax/gamescommon/datasource/dto/AppConfigDTO);
            if ((System.currentTimeMillis() - i) / 1000L <= (long)appconfigdto.getFriendsPanelChatsTTL() && (b.a() <= 0L || b.a() - h <= 0L) && !l)
            {
                return false;
            }
        }
        return true;
    }

    public boolean g()
    {
        if (m)
        {
            m = false;
        } else
        {
            AppConfigDTO appconfigdto = b.a(new AppConfigDTO(), com/etermax/gamescommon/datasource/dto/AppConfigDTO);
            if (appconfigdto == null || (System.currentTimeMillis() - j) / 1000L <= (long)appconfigdto.getFriendsPanelFriendsTTL())
            {
                return false;
            }
        }
        return true;
    }

    public void h()
    {
        f = null;
        i = 0L;
        l = false;
        k = false;
    }

    public void i()
    {
        g = null;
        j = 0L;
    }

    public void j()
    {
        h();
        i();
    }

    public void k()
    {
        if (q != null)
        {
            s.removeCallbacks(q);
            q = null;
        }
        if (r != null)
        {
            r.b();
            r = null;
        }
    }

    public int l()
    {
        ChatHeaderListDTO chatheaderlistdto = f;
        int i1 = 0;
        if (chatheaderlistdto != null)
        {
            List list = f.getChatHeaders();
            i1 = 0;
            if (list != null)
            {
                boolean flag = f.getChatHeaders().isEmpty();
                i1 = 0;
                if (!flag)
                {
                    Iterator iterator = f.getChatHeaders().iterator();
                    int j1 = 0;
                    while (iterator.hasNext()) 
                    {
                        Iterator iterator1 = ((List)iterator.next()).iterator();
                        while (iterator1.hasNext()) 
                        {
                            if (((ChatHeaderDTO)iterator1.next()).getUnreadCount().intValue() > 0)
                            {
                                j1++;
                            }
                        }
                    }
                    i1 = j1;
                }
            }
        }
        b.a(i1);
        return i1;
    }
}
