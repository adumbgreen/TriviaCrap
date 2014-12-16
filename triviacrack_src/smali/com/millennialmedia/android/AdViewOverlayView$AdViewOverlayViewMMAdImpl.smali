.class Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;
.super Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;-><init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V

    .line 336
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->m:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    .line 337
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Lcom/millennialmedia/android/AdViewOverlayView;)V

    .line 343
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lcom/millennialmedia/android/MMWebViewClient;
    .locals 4

    .prologue
    .line 354
    const-string v0, "AdViewOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning a client for user: OverlayWebViewClient, adimpl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v2, v2, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMAdImpl;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->a:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    new-instance v0, Lcom/millennialmedia/android/BannerExpandedWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->m:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/BannerExpandedWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->l:Lcom/millennialmedia/android/MMWebViewClient;

    .line 362
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/millennialmedia/android/InterstitialWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->m:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/InterstitialWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;->l:Lcom/millennialmedia/android/MMWebViewClient;

    goto :goto_0
.end method
