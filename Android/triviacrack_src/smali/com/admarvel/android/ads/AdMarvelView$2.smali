.class Lcom/admarvel/android/ads/AdMarvelView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelView;->a(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelAd;

.field final synthetic c:Lcom/admarvel/android/ads/AdMarvelView;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->c:Lcom/admarvel/android/ads/AdMarvelView;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->c:Lcom/admarvel/android/ads/AdMarvelView;

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$n;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->c:Lcom/admarvel/android/ads/AdMarvelView;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelView$2;->b:Lcom/admarvel/android/ads/AdMarvelAd;

    invoke-direct {v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelView$n;-><init>(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelView;Lcom/admarvel/android/ads/AdMarvelAd;)V

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
