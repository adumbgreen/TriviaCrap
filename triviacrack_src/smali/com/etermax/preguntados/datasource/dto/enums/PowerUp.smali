.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field public static final enum BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field public static final enum DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field public static final enum EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

.field public static final enum SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    const-string v1, "DOUBLE_CHANCE"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    const-string v1, "BOMB"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    const-string v1, "SWAP_QUESTION"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 8
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    const-string v1, "EXTRA_TIME"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->DOUBLE_CHANCE:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->BOMB:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->SWAP_QUESTION:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->EXTRA_TIME:Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;
    .locals 1
    .parameter

    .prologue
    .line 4
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/PowerUp;

    return-object v0
.end method
