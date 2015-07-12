.class public final enum Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field public static final enum ANGRY_MIX:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field public static final enum ANGRY_WORDS:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field public static final enum AWORDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field public static final enum BINGO_CRACK:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field public static final enum OTHER:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field public static final enum TRIVIA_CRACK:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    const-string v1, "ANGRY_WORDS"

    invoke-direct {v0, v1, v3}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->ANGRY_WORDS:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    .line 19
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    const-string v1, "AWORDED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->AWORDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    .line 20
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    const-string v1, "ANGRY_MIX"

    invoke-direct {v0, v1, v5}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->ANGRY_MIX:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    .line 21
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    const-string v1, "BINGO_CRACK"

    invoke-direct {v0, v1, v6}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->BINGO_CRACK:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    .line 22
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    const-string v1, "TRIVIA_CRACK"

    invoke-direct {v0, v1, v7}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->TRIVIA_CRACK:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    .line 23
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->OTHER:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->ANGRY_WORDS:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->AWORDED:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->ANGRY_MIX:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->BINGO_CRACK:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->TRIVIA_CRACK:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->OTHER:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->$VALUES:[Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    return-object v0
.end method
