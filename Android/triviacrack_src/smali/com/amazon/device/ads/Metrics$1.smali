.class Lcom/amazon/device/ads/Metrics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/Metrics;->sendMetrics(Lcom/amazon/device/ads/WebRequest;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Metrics;

.field final synthetic val$webRequest:Lcom/amazon/device/ads/WebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/WebRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amazon/device/ads/Metrics$1;->this$0:Lcom/amazon/device/ads/Metrics;

    iput-object p2, p0, Lcom/amazon/device/ads/Metrics$1;->val$webRequest:Lcom/amazon/device/ads/WebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 222
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics$1;->val$webRequest:Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {v0, v5}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/Metrics$1;->val$webRequest:Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lcom/amazon/device/ads/Metrics$2;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getStatus()Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to submit metrics for ad due to an Invalid Client Protocol, msg: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to submit metrics for ad due to Network Failure, msg: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to submit metrics for ad due to a Malformed Pixel URL, msg: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :pswitch_3
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to submit metrics for ad because of unsupported character encoding, msg: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
