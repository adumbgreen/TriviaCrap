// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.mediation;

import android.content.Context;
import com.etermax.a.b;
import com.etermax.gamescommon.datasource.dto.AdUnitDTO;
import com.etermax.gamescommon.datasource.dto.AdsMediationConfDTO;
import com.etermax.gamescommon.datasource.j;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class MediationManager
{

    Context mContext;
    j mDtoPersistanceManager;

    public MediationManager()
    {
    }

    private AdUnitDTO[] getPersistedAdUnits()
    {
        return (AdUnitDTO[])mDtoPersistanceManager.b("ad_units", [Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;);
    }

    private void persistAdUnits(AdUnitDTO aadunitdto[])
    {
        mDtoPersistanceManager.a("ad_units", aadunitdto);
    }

    void afterInject()
    {
        if (!(mContext instanceof IApplicationMediation))
        {
            throw new RuntimeException("Application must implement IApplicationMediation");
        } else
        {
            return;
        }
    }

    public AdMediationConfig getMediationForAdUnitType(String s)
    {
        return getMediationForAdUnitType(s, true);
    }

    public AdMediationConfig getMediationForAdUnitType(String s, boolean flag)
    {
        if (flag && b.f(mContext))
        {
            s = (new StringBuilder()).append(s).append("_tablet").toString();
        }
        AdUnitDTO aadunitdto[] = getPersistedAdUnits();
        if (aadunitdto != null)
        {
            int l = aadunitdto.length;
            for (int i1 = 0; i1 < l; i1++)
            {
                AdUnitDTO adunitdto1 = aadunitdto[i1];
                if (adunitdto1.getName().equals(s) && adunitdto1.getMediator() != null)
                {
                    return new AdMediationConfig(adunitdto1.getMediator(), adunitdto1.getId());
                }
            }

        }
        AdUnitDTO aadunitdto1[] = ((IApplicationMediation)mContext).getDefaultMediation();
        int i = aadunitdto1.length;
        for (int k = 0; k < i; k++)
        {
            AdUnitDTO adunitdto = aadunitdto1[k];
            if (adunitdto.getName().equals(s))
            {
                return new AdMediationConfig(adunitdto.getMediator(), adunitdto.getId());
            }
        }

        return new AdMediationConfig(AdMediatorType.disabled, null);
    }

    public void setMediationConf(List list)
    {
        int i = 0;
        if (list != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        AdsMediationConfDTO adsmediationconfdto;
        Iterator iterator = list.iterator();
        int k;
        for (k = 0; iterator.hasNext(); k += ((AdsMediationConfDTO)iterator.next()).getWeight()) { }
        if (k <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        int l = (new Random()).nextInt(k);
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                continue; /* Loop/switch isn't completed */
            }
            adsmediationconfdto = (AdsMediationConfDTO)iterator1.next();
            i += adsmediationconfdto.getWeight();
        } while (l >= i);
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        persistAdUnits(adsmediationconfdto.getAd_units());
        return;
    }

    private class IApplicationMediation
    {

        public abstract AdUnitDTO[] getDefaultMediation();
    }


    private class AdMediationConfig
    {

        private String id;
        private AdMediatorType mediator;
        final MediationManager this$0;

        public String getId()
        {
            return id;
        }

        public AdMediatorType getMediator()
        {
            return mediator;
        }

        public AdMediationConfig(AdMediatorType admediatortype, String s)
        {
            this$0 = MediationManager.this;
            super();
            mediator = admediatortype;
            id = s;
        }
    }


    private class AdMediatorType extends Enum
    {

        private static final AdMediatorType $VALUES[];
        public static final AdMediatorType admob;
        public static final AdMediatorType disabled;
        public static final AdMediatorType mopub;

        public static AdMediatorType valueOf(String s)
        {
            return (AdMediatorType)Enum.valueOf(com/etermax/gamescommon/mediation/MediationManager$AdMediatorType, s);
        }

        public static AdMediatorType[] values()
        {
            return (AdMediatorType[])$VALUES.clone();
        }

        static 
        {
            admob = new AdMediatorType("admob", 0);
            mopub = new AdMediatorType("mopub", 1);
            disabled = new AdMediatorType("disabled", 2);
            AdMediatorType aadmediatortype[] = new AdMediatorType[3];
            aadmediatortype[0] = admob;
            aadmediatortype[1] = mopub;
            aadmediatortype[2] = disabled;
            $VALUES = aadmediatortype;
        }

        private AdMediatorType(String s, int i)
        {
            super(s, i);
        }
    }

}
