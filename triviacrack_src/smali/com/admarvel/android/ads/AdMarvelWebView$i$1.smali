.class Lcom/admarvel/android/ads/AdMarvelWebView$i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$i;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;

.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelWebView$i;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$i;Lcom/admarvel/android/ads/AdMarvelWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView$i;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$j;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;

    invoke-direct {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$j;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
