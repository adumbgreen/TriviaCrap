.class Lcom/mopub/mobileads/MraidActivity$3;
.super Lcom/mopub/mobileads/MraidView$BaseMraidListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidActivity;->getAdView()Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/MraidActivity;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-direct {p0}, Lcom/mopub/mobileads/MraidView$BaseMraidListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ViewState;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->a(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/k;

    invoke-virtual {v1}, Lcom/mopub/mobileads/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->finish()V

    .line 111
    return-void
.end method

.method public onOpen(Lcom/mopub/mobileads/MraidView;)V
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MraidActivity;->a()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.click"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/p;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 106
    return-void
.end method

.method public onReady(Lcom/mopub/mobileads/MraidView;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/MraidActivity;->a(Lcom/mopub/mobileads/MraidActivity;)Lcom/mopub/mobileads/MraidView;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/k;

    invoke-virtual {v1}, Lcom/mopub/mobileads/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity$3;->a:Lcom/mopub/mobileads/MraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidActivity;->b()V

    .line 101
    return-void
.end method
