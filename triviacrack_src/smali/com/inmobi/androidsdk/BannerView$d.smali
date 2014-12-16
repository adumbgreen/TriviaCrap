.class Lcom/inmobi/androidsdk/BannerView$d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/androidsdk/BannerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 1
    .parameter

    .prologue
    .line 927
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 928
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView$d;->a:Ljava/lang/ref/WeakReference;

    .line 929
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    .line 933
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/BannerView;

    .line 937
    if-eqz v0, :cond_0

    .line 939
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 1091
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1092
    return-void

    .line 941
    :pswitch_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 943
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 944
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 946
    :try_start_2
    const-string v4, "ad"

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->d(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 947
    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 953
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/metric/EventLog;

    sget-object v6, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->FETCH_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v5, v6, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 956
    :cond_1
    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 958
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->e(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 959
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->e(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@__imm_aft@"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;

    .line 961
    :cond_2
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->e(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v0

    .line 1089
    const-string v1, "[InMobi]-[Network]-4.3.0"

    const-string v2, "Exception hanlde message adview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 948
    :catch_1
    move-exception v4

    .line 949
    :try_start_4
    const-string v4, "[InMobi]-[Network]-4.3.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating metric logs for fetch_complete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 964
    :pswitch_2
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 965
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    .line 966
    const/16 v2, 0x65

    invoke-static {v0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    .line 968
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Z)V

    goto/16 :goto_0

    .line 971
    :pswitch_3
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 972
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 973
    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 979
    :pswitch_4
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->f(Lcom/inmobi/androidsdk/BannerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 982
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 984
    :try_start_5
    const-string v4, "ad"

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->d(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 985
    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 991
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v4, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_TIMEOUT:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v4, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 994
    :cond_3
    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 995
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 996
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Z)V

    .line 998
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->g(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 999
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    .line 1000
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    .line 1005
    :goto_3
    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->cancelLoad()V

    .line 1006
    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->stopLoading()V

    .line 1007
    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 1008
    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_RENDERING_TIMEOUT:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 986
    :catch_2
    move-exception v1

    .line 987
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating metric logs for fetch_complete at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1002
    :cond_4
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    .line 1003
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;

    goto :goto_3

    .line 1013
    :pswitch_5
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1014
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1016
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->j(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->doCancel()V

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1019
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1020
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1022
    :try_start_7
    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1023
    const-string v1, "m"

    const/4 v2, 0x1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1029
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v4, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->CONNECT_ERROR:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v4, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1032
    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;Z)V

    .line 1033
    const/16 v1, 0x65

    sget-object v2, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_FETCH_TIMEOUT:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 1024
    :catch_3
    move-exception v1

    .line 1025
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating metric logs for error at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1038
    :pswitch_6
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1041
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 1043
    :try_start_9
    const-string v4, "ad"

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->d(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    const-string v4, "t"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1050
    :goto_5
    :try_start_a
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/metric/EventLog;

    sget-object v4, Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;->RENDER_COMPLETE:Lcom/inmobi/androidsdk/bootstrapper/NetworkEventType;

    invoke-direct {v2, v4, v3}, Lcom/inmobi/commons/metric/EventLog;-><init>(Lcom/inmobi/commons/metric/EventType;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/metric/Logger;->logEvent(Lcom/inmobi/commons/metric/EventLog;)V

    .line 1053
    :cond_6
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1056
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->k(Lcom/inmobi/androidsdk/BannerView;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1057
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->l(Lcom/inmobi/androidsdk/BannerView;)V

    .line 1058
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->b(Lcom/inmobi/androidsdk/BannerView;Z)Z

    goto/16 :goto_0

    .line 1045
    :catch_4
    move-exception v1

    .line 1046
    const-string v1, "[InMobi]-[Network]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating metric logs for fetch_complete at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1059
    :cond_7
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->m(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/commons/AnimationType;

    move-result-object v1

    sget-object v2, Lcom/inmobi/commons/AnimationType;->ANIMATION_OFF:Lcom/inmobi/commons/AnimationType;

    if-ne v1, v2, :cond_8

    .line 1060
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->l(Lcom/inmobi/androidsdk/BannerView;)V

    goto/16 :goto_0

    .line 1062
    :cond_8
    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->n(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/a;

    move-result-object v1

    invoke-static {v0}, Lcom/inmobi/androidsdk/BannerView;->m(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/commons/AnimationType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/a;->a(Lcom/inmobi/commons/AnimationType;)V

    goto/16 :goto_0

    .line 1068
    :pswitch_7
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/BannerView;->c(Lcom/inmobi/androidsdk/BannerView;Z)V

    goto/16 :goto_0

    .line 1071
    :pswitch_8
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 1076
    :pswitch_9
    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto/16 :goto_0

    .line 1081
    :pswitch_a
    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inmobi/androidsdk/BannerView;->a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 939
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
