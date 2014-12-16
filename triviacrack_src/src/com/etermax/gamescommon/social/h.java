// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.b.aq;
import com.etermax.gamescommon.b.ar;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.gamescommon.gifting.dto.GiftItemDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.o;
import com.etermax.tools.j.a;
import com.etermax.tools.social.a.b;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.etermax.gamescommon.social:
//            a, i, d

public class h
{

    b a;
    e b;
    com.etermax.tools.f.a c;
    com.etermax.gamescommon.social.a d;
    Context e;

    public h()
    {
    }

    private HashMap a(String s)
    {
        String s1 = e.getSharedPreferences("usersTimeouts", 0).getString(s, "");
        if (s1.length() == 0)
        {
            return new HashMap();
        } else
        {
            java.lang.reflect.Type type = (new TypeToken() {

                final h a;

            
            {
                a = h.this;
                super();
            }
            }).getType();
            return (HashMap)com.etermax.tools.j.a.a().fromJson(s1, type);
        }
    }

    private void a(int i)
    {
        ar ar1 = new ar();
        ar1.a(i);
        c.a(ar1);
    }

    static void a(h h1, int i)
    {
        h1.a(i);
    }

    static void a(h h1, Fragment fragment, String s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action action, int i, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType gifttype, i j)
    {
        h1.b(fragment, s, action, i, gifttype, j);
    }

    private String[] a(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action action, int i)
    {
        HashMap hashmap;
        ArrayList arraylist;
        Iterator iterator;
        if (action == com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND)
        {
            hashmap = a("senders");
        } else
        {
            hashmap = a("receivers");
        }
        arraylist = new ArrayList();
        iterator = hashmap.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (System.currentTimeMillis() - ((Long)entry.getValue()).longValue() < (long)i)
            {
                arraylist.add(entry.getKey());
            }
        } while (true);
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    private void b(int i)
    {
        aq aq1 = new aq();
        aq1.a(i);
        c.a(aq1);
    }

