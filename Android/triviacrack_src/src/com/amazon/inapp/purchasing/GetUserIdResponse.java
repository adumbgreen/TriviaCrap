// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator

public final class GetUserIdResponse
{

    private static final String TO_STRING_FORMAT = "(%s, requestId: \"%s\", getUserIdRequestStatus: \"%s\", userId: \"%s\")";
    private final GetUserIdRequestStatus _getUserIdRequestStatus;
    private final String _requestId;
    private final String _userId;

    GetUserIdResponse(String s, GetUserIdRequestStatus getuseridrequeststatus, String s1)
    {
        Validator.validateNotNull(s, "requestId");
        Validator.validateNotNull(getuseridrequeststatus, "getUserIdRequestStatus");
        if (GetUserIdRequestStatus.SUCCESSFUL == getuseridrequeststatus)
        {
            Validator.validateNotNull(s1, "userId");
        }
        _requestId = s;
        _userId = s1;
        _getUserIdRequestStatus = getuseridrequeststatus;
    }

    public String getRequestId()
    {
        return _requestId;
    }

    public String getUserId()
    {
        return _userId;
    }

    public GetUserIdRequestStatus getUserIdRequestStatus()
    {
        return _getUserIdRequestStatus;
    }

    public String toString()
    {
        Object aobj[] = new Object[4];
        aobj[0] = super.toString();
        aobj[1] = _requestId;
        aobj[2] = _getUserIdRequestStatus;
        aobj[3] = _userId;
        return String.format("(%s, requestId: \"%s\", getUserIdRequestStatus: \"%s\", userId: \"%s\")", aobj);
    }

    private class GetUserIdRequestStatus extends Enum
    {

        private static final GetUserIdRequestStatus $VALUES[];
        public static final GetUserIdRequestStatus FAILED;
        public static final GetUserIdRequestStatus SUCCESSFUL;

        public static GetUserIdRequestStatus valueOf(String s)
        {
            return (GetUserIdRequestStatus)Enum.valueOf(com/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus, s);
        }

        public static GetUserIdRequestStatus[] values()
        {
            return (GetUserIdRequestStatus[])$VALUES.clone();
        }

        static 
        {
            SUCCESSFUL = new GetUserIdRequestStatus("SUCCESSFUL", 0);
            FAILED = new GetUserIdRequestStatus("FAILED", 1);
            GetUserIdRequestStatus agetuseridrequeststatus[] = new GetUserIdRequestStatus[2];
            agetuseridrequeststatus[0] = SUCCESSFUL;
            agetuseridrequeststatus[1] = FAILED;
            $VALUES = agetuseridrequeststatus;
        }

        private GetUserIdRequestStatus(String s, int i)
        {
            super(s, i);
        }
    }

}
