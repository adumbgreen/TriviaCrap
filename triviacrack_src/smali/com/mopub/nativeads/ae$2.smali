.class Lcom/mopub/nativeads/ae$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/DownloadTask$DownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/ae;
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/nativeads/ae;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mopub/nativeads/ae$2;->a:Lcom/mopub/nativeads/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Lcom/mopub/common/DownloadResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/ae$2;->a:Lcom/mopub/nativeads/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mopub/nativeads/ae;->a(Lcom/mopub/nativeads/ae;Lcom/mopub/common/DownloadTask;)Lcom/mopub/common/DownloadTask;

    .line 137
    invoke-virtual {p2}, Lcom/mopub/common/DownloadResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 138
    const-string v0, "Invalid positioning download response "

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/nativeads/ae$2;->a:Lcom/mopub/nativeads/ae;

    invoke-static {v0}, Lcom/mopub/nativeads/ae;->b(Lcom/mopub/nativeads/ae;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p2}, Lcom/mopub/common/HttpResponses;->asResponseString(Lcom/mopub/common/DownloadResponse;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/mopub/nativeads/ae$2;->a:Lcom/mopub/nativeads/ae;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/ae;->a(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/mopub/nativeads/ae$2;->a:Lcom/mopub/nativeads/ae;

    invoke-static {v1, v0}, Lcom/mopub/nativeads/ae;->a(Lcom/mopub/nativeads/ae;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "Error parsing JSON: "

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object v0, p0, Lcom/mopub/nativeads/ae$2;->a:Lcom/mopub/nativeads/ae;

    invoke-static {v0}, Lcom/mopub/nativeads/ae;->b(Lcom/mopub/nativeads/ae;)V

    goto :goto_0
.end method
