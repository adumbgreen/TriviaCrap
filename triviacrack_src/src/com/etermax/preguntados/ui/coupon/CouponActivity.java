// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.coupon;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.coupon.BaseCouponActivity;
import com.etermax.m;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.CodeDTO;
import com.etermax.preguntados.datasource.dto.CouponDTO;
import com.etermax.preguntados.datasource.dto.enums.CouponResponse;
import com.etermax.preguntados.datasource.dto.enums.RewardType;
import com.etermax.tools.a.c.b;
import com.etermax.tools.i.a;
import com.etermax.tools.widget.b.c;
import com.etermax.tools.widget.b.d;
import java.util.Locale;

public class CouponActivity extends BaseCouponActivity
    implements d
{

    com.etermax.preguntados.datasource.d a;

    public CouponActivity()
    {
    }

    private String a(int i, String s, String s1)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(i);
        String s2;
        if (i == 1)
        {
            s2 = (new StringBuilder()).append(" ").append(s1).toString();
        } else
        {
            s2 = (new StringBuilder()).append(" ").append(s).toString();
        }
        return stringbuilder.append(s2).toString();
    }

    private String a(CouponDTO coupondto, boolean flag)
    {
        String s;
        if (coupondto.getRewardType() == null)
        {
            return "";
        }
        s = "";
        class _cls2
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[RewardType.values().length];
                try
                {
                    b[RewardType.COINS.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    b[RewardType.EXTRA_SHOTS.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    b[RewardType.LIVES_LIMIT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    b[RewardType.LIVES.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    b[RewardType.UNLIMITED_LIVES.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                a = new int[CouponResponse.values().length];
                try
                {
                    a[CouponResponse.CODE_VALID.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[CouponResponse.CODE_WITHOUT_PRIZE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[CouponResponse.CODE_VALID_IN_PROGRESS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[CouponResponse.CODE_VALID_SERIAL_COMPLETED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror8)
                {
                    return;
                }
            }
        }

        com.etermax.preguntados.ui.coupon._cls2.b[coupondto.getRewardType().ordinal()];
        JVM INSTR tableswitch 1 5: default 60
    //                   1 114
    //                   2 140
    //                   3 166
    //                   4 183
    //                   5 209;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_209;
_L7:
        if (flag)
        {
            int j = o.received_x_coupons;
            Object aobj1[] = new Object[3];
            aobj1[0] = s.toLowerCase(Locale.getDefault());
            aobj1[1] = Integer.valueOf(coupondto.getTotalSeriatedCode());
            aobj1[2] = coupondto.getCampaignName();
            return getString(j, aobj1);
        } else
        {
            int i = o.received_x_deal;
            Object aobj[] = new Object[2];
            aobj[0] = s.toLowerCase(Locale.getDefault());
            aobj[1] = coupondto.getCampaignName();
            return getString(i, aobj);
        }
_L2:
        s = a(coupondto.getRewardQuantity(), getString(o.coin_plural), getString(o.coin));
          goto _L7
_L3:
        s = a(coupondto.getRewardQuantity(), getString(o.spins_plural), getString(o.spins));
          goto _L7
_L4:
        s = getString(o.extension_lives_limit).toLowerCase(Locale.getDefault());
          goto _L7
_L5:
        s = a(coupondto.getRewardQuantity(), getString(o.life_plural), getString(o.life));
          goto _L7
        s = getString(o.endless_lives).toLowerCase(Locale.getDefault());
          goto _L7
    }

    private void a(CouponDTO coupondto)
    {
        CouponResponse couponresponse;
        Bundle bundle;
        couponresponse = coupondto.getCodeResponse();
        bundle = new Bundle();
        if (couponresponse != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        c c1;
        i = com.etermax.preguntados.ui.coupon._cls2.a[coupondto.getCodeResponse().ordinal()];
        c1 = null;
        i;
        JVM INSTR tableswitch 1 4: default 68
    //                   1 85
    //                   2 121
    //                   3 179
    //                   4 207;
           goto _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_207;
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        break; /* Loop/switch isn't completed */
_L9:
        if (c1 != null)
        {
            c1.show(getSupportFragmentManager(), "case_success");
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
        bundle.putBoolean("complete", true);
        c1 = c.c(getString(o.congrats), a(coupondto, false), getString(o.accept), bundle);
          goto _L9
_L5:
        c1 = c.c(getString(o.thanks_for_participating), (new StringBuilder()).append(getString(o.coupon_no_prize)).append(" ").append(getString(o.get_more_coupons)).toString(), getString(o.accept), null);
          goto _L9
_L6:
        c1 = c.c(getString(o.congrats), b(coupondto), getString(o.accept), null);
          goto _L9
        bundle.putBoolean("complete", true);
        c1 = c.c(getString(o.congrats), a(coupondto, true), getString(o.accept), bundle);
          goto _L9
    }

    static void a(CouponActivity couponactivity, int i)
    {
        couponactivity.a(i);
    }

    static void a(CouponActivity couponactivity, CouponDTO coupondto)
    {
        couponactivity.a(coupondto);
    }

    private String b(CouponDTO coupondto)
    {
        String s;
        StringBuilder stringbuilder;
        int k;
        Object aobj1[];
        if (coupondto.getCurrentSeriatedCode() > 1)
        {
            Resources resources1 = getResources();
            int l = m.x_coupons_deal;
            int i1 = coupondto.getCurrentSeriatedCode();
            Object aobj2[] = new Object[2];
            aobj2[0] = Integer.valueOf(coupondto.getCurrentSeriatedCode());
            aobj2[1] = coupondto.getCampaignName();
            s = resources1.getQuantityString(l, i1, aobj2);
        } else
        {
            Resources resources = getResources();
            int i = m.x_coupons_deal;
            int j = coupondto.getCurrentSeriatedCode();
            Object aobj[] = new Object[1];
            aobj[0] = coupondto.getCampaignName();
            s = resources.getQuantityString(i, j, aobj);
        }
        stringbuilder = (new StringBuilder()).append(s).append(" ");
        k = o.x_receive_prize;
        aobj1 = new Object[1];
        aobj1[0] = Integer.valueOf(coupondto.getTotalSeriatedCode() - coupondto.getCurrentSeriatedCode());
        return stringbuilder.append(getString(k, aobj1)).toString();
    }

    private void b(String s)
    {
        (new a(getString(o.loading), s) {

            final String a;
            final CouponActivity b;

            public Object a()
            {
                return b();
            }

            protected void a(FragmentActivity fragmentactivity, CouponDTO coupondto)
            {
                super.a(fragmentactivity, coupondto);
                if (coupondto != null)
                {
                    com.etermax.preguntados.ui.coupon.CouponActivity.a(b, coupondto);
                }
            }

            protected void a(FragmentActivity fragmentactivity, Exception exception)
            {
                if (exception instanceof b)
                {
                    com.etermax.preguntados.ui.coupon.CouponActivity.a(b, ((b)exception).c());
                    b(false);
                }
                super.a(fragmentactivity, exception);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((FragmentActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (CouponDTO)obj1);
            }

            public CouponDTO b()
            {
                CodeDTO codedto = new CodeDTO();
                codedto.setToken(a);
                return b.a.a(codedto);
            }

            
            {
                b = CouponActivity.this;
                a = s1;
                super(s);
            }
        }).a(this);
    }

    public void a(String s)
    {
        b(s);
    }

    public void onAccept(Bundle bundle)
    {
        if (bundle != null && bundle.getBoolean("complete", false))
        {
            a.h();
            finish();
        }
    }
}
