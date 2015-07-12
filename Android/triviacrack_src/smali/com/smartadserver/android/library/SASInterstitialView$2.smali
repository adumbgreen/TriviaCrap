.class Lcom/smartadserver/android/library/SASInterstitialView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/SASInterstitialView;->a(Landroid/view/View;)V
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
    .line 230
    iput-object p1, p0, Lcom/smartadserver/android/library/SASInterstitialView$2;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    iput-object p2, p0, Lcom/smartadserver/android/library/SASInterstitialView$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/smartadserver/android/library/SASInterstitialView$2;->b:Lcom/smartadserver/android/library/SASInterstitialView;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/SASInterstitialView;->getExpandParentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$2;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/smartadserver/android/library/SASInterstitialView$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 236
    :cond_0
    return-void
.end method
