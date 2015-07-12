.class public abstract Lcom/facebook/ads/internal/action/AdAction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected logAdClick(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 38
    const-string v0, "native_click_report_url"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v1, Lcom/facebook/ads/internal/OpenUrlTask;

    invoke-direct {v1}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    const-string v0, "Click logged"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/AdUtilities;->displayDebugMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
