.class public abstract Lcom/etermax/gamescommon/coupon/BaseCouponActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/coupon/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/etermax/gamescommon/coupon/c;

    invoke-direct {v0}, Lcom/etermax/gamescommon/coupon/c;-><init>()V

    return-object v0
.end method

.method protected a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 54
    :pswitch_0
    sget v0, Lcom/etermax/o;->invalid_coupon:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->enter_coupon_again:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 57
    :goto_0
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void

    .line 42
    :pswitch_1
    sget v0, Lcom/etermax/o;->coupon_used:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/etermax/o;->coupon_used_txt:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/etermax/o;->get_more_coupons:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_2
    sget v0, Lcom/etermax/o;->coupon_expired:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/etermax/o;->coupon_expired_txt:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/etermax/o;->get_more_coupons:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_3
    sget v0, Lcom/etermax/o;->you_are_late:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/etermax/o;->no_more_prizes_coupon:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/etermax/o;->get_more_coupons:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    goto/16 :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/etermax/k;->coupon_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/coupon/BaseCouponActivity;->setContentView(I)V

    .line 29
    return-void
.end method
