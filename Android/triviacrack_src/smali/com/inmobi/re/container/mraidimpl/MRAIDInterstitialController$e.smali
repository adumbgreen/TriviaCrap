.class Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->dismissWebview()V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;Landroid/widget/RelativeLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->c:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->a:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->c:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-static {v1}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController$e;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 147
    return-void
.end method
