.class Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/coupon/CouponActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/preguntados/datasource/dto/CouponDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/preguntados/ui/coupon/CouponActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/coupon/CouponActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->b:Lcom/etermax/preguntados/ui/coupon/CouponActivity;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->b()Lcom/etermax/preguntados/datasource/dto/CouponDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/preguntados/datasource/dto/CouponDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->b:Lcom/etermax/preguntados/ui/coupon/CouponActivity;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(Lcom/etermax/preguntados/ui/coupon/CouponActivity;Lcom/etermax/preguntados/datasource/dto/CouponDTO;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    instance-of v0, p2, Lcom/etermax/tools/a/c/b;

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->b:Lcom/etermax/preguntados/ui/coupon/CouponActivity;

    move-object v0, p2

    check-cast v0, Lcom/etermax/tools/a/c/b;

    invoke-virtual {v0}, Lcom/etermax/tools/a/c/b;->c()I

    move-result v0

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a(Lcom/etermax/preguntados/ui/coupon/CouponActivity;I)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->b(Z)V

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 60
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/CouponDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/preguntados/datasource/dto/CouponDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/CouponDTO;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/CodeDTO;

    invoke-direct {v0}, Lcom/etermax/preguntados/datasource/dto/CodeDTO;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/CodeDTO;->setToken(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$1;->b:Lcom/etermax/preguntados/ui/coupon/CouponActivity;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/coupon/CouponActivity;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/CodeDTO;)Lcom/etermax/preguntados/datasource/dto/CouponDTO;

    move-result-object v0

    return-object v0
.end method
