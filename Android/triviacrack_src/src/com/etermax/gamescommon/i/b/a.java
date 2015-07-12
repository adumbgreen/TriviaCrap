// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.app.DatePickerDialog;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TableRow;
import android.widget.TextView;
import com.b.a.aa;
import com.b.a.ak;
import com.etermax.gamescommon.b.av;
import com.etermax.gamescommon.b.x;
import com.etermax.gamescommon.user.c;
import com.etermax.i;
import com.etermax.j;
import com.etermax.k;
import com.etermax.o;
import com.etermax.p;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.nationality.NationalityManager;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.CustomFontTextView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            f, c, d, b, 
//            e

public class a extends b
    implements com.etermax.tools.widget.b.b
{

    private LinearLayout A;
    private RelativeLayout B;
    private ImageView C;
    private boolean D;
    private boolean E;
    private TableRow F;
    private TableRow G;
    private TableRow H;
    private CustomFontTextView I;
    private android.view.View.OnClickListener J;
    com.etermax.tools.b.a a;
    com.etermax.gamescommon.login.datasource.a b;
    com.etermax.gamescommon.login.datasource.c c;
    com.etermax.tools.f.a d;
    com.etermax.gamescommon.i.a.c e;
    com.etermax.gamescommon.login.datasource.a f;
    Date g;
    com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender h;
    Nationality i;
    boolean j;
    android.view.View.OnClickListener k;
    private EditText l;
    private EditText m;
    private EditText n;
    private EditText o;
    private Spinner p;
    private TextView q;
    private TextView r;
    private ImageView s;
    private ImageView t;
    private BitmapDrawable u;
    private View v;
    private Button w;
    private TextView x;
    private TextView y;
    private TextView z;

    public a()
    {
        J = new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                ((com.etermax.gamescommon.i.b.b)a.a(a)).a(1);
                if (!com.etermax.gamescommon.i.b.a.b(a))
                {
                    com.etermax.gamescommon.i.b.a.c(a);
                }
            }

            
            {
                a = a.this;
                super();
            }
        };
        j = true;
        k = new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                android.app.DatePickerDialog.OnDateSetListener ondatesetlistener = new android.app.DatePickerDialog.OnDateSetListener(this) {

                    final _cls11 a;

                    public void onDateSet(DatePicker datepicker, int i1, int j1, int k1)
                    {
                        Calendar calendar = Calendar.getInstance();
                        calendar.set(i1, j1, k1);
                        a.a.g = calendar.getTime();
                        a.m(a.a).setVisibility(0);
                        String s1 = SimpleDateFormat.getDateInstance(1).format(a.a.g);
                        a.m(a.a).setText(s1);
                        com.etermax.gamescommon.i.b.a.j(a.a).setVisibility(0);
                        a.a(a.a, true);
                    }

            
            {
                a = _pcls11;
                super();
            }
                };
                DatePickerDialog datepickerdialog;
                try
                {
                    Calendar calendar = Calendar.getInstance();
                    calendar.setTime(a.g);
                    datepickerdialog = new DatePickerDialog(a.getActivity(), p.DatePickerTheme, ondatesetlistener, calendar.get(1), calendar.get(2), calendar.get(5));
                }
                catch (NullPointerException nullpointerexception)
                {
                    datepickerdialog = new DatePickerDialog(a.getActivity(), p.DatePickerTheme, ondatesetlistener, 2000, 0, 1);
                }
                datepickerdialog.show();
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public static Bitmap a(Bitmap bitmap, float f1, int i1)
    {
        Paint paint = new Paint();
        paint.setMaskFilter(new BlurMaskFilter(f1, android.graphics.BlurMaskFilter.Blur.OUTER));
        paint.setColor(i1);
        (new Canvas(bitmap)).drawBitmap(bitmap.extractAlpha(), 0.0F, 0.0F, paint);
        return bitmap;
    }

    static BitmapDrawable a(a a1, BitmapDrawable bitmapdrawable)
    {
        a1.u = bitmapdrawable;
        return bitmapdrawable;
    }

    public static Fragment a()
    {
        return new f();
    }

    static Object a(a a1)
    {
        return a1.mCallbacks;
    }

    private void a(EditText edittext)
    {
        edittext.addTextChangedListener(new TextWatcher() {

            final a a;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
            {
                com.etermax.gamescommon.i.b.a.j(a).setVisibility(0);
                a.a(a, true);
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    private void a(av av)
    {
        if (d != null)
        {
            d.a(av);
        }
    }

    private void a(com.etermax.gamescommon.b.c c1)
    {
        if (d != null)
        {
            d.a(c1);
        }
    }

    static void a(a a1, av av)
    {
        a1.a(av);
    }

    static void a(a a1, com.etermax.gamescommon.b.c c1)
    {
        a1.a(c1);
    }

    static void a(a a1, String s1)
    {
        a1.b(s1);
    }

    private void a(String s1)
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading), s1) {

            final String a;
            final a b;

            public Object a()
            {
                b.c.c(a.r(b).getText().toString(), a);
                return null;
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                a.a(b, "merge");
                com.etermax.a.b.a(a1.getActivity(), o.link_account_success);
                ((com.etermax.gamescommon.i.b.b)a.u(b)).b();
                com.etermax.gamescommon.i.b.a.j(b).setVisibility(4);
                a.a(b, false);
                j().finish();
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            
            {
                b = a.this;
                a = s2;
                super(s1);
            }
        }).a(this);
    }

    static boolean a(a a1, boolean flag)
    {
        a1.E = flag;
        return flag;
    }

    private void b(String s1)
    {
        if (d != null)
        {
            x x1 = new x();
            x1.a(s1);
            d.a(x1);
        }
    }

    static boolean b(a a1)
    {
        return a1.n();
    }

    static boolean b(a a1, boolean flag)
    {
        a1.D = flag;
        return flag;
    }

    static void c(a a1)
    {
        a1.p();
    }

    static Object d(a a1)
    {
        return a1.mCallbacks;
    }

    static void e(a a1)
    {
        a1.q();
    }

    static BitmapDrawable f(a a1)
    {
        return a1.u;
    }

    static ImageView g(a a1)
    {
        return a1.s;
    }

    static ImageView h(a a1)
    {
        return a1.t;
    }

    private void h()
    {
        y.setVisibility(8);
        B.setVisibility(8);
    }

    static Spinner i(a a1)
    {
        return a1.p;
    }

    private void i()
    {
        if (h != null)
        {
            p.setVisibility(0);
        }
        p.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {

            final a a;

            public void onItemSelected(AdapterView adapterview, View view, int i1, long l1)
            {
                a.h = ((d)com.etermax.gamescommon.i.b.a.i(a).getItemAtPosition(i1)).a();
                if (!a.j)
                {
                    com.etermax.gamescommon.i.b.a.j(a).setVisibility(0);
                    a.a(a, true);
                }
                a.j = false;
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
        F.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                com.etermax.gamescommon.i.b.a.k(a).setVisibility(4);
                if (com.etermax.gamescommon.i.b.a.i(a).getVisibility() == 4)
                {
                    com.etermax.gamescommon.i.b.a.i(a).setVisibility(0);
                    com.etermax.gamescommon.i.b.a.i(a).performClick();
                    if (!a.j)
                    {
                        com.etermax.gamescommon.i.b.a.j(a).setVisibility(0);
                        a.a(a, true);
                    }
                    a.j = false;
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    static View j(a a1)
    {
        return a1.v;
    }

    private void j()
    {
        ArrayList arraylist = new ArrayList();
        Nationality anationality[] = Nationality.values();
        int i1 = anationality.length;
        int j1 = 0;
        while (j1 < i1) 
        {
            Nationality nationality = anationality[j1];
            try
            {
                arraylist.add(new com.etermax.gamescommon.i.b.c(this, nationality, NationalityManager.getName(getApplicationContext(), nationality)));
            }
            catch (Exception exception)
            {
                com.etermax.a.a.b("NATIONALITY", (new StringBuilder()).append("Exception loading country name for iso code ").append(nationality.name()).toString());
            }
            j1++;
        }
        H.setOnClickListener(new android.view.View.OnClickListener(arraylist) {

            final List a;
            final a b;

            public void onClick(View view)
            {
                (new com.etermax.widget.a(view.getContext(), a, new com.etermax.widget.c(this) {

                    final _cls10 a;

                    public void a(com.etermax.gamescommon.i.b.c c1)
                    {
                        a.b.i = c1.a;
                        a.l(a.b).setText(c1.c);
                        com.etermax.gamescommon.i.b.a.j(a.b).setVisibility(0);
                        a.a(a.b, true);
                    }

                    public volatile void a(Object obj)
                    {
                        a((com.etermax.gamescommon.i.b.c)obj);
                    }

            
            {
                a = _pcls10;
                super();
            }
                }, true)).a();
            }

            
            {
                b = a.this;
                a = list;
                super();
            }
        });
    }

    static CustomFontTextView k(a a1)
    {
        return a1.I;
    }

    private void k()
    {
        i = f.n();
        if (i != null)
        {
            int i1 = NationalityManager.getNameResource(getApplicationContext(), i);
            if (i1 > 0)
            {
                r.setText(i1);
            }
        }
    }

    static TextView l(a a1)
    {
        return a1.r;
    }

    private void l()
    {
        h = b.o();
        if (h == com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE)
        {
            p.setVisibility(0);
            p.setSelection(((ArrayAdapter)p.getAdapter()).getPosition(new d(this, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE)));
            I.setVisibility(4);
        }
        if (h == com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE)
        {
            p.setVisibility(0);
            p.setSelection(((ArrayAdapter)p.getAdapter()).getPosition(new d(this, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE)));
            I.setVisibility(4);
        }
    }

    static TextView m(a a1)
    {
        return a1.q;
    }

    private void m()
    {
        try
        {
            g = b.p();
            String s1 = SimpleDateFormat.getDateInstance(1).format(g);
            q.setText(s1);
            return;
        }
        catch (Exception exception)
        {
            q.setText("...");
        }
    }

    static Object n(a a1)
    {
        return a1.mCallbacks;
    }

    private boolean n()
    {
        boolean flag;
        String s1;
        String s2;
        if (n.getText().toString().length() > 0 && n.getText().toString().length() < 6)
        {
            com.etermax.a.b.a(n, getString(o.error_password_length), 0xff000000);
            flag = true;
        } else
        if (!n.getText().toString().equals(o.getText().toString()))
        {
            com.etermax.a.b.a(o, getString(o.error_passwords_not_match), 0xff000000);
            flag = true;
        } else
        {
            flag = false;
        }
        s1 = l.getText().toString();
        if (s1.length() == 0)
        {
            com.etermax.a.b.a(l, getString(o.error_username_required), 0xff000000);
            flag = true;
        }
        if (s1.length() < 3 || l.getText().toString().length() > 40)
        {
            com.etermax.a.b.a(l, getString(o.error_invalid_username_length), 0xff000000);
            flag = true;
        }
        if (!com.etermax.a.b.b(s1))
        {
            com.etermax.a.b.a(l, getString(o.error_invalid_username_format), 0xff000000);
            flag = true;
        }
        s2 = m.getText().toString();
        if (b.r() && s2.length() > 0 && !com.etermax.a.b.a(s2))
        {
            com.etermax.a.b.a(m, getString(o.error_invalid_email), 0xff000000);
            flag = true;
        }
        return flag;
    }

    private void o()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final a a;

            public Object a()
            {
                a.c.a("Facebook", a.getActivity());
                return null;
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                com.etermax.a.b.a(a1.getActivity(), o.facebook_unlink_success);
                ((com.etermax.gamescommon.i.b.b)a.n(a)).k_();
                com.etermax.gamescommon.i.b.a.o(a);
                av av1 = new av();
                a.a(a, av1);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            
            {
                a = a.this;
                super(s1);
            }
        }).a(this);
    }

    static void o(a a1)
    {
        a1.h();
    }

    static EditText p(a a1)
    {
        return a1.l;
    }

    private void p()
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading)) {

            final a a;

            public Object a()
            {
                String s1 = com.etermax.gamescommon.i.b.a.p(a).getText().toString();
                String s2 = a.q(a).getText().toString();
                if (!a.b.g().equals(s1))
                {
                    com.etermax.gamescommon.b.c c1 = new com.etermax.gamescommon.b.c("change_username");
                    a.a(a, c1);
                }
                if (!s2.equals(""))
                {
                    com.etermax.gamescommon.b.c c2 = new com.etermax.gamescommon.b.c("change_pass");
                    a.a(a, c2);
                }
                if (a.b.r())
                {
                    com.etermax.gamescommon.i.b.a.b(a, true);
                    a.c.a(s1, null, a.r(a).getText().toString(), a.h, a.g, a.i);
                    return null;
                } else
                {
                    a.c.a(s1, s2, a.h, a.g, a.i);
                    return null;
                }
            }

            protected void a(a a1, Exception exception)
            {
                if (!(exception instanceof com.etermax.gamescommon.login.datasource.b.b)) goto _L2; else goto _L1
_L1:
                ((com.etermax.gamescommon.login.datasource.b.b)exception).c();
                JVM INSTR lookupswitch 3: default 48
            //                           603: 55
            //                           2013: 157
            //                           2014: 106;
                   goto _L2 _L3 _L4 _L5
_L2:
                super.a(a1, exception);
                return;
_L3:
                com.etermax.tools.widget.b.c.c(a.getString(o.error), a.getString(o.email_already_exists_no_password), a.getString(o.ok), null).show(a1.getFragmentManager(), "no_password_dialog");
                b(false);
                continue; /* Loop/switch isn't completed */
_L5:
                com.etermax.tools.widget.b.c.c(a.getString(o.error), a.getString(o.error_link_limit), a.getString(o.ok), null).show(a1.getFragmentManager(), "mail_merged_dialog");
                b(false);
                continue; /* Loop/switch isn't completed */
_L4:
                a.e.show(a.getFragmentManager(), "request_password_dialog");
                a.e.setTargetFragment(a, 0);
                b(false);
                if (true) goto _L2; else goto _L6
_L6:
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                a.a(a, "no_merge");
                com.etermax.gamescommon.i.b.a.p(a).setText(a.b.g());
                com.etermax.a.b.a(a1.getActivity(), o.update_profile_success);
                ((com.etermax.gamescommon.i.b.b)a.s(a)).k_();
                com.etermax.gamescommon.i.b.a.j(a).setVisibility(4);
                a.a(a, false);
                if (a.t(a))
                {
                    j().finish();
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            
            {
                a = a.this;
                super(s1);
            }
        }).a(this);
    }

    static EditText q(a a1)
    {
        return a1.n;
    }

    private void q()
    {
        com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(o.unlink), getString(o.dialog_fb_unlink), getString(o.yes), getString(o.no));
        a1.setTargetFragment(this, 0);
        a1.show(getFragmentManager(), "unlink_facebook_dialog");
    }

    static EditText r(a a1)
    {
        return a1.m;
    }

    static Object s(a a1)
    {
        return a1.mCallbacks;
    }

    static boolean t(a a1)
    {
        return a1.D;
    }

    static Object u(a a1)
    {
        return a1.mCallbacks;
    }

    static Object v(a a1)
    {
        return a1.mCallbacks;
    }

    static Object w(a a1)
    {
        return a1.mCallbacks;
    }

    public void a(Bundle bundle)
    {
        ((com.etermax.gamescommon.i.b.b)mCallbacks).a(2);
    }

    public void b()
    {
        String s1 = f.j();
        if (s1 != null)
        {
            C = (ImageView)getView().findViewById(i.facebook_image);
            String s2 = com.etermax.gamescommon.user.c.a(s1, C.getWidth());
            aa.a(getActivity()).a(s2).b().a(C);
            z.setText(f.k());
            return;
        } else
        {
            h();
            return;
        }
    }

    public boolean c()
    {
        return E;
    }

    void d()
    {
        l.setText(b.g().replace("@", ""));
        m.setText(b.f());
        w.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                ((com.etermax.gamescommon.i.b.b)a.d(a)).a(1);
                a.e(a);
            }

            
            {
                a = a.this;
                super();
            }
        });
        v.setOnClickListener(J);
        v.setOnTouchListener(new android.view.View.OnTouchListener() {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                int i1 = a.getResources().getInteger(j.glow_radius);
                boolean flag;
                if (motionevent.getAction() == 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    if (a.f(a) == null)
                    {
                        a.g(a).buildDrawingCache();
                        Bitmap bitmap = a.g(a).getDrawingCache();
                        if (bitmap != null)
                        {
                            Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
                            if (bitmap1 != null)
                            {
                                a.a(a, new BitmapDrawable(a.a(bitmap1, i1, -1)));
                                if (a.f(a) != null)
                                {
                                    a.h(a).setBackgroundDrawable(a.f(a));
                                }
                            }
                        }
                    }
                    a.h(a).setAnimation(AnimationUtils.loadAnimation(view.getContext(), com.etermax.b.alpha_fade_in));
                    a.h(a).setVisibility(0);
                    return false;
                } else
                {
                    a.h(a).setAnimation(AnimationUtils.loadAnimation(view.getContext(), com.etermax.b.alpha_fade_out));
                    a.h(a).setVisibility(8);
                    return false;
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        if (b.j() != null)
        {
            w.setVisibility(0);
            y.setVisibility(0);
        } else
        {
            w.setVisibility(8);
            y.setVisibility(8);
        }
        if (b.r())
        {
            x.setVisibility(8);
            A.setVisibility(8);
            m.setFocusableInTouchMode(true);
        }
        a(l);
        a(n);
        a(o);
        a(m);
        m();
        l();
        k();
        e();
        i();
        j();
    }

    public void e()
    {
        q.setOnClickListener(k);
        G.setOnClickListener(k);
    }

    public void f()
    {
        com.etermax.gamescommon.i.b.e.a(this).show(getFragmentManager(), "save_changes");
    }

    public com.etermax.gamescommon.i.b.b g()
    {
        return new com.etermax.gamescommon.i.b.b() {

            final a a;

            public void a(int i1)
            {
            }

            public void b()
            {
            }

            public void k_()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    public Object getDummyCallbacks()
    {
        return g();
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle != null && "password_accept_cancel_dialog".equals(bundle.getString("dialog_tag")))
        {
            a(e.c());
            return;
        } else
        {
            ((com.etermax.gamescommon.i.b.b)mCallbacks).a(1);
            o();
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.user_account_fragment, viewgroup, false);
        v = view.findViewById(i.save_button);
        l = (EditText)view.findViewById(i.input_username);
        m = (EditText)view.findViewById(i.input_email);
        x = (TextView)view.findViewById(i.change_password_title);
        A = (LinearLayout)view.findViewById(i.change_password_table);
        n = (EditText)view.findViewById(i.input_password);
        o = (EditText)view.findViewById(i.input_confirm);
        q = (TextView)view.findViewById(i.input_age);
        r = (TextView)view.findViewById(i.input_nationality);
        B = (RelativeLayout)view.findViewById(i.facebook_table);
        w = (Button)view.findViewById(i.facebook_unlink_button);
        y = (TextView)view.findViewById(i.facebook_title);
        z = (TextView)view.findViewById(i.facebook_name);
        s = (ImageView)view.findViewById(i.btn_save);
        t = (ImageView)view.findViewById(i.btn_bloomed_save);
        F = (TableRow)view.findViewById(i.rowGender);
        G = (TableRow)view.findViewById(i.rowDate);
        H = (TableRow)view.findViewById(i.rowNationality);
        I = (CustomFontTextView)view.findViewById(i.txtGenderPlaceholder);
        v.setVisibility(4);
        if (b.f() == null)
        {
            l.setFocusableInTouchMode(false);
            n.setFocusableInTouchMode(false);
            o.setFocusableInTouchMode(false);
        }
        m.setFocusableInTouchMode(false);
        p = (Spinner)view.findViewById(i.input_gender_s);
        ArrayList arraylist = new ArrayList();
        arraylist.add(new d(this, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE));
        arraylist.add(new d(this, com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE));
        ArrayAdapter arrayadapter = new ArrayAdapter(getActivity(), k.gender_spinner_item, arraylist);
        arrayadapter.setDropDownViewResource(0x1090009);
        p.setAdapter(arrayadapter);
        return view;
    }

    // Unreferenced inner class com/etermax/gamescommon/i/b/a$5

/* anonymous class */
    class _cls5
    {

        static final int a[];

        static 
        {
            a = new int[com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.values().length];
            try
            {
                a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }

}
