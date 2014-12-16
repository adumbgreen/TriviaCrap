.class public Lcom/etermax/preguntados/ui/coupon/CouponActivity;
.super Lcom/etermax/gamescommon/coupon/BaseCouponActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;-><init>()V

    .line 90
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/CouponDTO;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getRewardType()Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, ""

    .line 132
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v0, ""

    .line 113
    sget-object v1, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getRewardType()Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    :goto_1
    if-eqz p2, :cond_1

    .line 131
    sget v1, Lcom/etermax/o;->received_x_coupons:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getTotalSeriatedCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getRewardQuantity()I

    move-result v0

    sget v1, Lcom/etermax/o;->coin_plural:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->coin:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 118
    :pswitch_1
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getRewardQuantity()I

    move-result v0

    sget v1, Lcom/etermax/o;->spins_plural:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->spins:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :pswitch_2
    sget v0, Lcom/etermax/o;->extension_lives_limit:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 124
    :pswitch_3
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getRewardQuantity()I

    move-result v0

    sget v1, Lcom/etermax/o;->life_plural:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->life:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 127
    :pswitch_4
    sget v0, Lcom/etermax/o;->endless_lives:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 132
    :cond_1
    sget v1, Lcom/etermax/o;->received_x_deal:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/CouponDTO;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCodeResponse()Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    move-result-object v1

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget-object v1, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->a:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCodeResponse()Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 93
    :goto_1
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "case_success"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_0
    const-string v0, "complete"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    sget v0, Lcom/etermax/o;->congrats:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(Lcom/etermax/preguntados/datasource/dto/CouponDTO;Z)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto :goto_1

    .line 79
    :pswitch_1
    sget v1, Lcom/etermax/o;->thanks_for_participating:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/etermax/o;->coupon_no_prize:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/etermax/o;->get_more_coupons:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto :goto_1

    .line 83
    :pswitch_2
    sget v1, Lcom/etermax/o;->congrats:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->b(Lcom/etermax/preguntados/datasource/dto/CouponDTO;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto :goto_1

    .line 86
    :pswitch_3
    const-string v0, "complete"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    sget v0, Lcom/etermax/o;->congrats:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v4}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(Lcom/etermax/preguntados/datasource/dto/CouponDTO;Z)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v2}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto/16 :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/coupon/CouponActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/coupon/CouponActivity;Lcom/etermax/preguntados/datasource/dto/CouponDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(Lcom/etermax/preguntados/datasource/dto/CouponDTO;)V

    return-void
.end method

.method private b(Lcom/etermax/preguntados/datasource/dto/CouponDTO;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 101
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCurrentSeriatedCode()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/m;->x_coupons_deal:I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCurrentSeriatedCode()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCurrentSeriatedCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCampaignName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/etermax/o;->x_receive_prize:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getTotalSeriatedCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCurrentSeriatedCode()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/m;->x_coupons_deal:I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCurrentSeriatedCode()I

    move-result v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/CouponDTO;->getCampaignName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;-><init>(Lcom/etermax/preguntados/ui/coupon/CouponActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->a(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->b(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const-string v0, "complete"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 143
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->finish()V

    .line 146
    :cond_0
    return-void
.end method
