.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

.field public static final enum IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

.field public static final enum NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

.field public static final enum SOUND:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

.field public static final enum VIDEO:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->VIDEO:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    const-string v1, "SOUND"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->SOUND:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->VIDEO:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->SOUND:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    return-object v0
.end method