    private void b(Fragment fragment, String s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action action, int i, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType gifttype, i j)
    {
        a.a(fragment.getActivity(), s, a(action, i), new com.etermax.tools.social.a.e(action, fragment, gifttype, j) {

            final com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action a;
            final Fragment b;
            final com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType c;
            final i d;
            final h e;

            public void a()
            {
                com.etermax.a.a.c("FACEBOOK", "cancel");
            }

            public void a(String s1)
            {
                com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("on error ").append(s1).toString());
            }

            public void a(String as[])
            {
                com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("regalos enviados via Facebook a ").append(as.length).append(" amigo/s").toString());
                if (a != com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK) goto _L2; else goto _L1
_L1:
                com.etermax.gamescommon.social.h.a(e, as.length);
_L4:
                (new com.etermax.tools.i.a(this, b.getString(o.loading), as) {

                    final String a[];
                    final _cls2 b;

                    public Object a()
                    {
                        return b();
                    }

                    protected void a(Fragment fragment, Exception exception)
                    {
                        super.a(fragment, exception);
                        com.etermax.a.a.c("FACEBOOK", "Fallo al pedir regalos via api ");
                        if (b.d != null)
                        {
                            b.d.a(exception);
                        }
                    }

                    protected void a(Fragment fragment, Void void1)
                    {
                        super.a(fragment, void1);
                        com.etermax.a.a.c("FACEBOOK", "regalos pedidos via api ");
                        if (b.d != null)
                        {
                            b.d.a();
                        }
                    }

                    protected volatile void a(Object obj, Exception exception)
                    {
                        a((Fragment)obj, exception);
                    }

                    protected volatile void a(Object obj, Object obj1)
                    {
                        a((Fragment)obj, (Void)obj1);
                    }

                    public Void b()
                    {
                        GiftActionDTO giftactiondto = new GiftActionDTO();
                        giftactiondto.setAction(b.a);
                        UserDTO auserdto[] = new UserDTO[a.length];
                        for (int j = 0; j < a.length; j++)
                        {
                            auserdto[j] = new UserDTO();
                            auserdto[j].setFacebook_id(a[j]);
                        }

                        giftactiondto.setReceivers(auserdto);
                        GiftItemDTO agiftitemdto[] = new GiftItemDTO[1];
                        agiftitemdto[0] = new GiftItemDTO();
                        agiftitemdto[0].setType(b.c);
                        giftactiondto.setItems(agiftitemdto);
                        b.e.b.a(giftactiondto);
                        return null;
                    }

            
            {
                b = _pcls2;
                a = as;
                super(s);
            }
                }).a(b);
                return;
_L2:
                if (a == com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND)
                {
                    com.etermax.gamescommon.social.h.b(e, as.length);
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                e = h.this;
                a = action;
                b = fragment;
                c = gifttype;
                d = i;
                super();
            }
        });
    }

    static void b(h h1, int i)
    {
        h1.b(i);
    }

    public void a(Fragment fragment, Long long1, i i)
    {
        (new com.etermax.tools.i.a(long1, i) {

            final Long a;
            final i b;
            final h c;

            public Object a()
            {
                return b();
            }

            protected void a(Fragment fragment1, Exception exception)
            {
                super.a(fragment1, exception);
                if (b != null)
                {
                    b.a(exception);
                }
            }

            protected void a(Fragment fragment1, Void void1)
            {
                super.a(fragment1, void1);
                if (b != null)
                {
                    b.a();
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((Fragment)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((Fragment)obj, (Void)obj1);
            }

            public Void b()
            {
                GiftActionDTO giftactiondto = new GiftActionDTO();
                giftactiondto.setAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ACCEPT);
                if (a != null)
                {
                    c.b.a(a.longValue(), giftactiondto);
                } else
                {
                    giftactiondto.setAcceptAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND);
                    c.b.a(giftactiondto);
                }
                return null;
            }

            
            {
                c = h.this;
                a = long1;
                b = j;
                super();
            }
        }).a(fragment);
    }

    public void a(Fragment fragment, String s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action action, int i, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType gifttype, i j)
    {
        String s1;
        if (action == com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK)
        {
            s1 = "ask_gift";
        } else
        {
            s1 = "send_gift";
        }
        d.a(fragment.getActivity(), s1, new d(fragment, s, action, i, gifttype, j) {

            final Fragment a;
            final String b;
            final com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action c;
            final int d;
            final com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType e;
            final i f;
            final h g;

            public void a()
            {
                com.etermax.gamescommon.social.h.a(g, a, b, c, d, e, f);
            }

            
            {
                g = h.this;
                a = fragment;
                b = s;
                c = action;
                d = i;
                e = gifttype;
                f = j;
                super();
            }
        });
    }

    public void a(Fragment fragment, String s, Long long1, String as[], i i)
    {
        a.b(fragment.getActivity(), s, as, new com.etermax.tools.social.a.e(fragment, long1, i) {

            final Fragment a;
            final Long b;
            final i c;
            final h d;

            public void a()
            {
                com.etermax.a.a.c("FACEBOOK", "cancel");
            }

            public void a(String s1)
            {
                com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("on error ").append(s1).toString());
            }

            public void a(String as1[])
            {
                com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("regalos enviados via Facebook a ").append(as1.length).append(" amigo/s").toString());
                (new com.etermax.tools.i.a(this, a.getString(o.loading), as1) {

                    final String a[];
                    final _cls5 b;

                    public Object a()
                    {
                        return b();
                    }

                    protected void a(Fragment fragment, Exception exception)
                    {
                        super.a(fragment, exception);
                        com.etermax.a.a.c("FACEBOOK", "Fallo al enviar regalos via api ");
                        if (b.c != null)
                        {
                            b.c.a(exception);
                        }
                    }

                    protected void a(Fragment fragment, Void void1)
                    {
                        super.a(fragment, void1);
                        if (b.c != null)
                        {
                            com.etermax.gamescommon.social.h.b(b.d, a.length);
                            b.c.a();
                        }
                    }

                    protected volatile void a(Object obj, Exception exception)
                    {
                        a((Fragment)obj, exception);
                    }

                    protected volatile void a(Object obj, Object obj1)
                    {
                        a((Fragment)obj, (Void)obj1);
                    }

                    public Void b()
                    {
                        GiftActionDTO giftactiondto = new GiftActionDTO();
                        giftactiondto.setAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ACCEPT);
                        if (b.b != null)
                        {
                            b.d.b.a(b.b.longValue(), giftactiondto);
                        } else
                        {
                            giftactiondto.setAcceptAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK);
                            b.d.b.a(giftactiondto);
                        }
                        return null;
                    }

            
            {
                b = _pcls5;
                a = as;
                super(s);
            }
                }).a(a);
            }

            
            {
                d = h.this;
                a = fragment;
                b = long1;
                c = i;
                super();
            }
        });
    }

    public void a(Fragment fragment, String s, String as[], com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType gifttype, i i)
    {
        a.b(fragment.getActivity(), s, as, new com.etermax.tools.social.a.e(gifttype, fragment, i) {

            final com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType a;
            final Fragment b;
            final i c;
            final h d;

            public void a()
            {
                com.etermax.a.a.c("FACEBOOK", "cancel");
            }

            public void a(String s1)
            {
                com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("on error ").append(s1).toString());
            }

            public void a(String as1[])
            {
                com.etermax.a.a.c("FACEBOOK", (new StringBuilder()).append("regalos de tipo ").append(a.name()).append(" enviados via Facebook a ").append(as1.length).append(" amigo/s").toString());
                (new com.etermax.tools.i.a(this, b.getString(o.loading), as1) {

                    final String a[];
                    final _cls6 b;

                    public Object a()
                    {
                        return b();
                    }

                    protected void a(Fragment fragment, Exception exception)
                    {
                        super.a(fragment, exception);
                        com.etermax.a.a.c("FACEBOOK", "Fallo al enviar regalos via api ");
                        if (b.c != null)
                        {
                            b.c.a(exception);
                        }
                    }

                    protected void a(Fragment fragment, Void void1)
                    {
                        super.a(fragment, void1);
                        if (b.c != null)
                        {
                            com.etermax.gamescommon.social.h.b(b.d, a.length);
                            b.c.a();
                        }
                    }

                    protected volatile void a(Object obj, Exception exception)
                    {
                        a((Fragment)obj, exception);
                    }

                    protected volatile void a(Object obj, Object obj1)
                    {
                        a((Fragment)obj, (Void)obj1);
                    }

                    public Void b()
                    {
                        GiftActionDTO giftactiondto = new GiftActionDTO();
                        giftactiondto.setAction(com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.SEND);
                        UserDTO auserdto[] = new UserDTO[a.length];
                        for (int j = 0; j < a.length; j++)
                        {
                            auserdto[j] = new UserDTO();
                            auserdto[j].setFacebook_id(a[j]);
                        }

                        giftactiondto.setReceivers(auserdto);
                        GiftItemDTO agiftitemdto[] = new GiftItemDTO[1];
                        agiftitemdto[0] = new GiftItemDTO();
                        agiftitemdto[0].setType(b.a);
                        giftactiondto.setItems(agiftitemdto);
                        b.d.b.a(giftactiondto);
                        return null;
                    }

            
            {
                b = _pcls6;
                a = as;
                super(s);
            }
                }).a(b);
            }

            
            {
                d = h.this;
                a = gifttype;
                b = fragment;
                c = i;
                super();
            }
        });
    }
}
