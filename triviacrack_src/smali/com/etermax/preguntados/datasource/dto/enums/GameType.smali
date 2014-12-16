.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/GameType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/GameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameType;

.field public static final enum DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

.field public static final enum NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    const-string v1, "DUEL_GAME"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameType;

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

.method public static getByString(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameType;
    .locals 5
    .parameter

    .prologue
    .line 8
    invoke-static {}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->values()[Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 9
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    :goto_1
    return-object v0

    .line 8
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/GameType;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/GameType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/GameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    return-object v0
.end method
