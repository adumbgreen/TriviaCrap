.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

.field public static final enum ACTIVE:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

.field public static final enum ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

.field public static final enum PENDING_APPROVAL:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    const-string v1, "PENDING_APPROVAL"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->PENDING_APPROVAL:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->ACTIVE:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->PENDING_APPROVAL:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->ENDED:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->ACTIVE:Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;
    .locals 1
    .parameter

    .prologue
    .line 4
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameStatus;

    return-object v0
.end method
