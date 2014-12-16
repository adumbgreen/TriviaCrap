.class public Lcom/facebook/ads/internal/action/VideoAppAdAction;
.super Lcom/facebook/ads/internal/action/AppAdAction;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/ads/internal/action/VideoAppAdAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/action/AppAdAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 42
    iput-object p1, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->uri:Landroid/net/Uri;

    .line 44
    return-void
.end method

.method private static addMapToIntentExtras(Ljava/util/Map;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Map;)V
    .locals 4
    .parameter
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

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/action/VideoAppAdAction;->logAdClick(Landroid/content/Context;Landroid/net/Uri;)V

    .line 50
    iget-object v0, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->uri:Landroid/net/Uri;

    const-string v1, "video_url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->context:Landroid/content/Context;

    const-class v3, Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v2, "adUri"

    iget-object v3, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "adVideoPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v0, "adMarketUri"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/action/VideoAppAdAction;->getMarketUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-static {p1, v1}, Lcom/facebook/ads/internal/action/VideoAppAdAction;->addMapToIntentExtras(Ljava/util/Map;Landroid/content/Intent;)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/action/VideoAppAdAction;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    sget-object v1, Lcom/facebook/ads/internal/action/VideoAppAdAction;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start video"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
