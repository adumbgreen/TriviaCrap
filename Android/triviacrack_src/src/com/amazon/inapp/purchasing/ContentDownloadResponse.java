// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator

final class ContentDownloadResponse
{

    private final ContentDownloadRequestStatus _contentDownloadRequestStatus;
    private final int _percentComplete;
    private final String _requestId;

    ContentDownloadResponse(String s, int i, ContentDownloadRequestStatus contentdownloadrequeststatus)
    {
        Validator.validateNotNull(s, "requestId");
        Validator.validateNotNull(contentdownloadrequeststatus, "contentDownloadRequestStatus");
        _requestId = s;
        _percentComplete = i;
        _contentDownloadRequestStatus = contentdownloadrequeststatus;
    }

    public ContentDownloadRequestStatus getContentDownloadRequestStatus()
    {
        return _contentDownloadRequestStatus;
    }

    public int getPercentComplete()
    {
        return _percentComplete;
    }

    public String getRequestId()
    {
        return _requestId;
    }
}
