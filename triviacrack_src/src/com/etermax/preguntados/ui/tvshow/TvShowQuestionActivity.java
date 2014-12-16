// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import com.etermax.f;
import com.etermax.o;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.AnswerDTO;
import com.etermax.preguntados.datasource.dto.ShowDTO;
import com.etermax.preguntados.datasource.dto.TvShowQuestionDTO;
import com.etermax.preguntados.ui.tvshow.a.a;
import com.etermax.preguntados.ui.tvshow.a.b;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            h, m, TvShowQuestionActivity_, f, 
//            g, a, l, c

public class TvShowQuestionActivity extends BaseFragmentActivity
    implements b, h, m
{

    protected int a;
    d b;
    com.etermax.gamescommon.login.datasource.a c;
    protected long d;
    protected int e;
    protected Handler f;
    protected SharedPreferences g;
    protected Runnable h;
    private c i;
    private c j;

    public TvShowQuestionActivity()
    {
        i = new c() {

            final TvShowQuestionActivity a;

            public void a()
            {
                Fragment fragment = a.getSupportFragmentManager().findFragmentByTag("fragment_participation");
                com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a, fragment);
                g g1 = (g)a.getSupportFragmentManager().findFragmentByTag("fragment_tv_question");
                if (g1 != null)
                {
                    g1.e();
                }
                long l1 = System.currentTimeMillis() - a.d;
                long l2;
                if (l1 > (long)(1000 * a.e))
                {
                    l2 = 0L;
                } else
                {
                    l2 = (long)(1000 * a.e) - l1;
                }
                a.a(l2);
            }

            
            {
                a = TvShowQuestionActivity.this;
                super();
            }
        };
        j = new c() {

            final TvShowQuestionActivity a;

            public void a()
            {
                a.finish();
            }

            
            {
                a = TvShowQuestionActivity.this;
                super();
            }
        };
        h = new Runnable() {

            final TvShowQuestionActivity a;

            public void run()
            {
                if (!a.isFinishing())
                {
                    TvShowQuestionActivity.c(a);
                }
            }

            
            {
                a = TvShowQuestionActivity.this;
                super();
            }
        };
    }

    public static Intent a(Context context, int i1)
    {
        com.etermax.preguntados.ui.tvshow.f f1 = com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity_.a(context);
        if (i1 == 0)
        {
            i1 = 3;
        }
        return f1.a(i1).a();
    }

    private void a(TvShowQuestionDTO tvshowquestiondto)
    {
        Fragment fragment = getSupportFragmentManager().findFragmentByTag("fragment_waiting_question");
        if (fragment != null)
        {
            b(fragment);
        }
        a(((Fragment) (com.etermax.preguntados.ui.tvshow.g.a(tvshowquestiondto))), false, "fragment_tv_question");
    }

    static void a(TvShowQuestionActivity tvshowquestionactivity)
    {
        tvshowquestionactivity.l();
    }

    static void a(TvShowQuestionActivity tvshowquestionactivity, Fragment fragment)
    {
        tvshowquestionactivity.b(fragment);
    }

    static void a(TvShowQuestionActivity tvshowquestionactivity, TvShowQuestionDTO tvshowquestiondto)
    {
        tvshowquestionactivity.a(tvshowquestiondto);
    }

    private boolean a(com.etermax.preguntados.datasource.a.b b1)
    {
        switch (b1.c())
        {
        default:
            return false;

        case 100: // 'd'
            j();
            return true;

        case 282: 
            l();
            return true;

        case 3011: 
            k();
            return true;

        case 3012: 
            m();
            break;
        }
        return true;
    }

    static boolean a(TvShowQuestionActivity tvshowquestionactivity, com.etermax.preguntados.datasource.a.b b1)
    {
        return tvshowquestionactivity.a(b1);
    }

    static void b(TvShowQuestionActivity tvshowquestionactivity)
    {
        tvshowquestionactivity.n();
    }

    static void c(TvShowQuestionActivity tvshowquestionactivity)
    {
        tvshowquestionactivity.i();
    }

    private void i()
    {
        if (com.etermax.a.b.g(this))
        {
            d = 0L;
            e = 0;
            (new com.etermax.tools.i.a() {

                final TvShowQuestionActivity a;

                public Object a()
                {
                    return a.b.a(a.c.e(), a.b.j().getId());
                }

                protected void a(TvShowQuestionActivity tvshowquestionactivity, TvShowQuestionDTO tvshowquestiondto)
                {
                    super.a(tvshowquestionactivity, tvshowquestiondto);
                    if (tvshowquestiondto.getId() == a.h())
                    {
                        com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a);
                        return;
                    } else
                    {
                        com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a, tvshowquestiondto);
                        return;
                    }
                }

                protected void a(TvShowQuestionActivity tvshowquestionactivity, Exception exception)
                {
                    b(false);
                    if (exception instanceof com.etermax.preguntados.datasource.a.b)
                    {
                        com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.a(a, (com.etermax.preguntados.datasource.a.b)exception);
                    } else
                    {
                        a.f();
                    }
                    super.a(tvshowquestionactivity, exception);
                }

                protected volatile void a(Object obj, Exception exception)
                {
                    a((TvShowQuestionActivity)obj, exception);
                }

                protected volatile void a(Object obj, Object obj1)
                {
                    a((TvShowQuestionActivity)obj, (TvShowQuestionDTO)obj1);
                }

            
            {
                a = TvShowQuestionActivity.this;
                super();
            }
            }).a(this);
            return;
        } else
        {
            f();
            return;
        }
    }

    private void j()
    {
    }

    private void k()
    {
        a(com.etermax.preguntados.ui.tvshow.a.a.b(), false);
    }

    private void l()
    {
        f();
    }

    private void m()
    {
        com.etermax.preguntados.ui.tvshow.a a1 = (com.etermax.preguntados.ui.tvshow.a)a(o.next_show, o.next_show_txt, f.yellow_crown, f.brown);
        a1.(j);
        a(a1, "fragment_participation", false);
    }

    private void n()
    {
        com.etermax.preguntados.ui.tvshow.a a1 = (com.etermax.preguntados.ui.tvshow.a)a(o.thanks_for_participating, o.thanks_for_participating_txt_plural, f.black, f.white);
        a1.(i);
        a(a1, "fragment_participation", false);
    }

    protected Fragment a()
    {
        return com.etermax.preguntados.ui.tvshow.g.b();
    }

    public void a(int i1, AnswerDTO answerdto)
    {
        (new com.etermax.tools.i.a(getString(o.loading), i1, answerdto) {

            final int a;
            final AnswerDTO b;
            final TvShowQuestionActivity c;

            public Object a()
            {
                c.b.a(c.c.e(), a, b);
                return null;
            }

            protected void a(TvShowQuestionActivity tvshowquestionactivity, Exception exception)
            {
                b(false);
                super.a(tvshowquestionactivity, exception);
                com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.b(tvshowquestionactivity);
            }

            protected void a(TvShowQuestionActivity tvshowquestionactivity, Void void1)
            {
                super.a(tvshowquestionactivity, void1);
                c.b(b.getId());
                com.etermax.preguntados.ui.tvshow.TvShowQuestionActivity.b(tvshowquestionactivity);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((TvShowQuestionActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((TvShowQuestionActivity)obj, (Void)obj1);
            }

            
            {
                c = TvShowQuestionActivity.this;
                a = i1;
                b = answerdto;
                super(s);
            }
        }).a(this);
    }

    protected void a(long l1)
    {
        f.postDelayed(h, l1);
    }

    public void a(AnswerDTO answerdto, long l1, int i1)
    {
        d = l1;
        e = i1;
        a(b.j().getId(), answerdto);
    }

    void b()
    {
        g = getPreferences(0);
        f = new Handler();
    }

    protected void b(long l1)
    {
        g.edit().putLong("tv_question_id", l1).commit();
    }

    public void c()
    {
        if ((l)getSupportFragmentManager().findFragmentByTag("fragment_waiting_question") == null)
        {
            a(com.etermax.preguntados.ui.tvshow.l.b(), "fragment_waiting_question", false);
        }
        i();
    }

    public void d()
    {
        n();
    }

    public void e()
    {
        a(com.etermax.preguntados.ui.tvshow.g.b(), false, "fragment_tv_question");
    }

    protected void f()
    {
        a(1000 * a);
    }

    protected long h()
    {
        return g.getLong("tv_question_id", -1L);
    }

    protected void onPause()
    {
        f.removeCallbacks(h);
        super.onPause();
    }
}
