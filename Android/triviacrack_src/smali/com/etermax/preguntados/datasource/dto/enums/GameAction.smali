.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/GameAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/GameAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

.field public static final enum REJECT:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

.field public static final enum RESIGN:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    const-string v1, "REJECT"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->REJECT:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    const-string v1, "RESIGN"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->RESIGN:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->REJECT:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->RESIGN:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameAction;
    .locals 1
    .parameter

    .prologue
    .line 4
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/GameAction;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    return-object v0
.end method
