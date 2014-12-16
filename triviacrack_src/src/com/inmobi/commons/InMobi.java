// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.commons;

import android.app.Activity;
import android.location.Location;
import com.inmobi.commons.analytics.androidsdk.IMAdTracker;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.ActivityRecognitionManager;
import com.inmobi.commons.internal.ApplicationFocusManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.ThinICE;
import java.util.Calendar;

// Referenced classes of package com.inmobi.commons:
//            IMIDType, EducationType, EthnicityType, GenderType, 
//            HasChildren, MaritalStatus, SexualOrientation

public final class InMobi
{

    public static final int EXCLUDE_FB_ID = 4;
    public static final int EXCLUDE_ODIN1 = 2;
    public static final int EXCLUDE_UM5_ID = 8;
    public static final int ID_DEVICE_NONE = 0;
    public static final int INCLUDE_DEFAULT = 1;
    private static String a = null;

    private InMobi()
    {
    }

    static String a()
    {
        return a;
    }

    public static void addIDType(IMIDType imidtype, String s)
    {
        UserInfo.getInstance().addIDType(imidtype, s);
    }

    public static String getAppId()
    {
        return a;
    }

    public static String getVersion()
    {
        return "4.3.0";
    }

    public static void initialize(Activity activity, String s)
    {
        if (activity == null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        InternalSDKUtil.getUserAgent(activity.getApplicationContext());
        if (a != null)
        {
            ThinICE.start(activity);
            return;
        }
        if (activity != null) goto _L2; else goto _L1
_L1:
        try
        {
            Log.debug("[InMobi]-4.3.0", "Application Context NULL");
            Log.debug("[InMobi]-4.3.0", "context cannot be null");
            return;
        }
        catch (Exception exception) { }
_L3:
        ActivityRecognitionManager.init(activity.getApplicationContext());
        UserInfo.getInstance().setActivity(activity);
        UserInfo.getInstance().updateInfo();
        return;
_L2:
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        Log.debug("[InMobi]-4.3.0", "APP ID Cannot be NULL");
        Log.debug("[InMobi]-4.3.0", "appId cannot be null");
        return;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        if (!"".equals(s.trim()))
        {
            break MISSING_BLOCK_LABEL_107;
        }
        Log.debug("[InMobi]-4.3.0", "appId cannot be blank");
        return;
        android.content.Context context = activity.getApplicationContext();
        InternalSDKUtil.setContext(context);
        Log.debug("[InMobi]-4.3.0", "InMobi init successful");
        a = s.trim();
        ThinICE.start(activity);
        IMAdTracker.getInstance().init(context, s);
        IMAdTracker.getInstance().reportAppDownloadGoal();
        ApplicationFocusManager.init(activity);
        final class a
            implements com.inmobi.commons.internal.ApplicationFocusManager.FocusChangedListener
        {

            public void onFocusChanged(boolean flag)
            {
                if (flag)
                {
                    AnalyticsEventsWrapper.getInstance().startSession(InMobi.a(), null);
                    return;
                } else
                {
                    AnalyticsEventsWrapper.getInstance().endSession(null);
                    return;
                }
            }

            a()
            {
            }
        }

        ApplicationFocusManager.addFocusChangedListener(new a());
        AnalyticsEventsWrapper.getInstance().startSession(a, null);
          goto _L3
    }

    public static void removeIDType(IMIDType imidtype)
    {
        UserInfo.getInstance().removeIDType(imidtype);
    }

    public static void setAge(int i)
    {
        UserInfo.getInstance().setAge(Integer.valueOf(i));
    }

    public static void setAreaCode(String s)
    {
        if (s != null && !"".equals(s.trim()))
        {
            UserInfo.getInstance().setAreaCode(s);
            return;
        } else
        {
            Log.debug("[InMobi]-4.3.0", "Area code cannot be null");
            return;
        }
    }

    public static void setCurrentLocation(Location location)
    {
        if (location != null)
        {
            UserInfo.getInstance().setCurrentLocation(location);
            return;
        } else
        {
            Log.debug("[InMobi]-4.3.0", "Location cannot be null");
            return;
        }
    }

    public static void setDateOfBirth(Calendar calendar)
    {
        if (calendar != null)
        {
            UserInfo.getInstance().setDateOfBirth(calendar);
            return;
        } else
        {
            Log.debug("[InMobi]-4.3.0", "Date Of Birth cannot be null");
            return;
        }
    }

    public static void setDeviceIDMask(int i)
    {
        UserInfo.getInstance().setDeviceIDMask(i);
    }

    public static void setEducation(EducationType educationtype)
    {
        if (educationtype != null)
        {
            UserInfo.getInstance().setEducation(educationtype);
        }
    }

    public static void setEthnicity(EthnicityType ethnicitytype)
    {
        if (ethnicitytype != null)
        {
            UserInfo.getInstance().setEthnicity(ethnicitytype);
        }
    }

    public static void setGender(GenderType gendertype)
    {
        if (gendertype != null)
        {
            UserInfo.getInstance().setGender(gendertype);
        }
    }

    public static void setHasChildren(HasChildren haschildren)
    {
        if (haschildren != null)
        {
            UserInfo.getInstance().setHasChildren(haschildren);
        }
    }

    public static void setIncome(int i)
    {
        UserInfo.getInstance().setIncome(Integer.valueOf(i));
    }

    public static void setInterests(String s)
    {
        if (s != null && !"".equals(s.trim()))
        {
            UserInfo.getInstance().setInterests(s);
            return;
        } else
        {
            Log.debug("[InMobi]-4.3.0", "Interests cannot be null");
            return;
        }
    }

    public static void setLanguage(String s)
    {
        if (s != null && !"".equals(s.trim()))
        {
            UserInfo.getInstance().setLanguage(s);
            return;
        } else
        {
            Log.debug("[InMobi]-4.3.0", "Language cannot be null");
            return;
        }
    }

    public static void setLocationInquiryAllowed(boolean flag)
    {
        UserInfo.getInstance().setLocationInquiryAllowed(flag);
    }

    public static void setLocationWithCityStateCountry(String s, String s1, String s2)
    {
        UserInfo.getInstance().setLocationWithCityStateCountry(s, s1, s2);
    }

    public static void setLogLevel(LOG_LEVEL log_level)
    {
        if (log_level == LOG_LEVEL.NONE)
        {
            Log.setInternalLogLevel(com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.NONE);
            return;
        }
        if (log_level == LOG_LEVEL.DEBUG)
        {
            Log.setInternalLogLevel(com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.DEBUG);
            return;
        }
        if (log_level == LOG_LEVEL.VERBOSE)
        {
            Log.setInternalLogLevel(com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.VERBOSE);
            return;
        } else
        {
            Log.setInternalLogLevel(com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL.INTERNAL);
            return;
        }
    }

    public static void setMaritalStatus(MaritalStatus maritalstatus)
    {
        if (maritalstatus != null)
        {
            UserInfo.getInstance().setMaritalStatus(maritalstatus);
        }
    }

    public static void setPostalCode(String s)
    {
        if (s != null && !"".equals(s.trim()))
        {
            UserInfo.getInstance().setPostalCode(s);
            return;
        } else
        {
            Log.debug("[InMobi]-4.3.0", "Postal Code cannot be null");
            return;
        }
    }

    public static void setSexualOrientation(SexualOrientation sexualorientation)
    {
        if (sexualorientation != null)
        {
            UserInfo.getInstance().setSexualOrientation(sexualorientation);
        }
    }


    private class LOG_LEVEL extends Enum
    {

        public static final LOG_LEVEL DEBUG;
        public static final LOG_LEVEL NONE;
        public static final LOG_LEVEL VERBOSE;
        private static final LOG_LEVEL b[];
        private final int a;

        public static LOG_LEVEL valueOf(String s)
        {
            return (LOG_LEVEL)Enum.valueOf(com/inmobi/commons/InMobi$LOG_LEVEL, s);
        }

        public static LOG_LEVEL[] values()
        {
            return (LOG_LEVEL[])b.clone();
        }

        public int getValue()
        {
            return a;
        }

        static 
        {
            NONE = new LOG_LEVEL("NONE", 0, 0);
            DEBUG = new LOG_LEVEL("DEBUG", 1, 1);
            VERBOSE = new LOG_LEVEL("VERBOSE", 2, 2);
            LOG_LEVEL alog_level[] = new LOG_LEVEL[3];
            alog_level[0] = NONE;
            alog_level[1] = DEBUG;
            alog_level[2] = VERBOSE;
            b = alog_level;
        }

        private LOG_LEVEL(String s, int i, int j)
        {
            super(s, i);
            a = j;
        }
    }

}
