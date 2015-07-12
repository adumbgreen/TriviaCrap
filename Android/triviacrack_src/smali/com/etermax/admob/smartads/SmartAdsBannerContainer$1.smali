.class Lcom/etermax/admob/smartads/SmartAdsBannerContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/smartads/SmartAdsBannerContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

.field final synthetic val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/etermax/admob/smartads/SmartAdsBannerContainer;Lcom/google/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$1;->this$0:Lcom/etermax/admob/smartads/SmartAdsBannerContainer;

    iput-object p2, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    const-string v0, "admob ads"

    const-string v1, "SmartAdsBannerContainer - onClick"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsBannerContainer$1;->val$listener:Lcom/google/ads/mediation/customevent/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/customevent/CustomEventBannerListener;->onClick()V

    .line 57
    return-void
.end method
