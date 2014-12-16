// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            AAXParameter, AdSlot, AdTargetingOptions, AdRequest

class eterData
{

    static final AAXParameter PARAMETERS[];
    private final AdSlot adSlot;
    private final ctBuilder jsonObjectBuilder;
    private final AdTargetingOptions opt;

    AdSlot getAdSlot()
    {
        return adSlot;
    }

    AdTargetingOptions getAdTargetingOptions()
    {
        return opt;
    }

    JSONObject getJSON()
    {
        jsonObjectBuilder.build();
        return jsonObjectBuilder.getJSON();
    }

    static 
    {
        AAXParameter aaaxparameter[] = new AAXParameter[7];
        aaaxparameter[0] = AAXParameter.SIZE;
        aaaxparameter[1] = AAXParameter.PAGE_TYPE;
        aaaxparameter[2] = AAXParameter.SLOT;
        aaaxparameter[3] = AAXParameter.SLOT_POSITION;
        aaaxparameter[4] = AAXParameter.MAX_SIZE;
        aaaxparameter[5] = AAXParameter.SLOT_ID;
        aaaxparameter[6] = AAXParameter.FLOOR_PRICE;
        PARAMETERS = aaaxparameter;
    }

    eterData(AdSlot adslot, AdRequest adrequest)
    {
        opt = adslot.getAdTargetingOptions();
        adSlot = adslot;
        java.util.HashMap hashmap = opt.getCopyOfAdvancedOptions();
        eterData eterdata = (new eterData()).setAdvancedOptions(hashmap).setLOISlot(this).setAdRequest(adrequest);
        jsonObjectBuilder = (new ctBuilder()).setAAXParameters(PARAMETERS).setAdvancedOptions(hashmap).setParameterData(eterdata);
    }
}
