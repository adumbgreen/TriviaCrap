// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.e;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.Calendar;

// Referenced classes of package com.etermax.gamescommon.promotion:
//            BasePromotion

public class PromotionsManager
{

    private BasePromotion mCurrentPromotion;
    e mPreferences;

    public PromotionsManager()
    {
    }

    private Calendar getLastTimeShown()
    {
        long l = mPreferences.a("last_time_shown", 0L);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(l);
        return calendar;
    }

    private boolean hasChangedDay()
    {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar1 = getLastTimeShown();
        if (calendar.get(5) == calendar1.get(5) && calendar.get(2) == calendar1.get(2) && calendar.get(1) == calendar1.get(1))
        {
            return false;
        } else
        {
            setHasClosedPopup(false);
            return true;
        }
    }

    private boolean hasClosedPopup()
    {
        return mPreferences.a("has_closed_popup", false);
    }

    private void setHasClosedPopup(boolean flag)
    {
        mPreferences.b("has_closed_popup", flag);
    }

    private void setLastTimeShown()
    {
        mPreferences.b("last_time_shown", Calendar.getInstance().getTimeInMillis());
    }

    public void clearCurrentPromotion()
    {
        mCurrentPromotion = null;
    }

    public BasePromotion getCurrentPromotion()
    {
        return mCurrentPromotion;
    }

    public long getRemainingMilliseconds()
    {
        BasePromotion basepromotion = getCurrentPromotion();
        if (basepromotion != null)
        {
            return basepromotion.getRemainingTime();
        } else
        {
            return 0L;
        }
    }

    public boolean isCurrentPromoActive()
    {
        return mCurrentPromotion != null && getRemainingMilliseconds() > 0L;
    }

    public boolean mustShowDailyPromo()
    {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar1 = Calendar.getInstance();
        calendar1.setTimeInMillis(mPreferences.a("last_time_shown_daily", 0L));
        if (calendar.get(5) == calendar1.get(5) && calendar.get(2) == calendar1.get(2) && calendar.get(1) == calendar1.get(1))
        {
            return false;
        } else
        {
            mPreferences.b("last_time_shown_daily", Calendar.getInstance().getTimeInMillis());
            return true;
        }
    }

    public boolean mustShowPromoPopup()
    {
        boolean flag;
        if (mCurrentPromotion != null && isCurrentPromoActive() && (hasChangedDay() || !hasClosedPopup()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            setLastTimeShown();
        }
        return flag;
    }

    public void onPromoPopupClose()
    {
        setHasClosedPopup(true);
    }

    public void setCurrentPromotion(BasePromotion basepromotion)
    {
        mCurrentPromotion = basepromotion;
    }

    public void showBuyFragment(FragmentActivity fragmentactivity)
    {
        if (fragmentactivity instanceof BaseFragmentActivity)
        {
            android.support.v4.app.Fragment fragment = mCurrentPromotion.getPromoBuyFragment();
            ((BaseFragmentActivity)fragmentactivity).a(fragment, "promo_fragment", true);
        }
    }
}
