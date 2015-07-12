.class public Lcom/etermax/gamescommon/promotion/PromotionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

.field mPreferences:Lcom/etermax/gamescommon/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLastTimeShown()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v1, "last_time_shown"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 105
    return-object v2
.end method

.method private hasChangedDay()Z
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 69
    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getLastTimeShown()Ljava/util/Calendar;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 76
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->setHasClosedPopup(Z)V

    move v0, v1

    .line 76
    goto :goto_0
.end method

.method private hasClosedPopup()Z
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v1, "has_closed_popup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setHasClosedPopup(Z)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v1, "has_closed_popup"

    invoke-virtual {v0, v1, p1}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method private setLastTimeShown()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v1, "last_time_shown"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    .line 110
    return-void
.end method


# virtual methods
.method public clearCurrentPromotion()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

    .line 35
    return-void
.end method

.method public getCurrentPromotion()Lcom/etermax/gamescommon/promotion/BasePromotion;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

    return-object v0
.end method

.method public getRemainingMilliseconds()J
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getCurrentPromotion()Lcom/etermax/gamescommon/promotion/BasePromotion;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotion;->getRemainingTime()J

    move-result-wide v0

    .line 117
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentPromoActive()Z
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->getRemainingMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mustShowDailyPromo()Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v4, "last_time_shown_daily"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;J)J

    move-result-wide v3

    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mPreferences:Lcom/etermax/gamescommon/e;

    const-string v2, "last_time_shown_daily"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public mustShowPromoPopup()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->isCurrentPromoActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->hasChangedDay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->hasClosedPopup()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    if-eqz v0, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->setLastTimeShown()V

    .line 46
    :cond_1
    return v0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPromoPopupClose()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->setHasClosedPopup(Z)V

    .line 123
    return-void
.end method

.method public setCurrentPromotion(Lcom/etermax/gamescommon/promotion/BasePromotion;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

    .line 31
    return-void
.end method

.method public showBuyFragment(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 54
    instance-of v0, p1, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mCurrentPromotion:Lcom/etermax/gamescommon/promotion/BasePromotion;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/promotion/BasePromotion;->getPromoBuyFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 56
    check-cast p1, Lcom/etermax/tools/navigation/BaseFragmentActivity;

    const-string v1, "promo_fragment"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 58
    :cond_0
    return-void
.end method
