.class Lcom/smartadserver/android/library/SASInterstitialView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView;->b(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/smartadserver/android/library/SASInterstitialView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/SASInterstitialView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    iput-object p2, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    invoke-static {}, Lcom/smartadserver/android/library/SASInterstitialView;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REMOVE INTERSTITIAL LOADER VIEW"

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 253
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$3;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 255
    :cond_0
    return-void
.end method
