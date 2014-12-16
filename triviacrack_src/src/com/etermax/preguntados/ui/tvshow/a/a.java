// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow.a;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.RegistrationDTO;
import com.etermax.preguntados.h.d;
import com.etermax.preguntados.h.e;
import com.etermax.preguntados.h.f;
import com.etermax.tools.nationality.Nationality;
import com.etermax.tools.nationality.NationalityManager;
import com.etermax.tools.navigation.b;
import com.etermax.widget.c;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.ui.tvshow.a:
//            d, e, c, b

public class a extends b
    implements android.app.DatePickerDialog.OnDateSetListener, e, c
{

    protected com.etermax.preguntados.datasource.d a;
    protected com.etermax.gamescommon.login.datasource.a b;
    EditText c;
    EditText d;
    EditText e;
    EditText f;
    EditText g;
    EditText h;
    EditText i;
    EditText j;
    ToggleButton k;
    EditText l;
    EditText m;
    EditText n;
    TextView o;
    EditText p;
    ToggleButton q;
    TextView r;
    private Nationality s;
    private Calendar t;

    public a()
    {
    }

    static void a(a a1)
    {
        a1.d();
    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.tvshow.a.d.d().a();
    }

    private void b(int i1)
    {
        com.etermax.tools.widget.b.c c1 = com.etermax.tools.widget.b.c.c(null, getString(i1), getString(o.accept), null);
        c1.setTargetFragment(this, 0);
        c1.show(getFragmentManager(), "REGISTRATION_ERROR_DIALOG");
    }

    static void b(a a1)
    {
        a1.e();
    }

    private Date c(String s1)
    {
label0:
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("dd/MM/yyyy");
            Calendar calendar = Calendar.getInstance();
            simpledateformat.setLenient(false);
            Date date;
            int i1;
            try
            {
                date = simpledateformat.parse(h.getText().toString());
                calendar.setTime(date);
                if (calendar.get(1) < 1900)
                {
                    break label0;
                }
                i1 = calendar.get(1);
            }
            catch (Exception exception)
            {
                return null;
            }
            if (i1 <= 2100)
            {
                return date;
            }
        }
        return null;
    }

    static void c(a a1)
    {
        a1.h();
    }

    static Object d(a a1)
    {
        return a1.mCallbacks;
    }

    private void d()
    {
        com.etermax.preguntados.h.b b1;
        if (t != null)
        {
            b1 = new com.etermax.preguntados.h.b(this, t.get(1), t.get(2), t.get(5));
        } else
        {
            b1 = new com.etermax.preguntados.h.b(this);
        }
        b1.show(getActivity().getSupportFragmentManager(), "datePicker");
    }

    private void e()
    {
        ArrayList arraylist = new ArrayList(Arrays.asList(f.a));
        (new d(getActivity(), arraylist, this)).a();
    }

    private void f()
    {
        if (g())
        {
            RegistrationDTO registrationdto = new RegistrationDTO();
            registrationdto.setName(c.getText().toString());
            registrationdto.setSurname(d.getText().toString());
            registrationdto.setAddress(f.getText().toString());
            registrationdto.setTownship(m.getText().toString());
            registrationdto.setPhone(i.getText().toString());
            registrationdto.setEmail(j.getText().toString());
            registrationdto.setGovernmentId(e.getText().toString());
            registrationdto.setBirthdate((new StringBuilder()).append(h.getText().toString()).append(" 00:00:00").toString());
            registrationdto.setAreaCode(l.getText().toString());
            registrationdto.setProvince(g.getText().toString());
            registrationdto.setZipCode(n.getText().toString());
            registrationdto.setCountry(s.name());
            String s1;
            if (q.isChecked())
            {
                s1 = com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.FEMALE.name();
            } else
            {
                s1 = com.etermax.gamescommon.login.datasource.dto.UserDTO.Gender.MALE.name();
            }
            registrationdto.setGender(s1);
            (new com.etermax.tools.i.a(registrationdto) {

                final RegistrationDTO a;
                final a b;

                public Object a()
                {
                    b.a.a(a);
                    return null;
                }

                protected void a(a a1, Exception exception)
                {
                    super.a(a1, exception);
                }

                protected void a(a a1, Void void1)
                {
                    super.a(a1, void1);
                    ((com.etermax.preguntados.ui.tvshow.a.b)com.etermax.preguntados.ui.tvshow.a.a.d(b)).e();
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
                a = registrationdto;
                super();
            }
            }).a(this);
        }
    }

    private boolean g()
    {
        boolean flag;
        EditText edittext;
        boolean flag1;
        EditText edittext3;
        if (TextUtils.isEmpty(n.getText()))
        {
            n.setError(getString(o.alert_incomplete_zipcode));
            edittext = n;
            flag = false;
        } else
        {
            flag = true;
            edittext = null;
        }
        if (TextUtils.isEmpty(m.getText()))
        {
            m.setError(getString(o.alert_incomplete_township));
            edittext = m;
            flag = false;
        }
        if (TextUtils.isEmpty(g.getText()))
        {
            g.setError(getString(o.alert_incomplete_province));
            edittext = g;
            flag = false;
        }
        if (TextUtils.isEmpty(f.getText()))
        {
            f.setError(getString(o.alert_incomplete_user_address));
            edittext = f;
            flag = false;
        }
        if (TextUtils.isEmpty(p.getText()))
        {
            h.setError(getString(o.alert_incomplete_nationality));
            edittext = p;
            flag = false;
        }
        if (t == null || TextUtils.isEmpty(h.getText()))
        {
            h.setError(getString(o.alert_incomplete_birthdate));
            edittext = h;
            flag = false;
        } else
        if (com.etermax.preguntados.h.c.a(t, Calendar.getInstance()) < 18)
        {
            h.setError(getString(o.alert_age));
            edittext = h;
            flag = false;
        }
        if (TextUtils.isEmpty(i.getText()))
        {
            i.setError(getString(o.alert_incomplete_phone));
            edittext = i;
            flag = false;
        }
        if (TextUtils.isEmpty(l.getText()))
        {
            l.setError(getString(o.alert_incomplete_area_code));
            edittext = l;
            flag = false;
        }
        if (TextUtils.isEmpty(j.getText()))
        {
            j.setError(getString(o.alert_incomplete_email));
            edittext = j;
            flag = false;
        } else
        if (!com.etermax.a.b.a(j.getText().toString()))
        {
            j.setError(getString(o.error_invalid_email));
            edittext = j;
            flag = false;
        }
        if (TextUtils.isEmpty(e.getText()))
        {
            e.setError(getString(o.alert_incomplete_id_number));
            edittext = e;
            flag = false;
        } else
        if (!e.getText().toString().matches("[0-9]+"))
        {
            e.setError(getString(o.error_invalid_number));
            edittext = e;
            flag = false;
        }
        if (TextUtils.isEmpty(d.getText()))
        {
            d.setError(getString(o.alert_incomplete_last_name));
            edittext = d;
            flag = false;
        } else
        if (a(d.getText().toString()))
        {
            EditText edittext1 = d;
            int i1 = o.error_invalid_letters;
            Object aobj[] = new Object[1];
            aobj[0] = getString(o.last_name);
            edittext1.setError(getString(i1, aobj));
            edittext = d;
            flag = false;
        }
        if (TextUtils.isEmpty(c.getText()))
        {
            c.setError(getString(o.alert_incomplete_name));
            edittext3 = c;
            flag1 = false;
        } else
        if (a(c.getText().toString()))
        {
            EditText edittext4 = c;
            int j1 = o.error_invalid_letters;
            Object aobj1[] = new Object[1];
            aobj1[0] = getString(o.first_name);
            edittext4.setError(getString(j1, aobj1));
            edittext3 = c;
            flag1 = false;
        } else
        {
            EditText edittext2 = edittext;
            flag1 = flag;
            edittext3 = edittext2;
        }
        if (!flag1 && edittext3 != null)
        {
            edittext3.requestFocus();
        }
        if (flag1 && !k.isChecked())
        {
            b(o.tos_14_txt);
            return false;
        } else
        {
            return flag1;
        }
    }

    private void h()
    {
        ArrayList arraylist = new ArrayList();
        Nationality anationality[] = Nationality.values();
        int i1 = anationality.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            Nationality nationality = anationality[j1];
            arraylist.add(new com.etermax.preguntados.ui.dashboard.b.a(NationalityManager.getName(getApplicationContext(), nationality), nationality));
        }

        (new com.etermax.widget.a(getActivity(), arraylist, this, true)).a();
    }

    public InputFilter a(int i1)
    {
        return new android.text.InputFilter.LengthFilter(i1);
    }

    public com.etermax.preguntados.ui.tvshow.a.b a()
    {
        return new com.etermax.preguntados.ui.tvshow.a.b() {

            final a a;

            public void e()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    void a(View view)
    {
        d();
    }

    void a(TextView textview)
    {
        Date date = c(h.getText().toString());
        if (date != null)
        {
            if (t == null)
            {
                t = Calendar.getInstance();
            }
            if (t.getTime().compareTo(date) != 0)
            {
                t.setTime(date);
            }
        }
    }

    public void a(com.etermax.preguntados.ui.dashboard.b.a a1)
    {
        p.setText(NationalityManager.getNameResource(getApplicationContext(), a1.a()));
        s = a1.a();
        f.requestFocus();
    }

    public volatile void a(Object obj)
    {
        a((com.etermax.preguntados.ui.dashboard.b.a)obj);
    }

    public final boolean a(String s1)
    {
        boolean flag;
        boolean flag1;
        flag = TextUtils.isEmpty(s1);
        flag1 = false;
        if (flag) goto _L2; else goto _L1
_L1:
        char ac[];
        int i1;
        int j1;
        ac = s1.toCharArray();
        i1 = ac.length;
        j1 = 0;
_L7:
        flag1 = false;
        if (j1 >= i1) goto _L2; else goto _L3
_L3:
        if (!Character.isDigit(ac[j1])) goto _L5; else goto _L4
_L4:
        flag1 = true;
_L2:
        return flag1;
_L5:
        j1++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    void b(View view)
    {
        e();
    }

    public void b(String s1)
    {
        g.setText(s1);
        m.requestFocus();
    }

    protected void c()
    {
        s = b.n();
        j.setText(b.f());
        if (s != null)
        {
            p.setText(NationalityManager.getNameResource(getApplicationContext(), s));
        }
        String s1;
        if (q.isChecked())
        {
            s1 = getString(o.female);
        } else
        {
            s1 = getString(o.male);
        }
        r.setText(s1);
        if (b.l())
        {
            String as[] = b.k().split(" ");
            c.setText(as[0]);
            ArrayList arraylist = new ArrayList(Arrays.asList(as));
            String s2 = "";
            for (int i1 = 1; i1 < arraylist.size();)
            {
                String s3 = (new StringBuilder()).append(d.getText().toString()).append(" ").append((String)arraylist.get(i1)).toString();
                i1++;
                s2 = s3;
            }

            d.setText(s2.trim());
        }
        SpannableString spannablestring = new SpannableString(getString(o.tos_14));
        spannablestring.setSpan(new UnderlineSpan(), 0, spannablestring.length(), 0);
        o.setText(spannablestring);
        c.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, c));
        d.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, d));
        e.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, e));
        f.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, f));
        g.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, g));
        h.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, h));
        i.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, i));
        j.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, j));
        l.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, l));
        m.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, m));
        n.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, n));
        p.addTextChangedListener(new com.etermax.preguntados.ui.tvshow.a.c(this, p));
        EditText edittext = c;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = a(20);
        edittext.setFilters(ainputfilter);
        EditText edittext1 = d;
        InputFilter ainputfilter1[] = new InputFilter[1];
        ainputfilter1[0] = a(45);
        edittext1.setFilters(ainputfilter1);
        EditText edittext2 = e;
        InputFilter ainputfilter2[] = new InputFilter[1];
        ainputfilter2[0] = a(15);
        edittext2.setFilters(ainputfilter2);
        EditText edittext3 = f;
        InputFilter ainputfilter3[] = new InputFilter[1];
        ainputfilter3[0] = a(45);
        edittext3.setFilters(ainputfilter3);
        EditText edittext4 = g;
        InputFilter ainputfilter4[] = new InputFilter[1];
        ainputfilter4[0] = a(45);
        edittext4.setFilters(ainputfilter4);
        EditText edittext5 = i;
        InputFilter ainputfilter5[] = new InputFilter[1];
        ainputfilter5[0] = a(45);
        edittext5.setFilters(ainputfilter5);
        EditText edittext6 = j;
        InputFilter ainputfilter6[] = new InputFilter[1];
        ainputfilter6[0] = a(60);
        edittext6.setFilters(ainputfilter6);
        EditText edittext7 = l;
        InputFilter ainputfilter7[] = new InputFilter[1];
        ainputfilter7[0] = a(10);
        edittext7.setFilters(ainputfilter7);
        EditText edittext8 = m;
        InputFilter ainputfilter8[] = new InputFilter[1];
        ainputfilter8[0] = a(45);
        edittext8.setFilters(ainputfilter8);
        EditText edittext9 = n;
        InputFilter ainputfilter9[] = new InputFilter[1];
        ainputfilter9[0] = a(45);
        edittext9.setFilters(ainputfilter9);
        EditText edittext10 = p;
        InputFilter ainputfilter10[] = new InputFilter[1];
        ainputfilter10[0] = a(10);
        edittext10.setFilters(ainputfilter10);
        h.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final a a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag && a.h.getError() == null)
                {
                    a.a(a);
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        g.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final a a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    com.etermax.preguntados.ui.tvshow.a.a.b(a);
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        p.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final a a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    com.etermax.preguntados.ui.tvshow.a.a.c(a);
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
        q.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final a a;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                String s4;
                if (flag)
                {
                    s4 = a.getString(o.female);
                } else
                {
                    s4 = a.getString(o.male);
                }
                a.r.setText(s4);
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    void c(View view)
    {
        f();
    }

    void d(View view)
    {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.etermax.com/es/terms/preguntados_susana")));
    }

    void e(View view)
    {
        h();
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onDateSet(DatePicker datepicker, int i1, int j1, int k1)
    {
        String s1 = new String();
        String s2;
        String s3;
        if (k1 < 10)
        {
            s2 = (new StringBuilder()).append(s1).append("0").append(k1).toString();
        } else
        {
            s2 = (new StringBuilder()).append(s1).append(k1).toString();
        }
        if (j1 + 1 < 10)
        {
            s3 = (new StringBuilder()).append(s2).append("/0").append(j1 + 1).toString();
        } else
        {
            s3 = (new StringBuilder()).append(s2).append("/").append(j1 + 1).toString();
        }
        h.setText((new StringBuilder()).append(s3).append("/").append(i1).toString());
        t = Calendar.getInstance();
        t.set(i1, j1, k1);
        if (com.etermax.preguntados.h.c.a(t, Calendar.getInstance()) < 18)
        {
            h.setError(getString(o.alert_age));
        }
        f.requestFocus();
    }
}
