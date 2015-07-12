.class Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->startCountDown()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/promotion/BasePromotionFragment;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->onTimerFinish()V

    .line 95
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 96
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/BasePromotionFragment$1;->this$0:Lcom/etermax/gamescommon/promotion/BasePromotionFragment;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/gamescommon/promotion/BasePromotionFragment;->onTimerTick(J)V

    .line 90
    return-void
.end method
