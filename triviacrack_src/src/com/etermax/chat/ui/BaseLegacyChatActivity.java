// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBar;
import android.text.SpannableString;
import android.text.style.TypefaceSpan;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.etermax.chat.a.a.g;
import com.etermax.chat.a.c;
import com.etermax.chat.a.h;
import com.etermax.chat.a.i;
import com.etermax.chat.a.j;
import com.etermax.chat.a.k;
import com.etermax.chat.a.l;
import com.etermax.gamescommon.datasource.dto.MessageListDTO;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.e;
import com.etermax.gamescommon.menu.b;
import com.etermax.gamescommon.menu.navigation.d;
import com.etermax.o;
import com.etermax.tools.navigation.f;
import com.j256.ormlite.dao.DaoManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.chat.ui:
//            BaseChatActivity, b

public class BaseLegacyChatActivity extends BaseChatActivity
    implements c, com.etermax.chat.ui.b, e, b, d, com.etermax.gamescommon.notification.b, f
{

    public static String e = "opponentId";
    public static String f = "opponentName";
    public static String g = "from";
    protected static long p;
    protected static boolean q;
    protected static boolean r;
    protected static String s;
    protected static boolean t;
    protected com.etermax.chat.a.a h;
    protected com.etermax.gamescommon.datasource.a i;
    protected com.etermax.gamescommon.notification.d j;
    protected com.etermax.gamescommon.menu.a k;
    protected a l;
    protected com.etermax.tools.f.a m;
    protected com.etermax.gamescommon.menu.a.d n;
    protected com.etermax.gamescommon.datasource.e o;
    private ActionBar u;
    private final String v = "BrandonText-Regular.otf";
    private com.etermax.gamescommon.f.a.b w;
    private boolean x;
    private com.etermax.tools.navigation.d y;

    public BaseLegacyChatActivity()
    {
    }

    static com.etermax.gamescommon.f.a.b a(BaseLegacyChatActivity baselegacychatactivity)
    {
        return baselegacychatactivity.w;
    }

    static String a(BaseLegacyChatActivity baselegacychatactivity, String s1)
    {
        return baselegacychatactivity.a(s1);
    }

    private String a(String s1)
    {
        Date date;
        Calendar calendar;
        Calendar calendar1;
        String s2;
        String s3;
        if (s1 == null)
        {
            return null;
        }
        StringBuilder stringbuilder;
        StringBuilder stringbuilder1;
        String s4;
        Date date1;
        Date date2;
        try
        {
            date2 = (new SimpleDateFormat("MM/dd/yyyy HH:mm:ss z", Locale.US)).parse(s1);
        }
        catch (ParseException parseexception)
        {
            parseexception.printStackTrace();
            date = null;
            continue; /* Loop/switch isn't completed */
        }
        date = date2;
_L3:
        date1 = (new SimpleDateFormat("MM/dd/yyyy HH:mm:ss z", Locale.getDefault())).parse(s1);
        date = date1;
_L1:
        calendar = Calendar.getInstance();
        calendar.add(6, -1);
        calendar1 = Calendar.getInstance();
        calendar1.setTimeInMillis(date.getTime());
        calendar1.setTimeZone(calendar.getTimeZone());
        s2 = getString(o.last_seen);
        stringbuilder = new StringBuilder();
        Exception exception;
        ParseException parseexception1;
        Object obj;
        Object obj1;
        if (calendar1.get(11) > 9)
        {
            obj = Integer.valueOf(calendar1.get(11));
        } else
        {
            obj = (new StringBuilder()).append("0").append(calendar1.get(11)).toString();
        }
        stringbuilder1 = stringbuilder.append(obj).append(":");
        if (calendar1.get(12) > 9)
        {
            obj1 = Integer.valueOf(calendar1.get(12));
        } else
        {
            obj1 = (new StringBuilder()).append("0").append(calendar1.get(12)).toString();
        }
        s3 = stringbuilder1.append(obj1).toString();
        if (calendar1.get(1) < calendar.get(1) || calendar1.get(1) == calendar.get(1) && calendar1.get(6) < calendar.get(6))
        {
            s4 = (new StringBuilder()).append(s3).append(", ").append(calendar1.get(5)).append("/").append(calendar1.get(2)).toString();
            return (new StringBuilder()).append(s2).append(" ").append(s4).toString();
        }
        break MISSING_BLOCK_LABEL_382;
        parseexception1;
        if (date == null)
        {
            return null;
        }
          goto _L1
        exception;
        exception.printStackTrace();
        return null;
        if (calendar1.get(1) == calendar.get(1) && calendar1.get(6) == calendar.get(6))
        {
            return (new StringBuilder()).append(s2).append(" ").append(getString(o.chat_yesterday, new Object[] {
                s3
            }).toLowerCase()).toString();
        }
        return (new StringBuilder()).append(s2).append(" ").append(getString(o.chat_today, new Object[] {
            s3
        }).toLowerCase()).toString();
        if (true) goto _L3; else goto _L2
_L2:
    }

    static ArrayList a(BaseLegacyChatActivity baselegacychatactivity, List list, String s1)
    {
        return baselegacychatactivity.a(list, s1);
    }

    private ArrayList a(List list, String s1)
    {
        ArrayList arraylist = new ArrayList();
        if (list == null)
        {
            return arraylist;
        }
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            g g1 = (g)iterator.next();
            if (g1.e().equals("CHAT"))
            {
                com.etermax.chat.a.f f1 = new com.etermax.chat.a.f(i.a);
                f1.a(new Date(g1.f()));
                f1.a(g1.d());
                Long long1 = Long.valueOf(g1.b());
                if (long1.equals(Long.valueOf(l.e())))
                {
                    l l2 = h.f();
                    l2.a(long1.longValue());
                    f1.a(l2);
                    f1.a(h.c);
                } else
                {
                    l l1 = h.a(String.valueOf(long1));
                    if (l1 == null)
                    {
                        l1 = new l();
                        l1.a(s);
                        l1.a(false);
                        l1.b(s1);
                        h.a(String.valueOf(long1), l1);
                    }
                    if (l1.c() == null && s1 != null)
                    {
                        l1.b(s1);
                        h.a(String.valueOf(long1), l1);
                    }
                    l1.a(long1.longValue());
                    f1.a(l1);
                    f1.a(h.e);
                }
                arraylist.add(f1);
            } else
            {
                com.etermax.chat.a.f f2 = new com.etermax.chat.a.f(i.h);
                f2.a(g1.d());
                f2.a(new Date(g1.f()));
                k k1 = new k();
                k1.a(f2.f());
                k1.a(s);
                k1.a(com.etermax.gamescommon.datasource.dto.MessageDTO.EndedReason.get(g1.i()));
                k1.a(com.etermax.gamescommon.datasource.dto.MessageDTO.Application.valueOf(g1.k()));
                k1.a(com.etermax.gamescommon.datasource.dto.MessageDTO.EventType.get(g1.e()));
                k1.b(Long.valueOf(l.e()));
                k1.a(g1.j());
                l l3 = new l();
                l3.a(g1.b());
                f2.a(k1);
                f2.a(l3);
                arraylist.add(f2);
            }
        }

        return arraylist;
    }

    public static long b()
    {
        return p;
    }

    static ActionBar b(BaseLegacyChatActivity baselegacychatactivity)
    {
        return baselegacychatactivity.u;
    }

    private void b(com.etermax.chat.a.f f1)
    {
        f1.a(h.a);
        (new com.etermax.tools.i.a(f1) {

            final com.etermax.chat.a.f a;
            final BaseLegacyChatActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(BaseLegacyChatActivity baselegacychatactivity, Void void1)
            {
                a.a(h.c);
                b.n.a(BaseLegacyChatActivity.p, a.c());
                b.h.c();
            }

            protected void a(Exception exception, String s1)
            {
                a.a(h.b);
                b.h.c();
                Toast.makeText(j(), b.getString(o.error_chat_message), 1).show();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((BaseLegacyChatActivity)obj, (Void)obj1);
            }

            public Void b()
            {
                b.i.a(BaseLegacyChatActivity.p, a.c());
                return null;
            }

            
            {
                b = BaseLegacyChatActivity.this;
                a = f1;
                super();
            }
        }).a(this);
    }

    public static void b(boolean flag)
    {
        q = flag;
    }

    public static void c(boolean flag)
    {
        r = flag;
    }

    public static boolean c()
    {
        return q;
    }

    static boolean c(BaseLegacyChatActivity baselegacychatactivity)
    {
        return baselegacychatactivity.x;
    }

    public static boolean d()
    {
        return r;
    }

    public static String e()
    {
        return s;
    }

    public int a(com.etermax.gamescommon.menu.navigation.c c1)
    {
        return 0;
    }

    public void a()
    {
        h();
    }

    protected void a(int i1, boolean flag)
    {
        if (i1 != 1 || !flag) goto _L2; else goto _L1
_L1:
        ArrayList arraylist;
        u.setSubtitle("");
        x = true;
        arraylist = new ArrayList();
        arraylist = h.b(p);
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (arraylist.size() != 0)
        {
            break MISSING_BLOCK_LABEL_65;
        }
        x = false;
_L4:
        a(com.etermax.chat.a.j.a(a(((List) (arraylist)), ((String) (null)))));
_L2:
        (new com.etermax.tools.i.a(i1) {

            final int a;
            final BaseLegacyChatActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(BaseLegacyChatActivity baselegacychatactivity, MessageListDTO messagelistdto)
            {
                ArrayList arraylist1;
                b.i.b(messagelistdto, Long.valueOf(BaseLegacyChatActivity.p), com.etermax.chat.ui.BaseLegacyChatActivity.a(b));
                arraylist1 = new ArrayList();
                ArrayList arraylist3 = b.h.a(messagelistdto, BaseLegacyChatActivity.p);
                arraylist1 = arraylist3;
_L2:
                BaseLegacyChatActivity.q = messagelistdto.isBlocked();
                BaseLegacyChatActivity.r = messagelistdto.isFriend();
                String s1 = com.etermax.chat.ui.BaseLegacyChatActivity.a(baselegacychatactivity, messagelistdto.getLastSeen());
                ArrayList arraylist2;
                if (s1 != null && s1.length() > 0)
                {
                    SpannableString spannablestring = new SpannableString(s1);
                    spannablestring.setSpan(new TypefaceSpan("BrandonText-Regular.otf"), 0, spannablestring.length(), 33);
                    com.etermax.chat.ui.BaseLegacyChatActivity.b(b).setSubtitle(spannablestring);
                } else
                {
                    com.etermax.chat.ui.BaseLegacyChatActivity.b(b).setSubtitle("");
                }
                arraylist2 = com.etermax.chat.ui.BaseLegacyChatActivity.a(b, arraylist1, String.valueOf(messagelistdto.getOpponentFacebookId()));
                b.a(com.etermax.chat.a.j.a(arraylist2));
                if (messagelistdto.isMore() && !com.etermax.chat.ui.BaseLegacyChatActivity.c(b) && messagelistdto.getList().size() > 0)
                {
                    b.a(1 + a, true);
                }
                b.n.a(BaseLegacyChatActivity.p);
                return;
                Exception exception1;
                exception1;
                if (true) goto _L2; else goto _L1
_L1:
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((BaseLegacyChatActivity)obj, (MessageListDTO)obj1);
            }

            public MessageListDTO b()
            {
                return b.i.a(BaseLegacyChatActivity.p, a, 0L);
            }

            
            {
                b = BaseLegacyChatActivity.this;
                a = i1;
                super();
            }
        }).a(this);
        return;
        Exception exception;
        exception;
        x = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(View view, com.etermax.tools.navigation.e e1)
    {
        y.a(view, e1);
    }

    public void a(com.etermax.chat.a.f f1)
    {
        b(f1);
    }

    public void a(UserDTO userdto)
    {
        p = userdto.getId().longValue();
        t = false;
        s = userdto.getName();
        x = true;
        f();
        h.d();
        a(1, true);
        b(n.b(p));
    }

    protected void a(ArrayList arraylist)
    {
        h.a(arraylist);
    }

    public boolean a_(Bundle bundle)
    {
        return false;
    }

    public void b(int i1)
    {
        if (i1 > 0)
        {
            if (i1 > 99)
            {
                i1 = 99;
            }
            a(i1);
            a(true);
            com.etermax.a.a.c("PLAYCHAT", "setBadgeVisibility : true");
            return;
        } else
        {
            a(false);
            com.etermax.a.a.c("PLAYCHAT", "setBadgeVisibility : false");
            return;
        }
    }

    public void b(View view, com.etermax.tools.navigation.e e1)
    {
        y.b(view, e1);
    }

    public void b(UserDTO userdto)
    {
        (new com.etermax.tools.i.a(userdto) {

            final UserDTO a;
            final BaseLegacyChatActivity b;

            public Object a()
            {
                com.etermax.gamescommon.b.d d1 = new com.etermax.gamescommon.b.d();
                d1.a("mp_swipe");
                b.m.a(d1);
                b.o.e(a.getId().longValue());
                b.h.a(a.getId().longValue());
                return null;
            }

            protected void a(FragmentActivity fragmentactivity, Void void1)
            {
                super.a(fragmentactivity, void1);
                b.n.c(a.getId().longValue());
                b.k.();
                b.h.d();
                b.a(1, true);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (Void)obj1);
            }

            
            {
                b = BaseLegacyChatActivity.this;
                a = userdto;
                super();
            }
        }).a(this);
    }

    public boolean b(com.etermax.gamescommon.menu.navigation.c c1)
    {
        return false;
    }

    public void c(UserDTO userdto)
    {
    }

    public void d(UserDTO userdto)
    {
    }

    public void f()
    {
        u = getSupportActionBar();
        u.setDisplayShowHomeEnabled(true);
        u.setHomeButtonEnabled(true);
        u.setDisplayHomeAsUpEnabled(false);
        u.setDisplayUseLogoEnabled(true);
        SpannableString spannablestring = new SpannableString(s);
        spannablestring.setSpan(new TypefaceSpan("BrandonText-Regular.otf"), 0, spannablestring.length(), 33);
        u.setTitle(spannablestring);
    }

    public void g()
    {
        y.b();
    }

    public void h()
    {
        y.d();
    }

    public void i()
    {
        b(n.b(p));
    }

    public void onAttachedToWindow()
    {
        y.a();
        super.onAttachedToWindow();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(com.etermax.k.activity_chat);
        y = new com.etermax.tools.navigation.d((DrawerLayout)findViewById(com.etermax.i.drawerLayout), (FrameLayout)findViewById(com.etermax.i.leftPanel), (FrameLayout)findViewById(com.etermax.i.rightPanel));
        k.a(this);
        w = new com.etermax.gamescommon.f.a.b(this);
    }

    protected void onDestroy()
    {
        DaoManager.clearCache();
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if (menuitem.getItemId() == 0x102002c)
        {
            finish();
            return true;
        }
        if (menuitem.getItemId() == com.etermax.i.action_friends_pannel)
        {
            h();
        }
        return super.onOptionsItemSelected(menuitem);
    }

    protected void onPause()
    {
        super.onPause();
        y.b();
        j.b(this);
        h.a(null);
    }

    protected void onRestoreInstanceState(Bundle bundle)
    {
        p = bundle.getLong("mOpponentId");
        q = bundle.getBoolean("mIsBlocked");
        r = bundle.getBoolean("mIsFavourite");
        s = bundle.getString("mOpponentName");
        t = bundle.getBoolean("mFromFriendsPanel");
        x = bundle.getBoolean("mIsChatHistortyDownloaded");
        super.onRestoreInstanceState(bundle);
    }

    protected void onResume()
    {
        super.onResume();
        f();
        j.a(this);
        h.a(this);
        a(1, true);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putLong("mOpponentId", p);
        bundle.putBoolean("mIsBlocked", q);
        bundle.putBoolean("mIsFavourite", r);
        bundle.putString("mOpponentName", s);
        bundle.putBoolean("mFromFriendsPanel", t);
        bundle.putBoolean("mIsChatHistortyDownloaded", x);
        super.onSaveInstanceState(bundle);
    }

    protected void onStart()
    {
        n.a(this);
        n.a(this);
        super.onStart();
    }

    protected void onStop()
    {
        n.b(this);
        n.b(this);
        h.d();
        super.onStop();
    }

}
