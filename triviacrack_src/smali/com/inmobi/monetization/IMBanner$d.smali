.class Lcom/inmobi/monetization/IMBanner$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMBanner;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMErrorCode;

.field final synthetic b:Lcom/inmobi/monetization/IMBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner$d;->b:Lcom/inmobi/monetization/IMBanner;

    iput-object p2, p0, Lcom/inmobi/monetization/IMBanner$d;->a:Lcom/inmobi/monetization/IMErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$d;->b:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$d;->b:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$d;->b:Lcom/inmobi/monetization/IMBanner;

    iget-object v2, p0, Lcom/inmobi/monetization/IMBanner$d;->a:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 186
    :cond_0
    return-void
.end method
