.class public Lcom/facebook/ads/internal/action/AdActionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AD_ACTION_APP_AD:Ljava/lang/String; = "store"

.field private static final AD_ACTION_LINK_AD:Ljava/lang/String; = "open_link"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "video_url"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    const-string v2, "store"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Lcom/facebook/ads/internal/action/VideoAppAdAction;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/VideoAppAdAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/action/AppAdAction;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/AppAdAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 42
    :cond_1
    const-string v1, "open_link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lcom/facebook/ads/internal/action/LinkAdAction;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/LinkAdAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
