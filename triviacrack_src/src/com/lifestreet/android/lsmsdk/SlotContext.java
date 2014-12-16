// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            SlotController, SlotView, IntegrationType, SlotType, 
//            SlotTargeting

public final class SlotContext
{

    private final WeakReference mContextRef;
    private final int mHeightInDips;
    private final IntegrationType mIntegrationType;
    private final boolean mShowBannerCloseButton;
    private final boolean mShowInterstitialCloseButton;
    private final Map mSlotQueryParams;
    private final String mSlotTag;
    private final SlotType mSlotType;
    private final String mSlotUrl;
    private final SlotTargeting mTargeting;
    private final int mWidthInDips;

    public SlotContext(Context context, SlotType slottype, String s, String s1, Map map, SlotTargeting slottargeting, boolean flag, 
            boolean flag1, int i, int j, IntegrationType integrationtype)
    {
        mWidthInDips = i;
        mHeightInDips = j;
        mSlotUrl = s;
        mSlotTag = s1;
        mSlotType = slottype;
        mTargeting = slottargeting;
        mSlotQueryParams = map;
        mContextRef = new WeakReference(context);
        mShowBannerCloseButton = flag;
        mShowInterstitialCloseButton = flag1;
        mIntegrationType = integrationtype;
    }

    public static SlotContext newInstance(SlotController slotcontroller)
    {
        boolean flag = true;
        Context context;
        SlotType slottype;
        String s;
        String s1;
        Map map;
        SlotTargeting slottargeting;
        boolean flag1;
        int i;
        int j;
        IntegrationType integrationtype;
        if (slotcontroller != null)
        {
            context = slotcontroller.getContext();
            s = slotcontroller.getSlotUrl();
            s1 = slotcontroller.getSlotTag();
            slottype = slotcontroller.getSlotType();
            slottargeting = slotcontroller.getTargeting();
            map = slotcontroller.getSlotQueryParams();
            flag1 = slotcontroller.isShowBannerCloseButton();
            flag = slotcontroller.isShowInterstitialCloseButton();
            integrationtype = slotcontroller.getIntegrationType();
            SlotView slotview = slotcontroller.getSlotView();
            if (slotview != null)
            {
                i = slotview.getWidthInDips();
                j = slotview.getHeightInDips();
            } else
            {
                i = 0;
                j = 0;
            }
        } else
        {
            context = null;
            slottype = null;
            s = null;
            s1 = null;
            map = null;
            slottargeting = null;
            flag1 = false;
            i = 0;
            j = 0;
            integrationtype = null;
        }
        return new SlotContext(context, slottype, s, s1, map, slottargeting, flag1, flag, i, j, integrationtype);
    }

    public Context getContext()
    {
        if (mContextRef != null)
        {
            return (Context)mContextRef.get();
        } else
        {
            return null;
        }
    }

    public int getHeightInDips()
    {
        return mHeightInDips;
    }

    public IntegrationType getIntegrationType()
    {
        return mIntegrationType;
    }

    public Map getSlotQueryParams()
    {
        return mSlotQueryParams;
    }

    public String getSlotTag()
    {
        return mSlotTag;
    }

    public SlotType getSlotType()
    {
        return mSlotType;
    }

    public String getSlotUrl()
    {
        return mSlotUrl;
    }

    public SlotTargeting getTargeting()
    {
        return mTargeting;
    }

    public int getWidthInDips()
    {
        return mWidthInDips;
    }

    public boolean isShowBannerCloseButton()
    {
        return mShowBannerCloseButton;
    }

    public boolean isShowInterstitialCloseButton()
    {
        return mShowInterstitialCloseButton;
    }
}
