.class Lcom/amazon/device/ads/AdContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdContainer;->loadUrl(Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdContainer;

.field final synthetic val$callback:Lcom/amazon/device/ads/PreloadCallback;

.field final synthetic val$shouldPreload:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdContainer;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/amazon/device/ads/AdContainer$1;->this$0:Lcom/amazon/device/ads/AdContainer;

    iput-object p2, p0, Lcom/amazon/device/ads/AdContainer$1;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/device/ads/AdContainer$1;->val$shouldPreload:Z

    iput-object p4, p0, Lcom/amazon/device/ads/AdContainer$1;->val$callback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 380
    invoke-static {}, Lcom/amazon/device/ads/WebRequest;->createNewWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v1

    .line 381
    invoke-static {}, Lcom/amazon/device/ads/AdContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, v6}, Lcom/amazon/device/ads/WebRequest;->enableLogUrl(Z)V

    .line 383
    iget-object v0, p0, Lcom/amazon/device/ads/AdContainer$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 384
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/amazon/device/ads/InternalAdRegistration;->getInstance()Lcom/amazon/device/ads/IInternalAdRegistration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/device/ads/IInternalAdRegistration;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/DeviceInfo;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    .line 388
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    .line 399
    new-instance v1, Lcom/amazon/device/ads/AdContainer$1$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/ads/AdContainer$1$1;-><init>(Lcom/amazon/device/ads/AdContainer$1;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 390
    :catch_0
    move-exception v1

    .line 392
    invoke-static {}, Lcom/amazon/device/ads/AdContainer;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not load URL (%s) into AdContainer: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/device/ads/AdContainer$1;->val$url:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 410
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/AdContainer;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not load URL (%s) into AdContainer."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/device/ads/AdContainer$1;->val$url:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
