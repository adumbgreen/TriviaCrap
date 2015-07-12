.class Lcom/mdotm/android/vast/VastInterstitialActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->h()Landroid/widget/RelativeLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/vast/VastInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->g()V

    .line 254
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$2;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->finish()V

    .line 256
    return-void
.end method
