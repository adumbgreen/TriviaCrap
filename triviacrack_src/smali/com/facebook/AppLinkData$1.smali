.class final Lcom/facebook/AppLinkData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
.end annotation


# instance fields
.field final synthetic val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;


# direct methods
.method constructor <init>(Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/facebook/AppLinkData$1;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 101
    #calls: Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    invoke-static {v0}, Lcom/facebook/AppLinkData;->access$000(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v0

    .line 102
    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/AppLinkData;->getArguments()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/AppLinkData$1;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    invoke-interface {v1, v0}, Lcom/facebook/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/AppLinkData;)V

    .line 111
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    invoke-static {}, Lcom/facebook/AppLinkData;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
