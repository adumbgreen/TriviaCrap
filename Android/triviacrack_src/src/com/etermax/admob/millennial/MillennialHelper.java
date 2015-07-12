// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.millennial;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.TypedValue;
import com.google.ads.mediation.MediationAdRequest;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMRequest;
import java.util.Hashtable;
import org.json.JSONObject;

// Referenced classes of package com.etermax.admob.millennial:
//            MillennialAdapterExtras

public class MillennialHelper
{

    public MillennialHelper()
    {
    }

    public static int dip(int i, Context context)
    {
        return (int)TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static String getApId(JSONObject jsonobject)
    {
        return jsonobject.getString("apid");
    }

    public static void populateAdViewParameters(MMAd mmad, Hashtable hashtable, MediationAdRequest mediationadrequest, MillennialAdapterExtras millennialadapterextras)
    {
        MMRequest mmrequest;
        if (millennialadapterextras == null)
        {
            millennialadapterextras = new MillennialAdapterExtras();
        }
        if (mediationadrequest.getKeywords() != null)
        {
            hashtable.put("keywords", TextUtils.join(",", mediationadrequest.getKeywords()));
        }
        if (millennialadapterextras.getChildren() != null)
        {
            class _cls1
            {

                static final int $SwitchMap$com$google$ads$AdRequest$Gender[];

                static 
                {
                    $SwitchMap$com$google$ads$AdRequest$Gender = new int[com.google.ads.AdRequest.Gender.values().length];
                    try
                    {
                        $SwitchMap$com$google$ads$AdRequest$Gender[com.google.ads.AdRequest.Gender.MALE.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        $SwitchMap$com$google$ads$AdRequest$Gender[com.google.ads.AdRequest.Gender.FEMALE.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1)
                    {
                        return;
                    }
                }
            }

            com.google.ads.AdRequest.Gender gender;
            String s;
            if (millennialadapterextras.getChildren().booleanValue())
            {
                s = "true";
            } else
            {
                s = "false";
            }
            hashtable.put("children", s);
        }
        mmrequest = new MMRequest();
        if (mediationadrequest.getAgeInYears() != null)
        {
            mmrequest.setAge(mediationadrequest.getAgeInYears().toString());
        }
        gender = mediationadrequest.getGender();
        if (gender == null) goto _L2; else goto _L1
_L1:
        _cls1..SwitchMap.com.google.ads.AdRequest.Gender[gender.ordinal()];
        JVM INSTR tableswitch 1 2: default 136
    //                   1 287
    //                   2 297;
           goto _L2 _L3 _L4
_L2:
        if (millennialadapterextras.getIncomeInUsDollars() != null)
        {
            mmrequest.setIncome(millennialadapterextras.getIncomeInUsDollars().toString());
        }
        if (mediationadrequest.getLocation() != null)
        {
            MMRequest.setUserLocation(mediationadrequest.getLocation());
        }
        if (millennialadapterextras.getPostalCode() != null)
        {
            mmrequest.setZip(millennialadapterextras.getPostalCode());
        }
        if (millennialadapterextras.getMaritalStatus() != null)
        {
            mmrequest.setMarital(millennialadapterextras.getMaritalStatus().getDescription());
        }
        if (millennialadapterextras.getEthnicity() != null)
        {
            mmrequest.setEthnicity(millennialadapterextras.getEthnicity().getDescription());
        }
        if (millennialadapterextras.getPolitics() != null)
        {
            mmrequest.setPolitics(millennialadapterextras.getPolitics().getDescription());
        }
        if (millennialadapterextras.getEducation() != null)
        {
            mmrequest.setEducation(millennialadapterextras.getEducation().getDescription());
        }
        if (hashtable != null)
        {
            mmrequest.setMetaValues(hashtable);
        }
        mmad.setMMRequest(mmrequest);
        return;
_L3:
        mmrequest.setGender("male");
        continue; /* Loop/switch isn't completed */
_L4:
        mmrequest.setGender("female");
        if (true) goto _L2; else goto _L5
_L5:
    }
}
