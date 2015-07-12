// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons.data;

import android.app.Activity;
import android.location.Location;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.inmobi.commons.EducationType;
import com.inmobi.commons.EthnicityType;
import com.inmobi.commons.GenderType;
import com.inmobi.commons.HasChildren;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.MaritalStatus;
import com.inmobi.commons.SexualOrientation;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.inmobi.commons.data:
//            DeviceInfo, AppInfo, LocationInfo

public final class UserInfo
{

    private static UserInfo a = new UserInfo();
    private static int d = 1;
    private boolean b;
    private Activity c;
    private Location e;
    private boolean f;
    private String g;
    private EducationType h;
    private EthnicityType i;
    private GenderType j;
    private Calendar k;
    private Integer l;
    private Integer m;
    private String n;
    private String o;
    private String p;
    private String q;
    private HasChildren r;
    private MaritalStatus s;
    private String t;
    private SexualOrientation u;
    private Map v;

    private UserInfo()
    {
        f = true;
        l = Integer.valueOf(0);
        m = Integer.valueOf(0);
        v = new HashMap();
    }

    public static UserInfo getInstance()
    {
        return a;
    }

    public void addIDType(IMIDType imidtype, String s1)
    {
        if (v != null)
        {
            v.put(imidtype, s1);
        }
    }

    public Integer getAge()
    {
        return m;
    }

    public String getAreaCode()
    {
        return q;
    }

    public Location getCurrentLocation()
    {
        return e;
    }

    public Calendar getDateOfBirth()
    {
        return k;
    }

    public int getDeviceIDMask()
    {
        return d;
    }

    public EducationType getEducation()
    {
        return h;
    }

    public EthnicityType getEthnicity()
    {
        return i;
    }

    public GenderType getGender()
    {
        return j;
    }

    public HasChildren getHasChildren()
    {
        return r;
    }

    public String getIDType(IMIDType imidtype)
    {
        if (v != null)
        {
            return (String)v.get(imidtype);
        } else
        {
            return null;
        }
    }

    public Integer getIncome()
    {
        return l;
    }

    public String getInterests()
    {
        return n;
    }

    public String getLanguage()
    {
        return t;
    }

    public String getLocationWithCityStateCountry()
    {
        return o;
    }

    public MaritalStatus getMaritalStatus()
    {
        return s;
    }

    public String getPostalCode()
    {
        return p;
    }

    public String getSearchString()
    {
        return g;
    }

    public SexualOrientation getSexualOrientation()
    {
        return u;
    }

    public boolean isLocationInquiryAllowed()
    {
        return f;
    }

    public boolean isTestMode()
    {
        return b;
    }

    public void removeIDType(IMIDType imidtype)
    {
        if (v != null)
        {
            v.remove(imidtype);
        }
    }

    public void setActivity(Activity activity)
    {
        c = activity;
        DeviceInfo.getInstance().init(c);
    }

    public void setAge(Integer integer)
    {
        m = integer;
    }

    public void setAreaCode(String s1)
    {
        q = s1;
    }

    public void setCurrentLocation(Location location)
    {
        e = location;
    }

    public void setDateOfBirth(Calendar calendar)
    {
        k = calendar;
    }

    public void setDeviceIDMask(int i1)
    {
        d = i1;
    }

    public void setEducation(EducationType educationtype)
    {
        h = educationtype;
    }

    public void setEthnicity(EthnicityType ethnicitytype)
    {
        i = ethnicitytype;
    }

    public void setGender(GenderType gendertype)
    {
        j = gendertype;
    }

    public void setHasChildren(HasChildren haschildren)
    {
        r = haschildren;
    }

    public void setIncome(Integer integer)
    {
        l = integer;
    }

    public void setInterests(String s1)
    {
        n = s1;
    }

    public void setLanguage(String s1)
    {
        t = s1;
    }

    public void setLocationInquiryAllowed(boolean flag)
    {
        f = flag;
    }

    public void setLocationWithCityStateCountry(String s1, String s2, String s3)
    {
        if (s1 != null && !"".equals(s1.trim()))
        {
            o = s1;
        }
        if (s2 != null && !"".equals(s2.trim()))
        {
            o = (new StringBuilder()).append(o).append("-").append(s2).toString();
        }
        if (s3 != null && !"".equals(s3.trim()))
        {
            o = (new StringBuilder()).append(o).append("-").append(s3).toString();
        }
    }

    public void setMaritalStatus(MaritalStatus maritalstatus)
    {
        s = maritalstatus;
    }

    public void setPostalCode(String s1)
    {
        p = s1;
    }

    public void setSexualOrientation(SexualOrientation sexualorientation)
    {
        u = sexualorientation;
    }

    public void setTestMode(boolean flag)
    {
        b = flag;
    }

    public void updateInfo()
    {
        this;
        JVM INSTR monitorenter ;
        DisplayMetrics displaymetrics = new DisplayMetrics();
        c.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        float f1 = displaymetrics.density;
        Display display = ((WindowManager)c.getSystemService("window")).getDefaultDisplay();
        int i1 = (int)((float)WrapperFunctions.getDisplayWidth(display) / f1);
        int j1 = (int)((float)WrapperFunctions.getDisplayHeight(display) / f1);
        DeviceInfo.setScreenDensity(String.valueOf(f1));
        DeviceInfo.setScreenSize((new StringBuilder()).append("").append(i1).append("X").append(j1).toString());
        DeviceInfo.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(c.getApplicationContext()));
        DeviceInfo.getInstance().fillDeviceInfo();
        AppInfo.fillAppInfo();
        LocationInfo.b(false);
        if (!isLocationInquiryAllowed())
        {
            break MISSING_BLOCK_LABEL_205;
        }
        if (getCurrentLocation() == null) goto _L2; else goto _L1
_L1:
        LocationInfo.a(getCurrentLocation());
        LocationInfo.b(true);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        LocationInfo.verifyLocationPermission();
        if (!LocationInfo.isLocationDeniedByUser())
        {
            LocationInfo.updateBestKnownLocation();
        }
          goto _L3
        Exception exception1;
        exception1;
        Log.internal("[InMobi]-4.3.0", "Exception updating user info", exception1);
          goto _L3
        Exception exception;
        exception;
        throw exception;
        LocationInfo.a(true);
          goto _L3
    }

}
