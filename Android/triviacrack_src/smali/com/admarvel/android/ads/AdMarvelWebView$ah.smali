.class Lcom/admarvel/android/ads/AdMarvelWebView$ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    const-string v2, "Portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    const-string v2, "LandscapeLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    const-string v2, "PortraitUpSideDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    const-string v2, "LandscapeRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->b:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ah;->c:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0
.end method
