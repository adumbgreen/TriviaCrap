.class Lcom/inmobi/monetization/IMBanner$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMBanner;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner$g;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$g;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$g;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$g;->a:Lcom/inmobi/monetization/IMBanner;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 444
    :cond_0
    return-void
.end method
