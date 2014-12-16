.class synthetic Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/preguntados/ui/coupon/CouponActivity;
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->values()[Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    :try_start_0
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->COINS:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->EXTRA_SHOTS:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->LIVES_LIMIT:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->LIVES:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->b:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->UNLIMITED_LIVES:Lcom/etermax/preguntados/datasource/dto/enums/RewardType;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/RewardType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 72
    :goto_4
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->values()[Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->a:[I

    :try_start_5
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_WITHOUT_PRIZE:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID_IN_PROGRESS:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/etermax/preguntados/ui/coupon/CouponActivity$2;->a:[I

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID_SERIAL_COMPLETED:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    .line 113
    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
