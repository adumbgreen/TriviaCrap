.class Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->createcalendarevent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

.field final synthetic val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;

    iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$date:Ljava/lang/String;

    iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    #getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$l;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$description:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView$l;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;

    #getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$k;

    iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;

    iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$date:Ljava/lang/String;

    iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$3;->val$description:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
