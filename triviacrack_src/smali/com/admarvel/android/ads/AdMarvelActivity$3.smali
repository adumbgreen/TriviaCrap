.class Lcom/admarvel/android/ads/AdMarvelActivity$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admarvel/android/ads/AdMarvelActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelActivity;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity$g;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b()V

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a(Lcom/admarvel/android/ads/AdMarvelActivity$g;)V

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->b(Lcom/admarvel/android/ads/AdMarvelActivity;)I

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admarvel/android/ads/i;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity;->c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    iget-object v2, v2, Lcom/admarvel/android/ads/AdMarvelActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->d(Lcom/admarvel/android/ads/AdMarvelActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$3;->a:Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nullpointer exception occured in close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_1
.end method
