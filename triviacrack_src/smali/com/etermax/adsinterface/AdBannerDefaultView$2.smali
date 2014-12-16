.class Lcom/etermax/adsinterface/AdBannerDefaultView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/AdBannerDefaultView;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/adsinterface/AdBannerDefaultView;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/AdBannerDefaultView;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$2;->a:Lcom/etermax/adsinterface/AdBannerDefaultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/etermax/adsinterface/AdBannerDefaultView$2;->a:Lcom/etermax/adsinterface/AdBannerDefaultView;

    invoke-static {v0}, Lcom/etermax/adsinterface/AdBannerDefaultView;->a(Lcom/etermax/adsinterface/AdBannerDefaultView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method
