.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

.field public static final enum CODE_VALID:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

.field public static final enum CODE_VALID_IN_PROGRESS:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

.field public static final enum CODE_VALID_SERIAL_COMPLETED:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

.field public static final enum CODE_WITHOUT_PRIZE:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    const-string v1, "CODE_WITHOUT_PRIZE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_WITHOUT_PRIZE:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    const-string v1, "CODE_VALID_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID_IN_PROGRESS:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    const-string v1, "CODE_VALID_SERIAL_COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID_SERIAL_COMPLETED:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    .line 8
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    const-string v1, "CODE_VALID"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_WITHOUT_PRIZE:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID_IN_PROGRESS:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID_SERIAL_COMPLETED:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->CODE_VALID:Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/CouponResponse;

    return-object v0
.end method
