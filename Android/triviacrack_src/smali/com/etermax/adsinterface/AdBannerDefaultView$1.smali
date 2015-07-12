.class Lcom/etermax/adsinterface/AdBannerDefaultView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/etermax/adsinterface/AdBannerDefaultView;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/AdBannerDefaultView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    iput-object p2, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    invoke-static {v0}, Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Lcom/etermax/adsinterface/AdBannerDefaultView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    iget-object v1, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    iget-object v2, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Lcom/etermax/adsinterface/AdBannerDefaultView;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Lcom/etermax/adsinterface/AdBannerDefaultView;Landroid/view/View;)Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    iget-object v1, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    invoke-static {v1}, Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Lcom/etermax/adsinterface/AdBannerDefaultView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/adsinterface/AdBannerDefaultView;->addView(Landroid/view/View;II)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$1;->b:Lcom/etermax/adsinterface/AdBannerDefaultView;

    invoke-static {v0}, Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Lcom/etermax/adsinterface/AdBannerDefaultView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    return-void
.end method
