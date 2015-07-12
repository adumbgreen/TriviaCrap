// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.lifestreet;

import android.location.Location;
import android.view.View;
import com.google.ads.mediation.MediationAdRequest;
import com.lifestreet.android.lsmsdk.BannerAdapter;
import com.lifestreet.android.lsmsdk.InterstitialAdapter;
import com.lifestreet.android.lsmsdk.SlotListener;
import com.lifestreet.android.lsmsdk.SlotTargeting;
import com.lifestreet.android.lsmsdk.SlotView;

public abstract class BaseLifeStreetContainer
    implements SlotListener
{

    public BaseLifeStreetContainer()
    {
    }

    protected SlotTargeting newSlotTargetingInstance(MediationAdRequest mediationadrequest)
    {
        SlotTargeting slottargeting;
        com.google.ads.AdRequest.Gender gender;
        if (mediationadrequest == null)
        {
            return null;
        }
        slottargeting = new SlotTargeting();
        gender = mediationadrequest.getGender();
        if (gender == null) goto _L2; else goto _L1
_L1:
        class _cls1
        {

            static final int $SwitchMap$com$google$ads$AdRequest$Gender[];

            static 
            {
                $SwitchMap$com$google$ads$AdRequest$Gender = new int[com.google.ads.AdRequest.Gender.values().length];
                try
                {
                    $SwitchMap$com$google$ads$AdRequest$Gender[com.google.ads.AdRequest.Gender.UNKNOWN.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$google$ads$AdRequest$Gender[com.google.ads.AdRequest.Gender.MALE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$google$ads$AdRequest$Gender[com.google.ads.AdRequest.Gender.FEMALE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.google.ads.AdRequest.Gender[gender.ordinal()];
        JVM INSTR tableswitch 1 3: default 56
    //                   1 93
    //                   2 103
    //                   3 113;
           goto _L3 _L4 _L5 _L6
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_113;
_L2:
        Location location = mediationadrequest.getLocation();
        if (location != null)
        {
            slottargeting.setLatitude(String.valueOf(location.getLatitude()));
            slottargeting.setLongitude(String.valueOf(location.getLongitude()));
            return slottargeting;
        } else
        {
            slottargeting.setAllowAutoLocation(false);
            return slottargeting;
        }
_L4:
        slottargeting.setGender(com.lifestreet.android.lsmsdk.SlotTargeting.Gender.UNKNOWN);
          goto _L2
_L5:
        slottargeting.setGender(com.lifestreet.android.lsmsdk.SlotTargeting.Gender.MALE);
          goto _L2
        slottargeting.setGender(com.lifestreet.android.lsmsdk.SlotTargeting.Gender.FEMALE);
          goto _L2
    }

    public void onClick(BannerAdapter banneradapter, View view)
    {
    }

    public void onClickInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
    }

    public void onClose(BannerAdapter banneradapter, View view)
    {
    }

    public void onDestroyCustomEventBannerAdapter(BannerAdapter banneradapter, String s)
    {
    }

    public void onDestroyCustomEventInterstitialAdapter(InterstitialAdapter interstitialadapter, String s)
    {
    }

    public void onDismissInterstitialScreen(InterstitialAdapter interstitialadapter, Object obj)
    {
    }

    public void onDismissScreen(BannerAdapter banneradapter, View view)
    {
    }

    public void onFailedToLoadSlotView(SlotView slotview)
    {
    }

    public void onFailedToReceiveAd(BannerAdapter banneradapter, View view)
    {
    }

    public void onFailedToReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
    }

    public void onLeaveApplication(BannerAdapter banneradapter, View view)
    {
    }

    public void onLeaveApplicationInterstitial(InterstitialAdapter interstitialadapter, Object obj)
    {
    }

    public void onPresentInterstitialScreen(InterstitialAdapter interstitialadapter, Object obj)
    {
    }

    public void onPresentScreen(BannerAdapter banneradapter, View view)
    {
    }

    public void onReceiveAd(BannerAdapter banneradapter, View view)
    {
    }

    public void onReceiveInterstitialAd(InterstitialAdapter interstitialadapter, Object obj)
    {
    }
}
