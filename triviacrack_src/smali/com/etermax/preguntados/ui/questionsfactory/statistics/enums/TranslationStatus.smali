.class public final enum Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum DISABLED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum DISAPPROVED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum IMPORTED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum ONLINE:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum PENDING:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum PRE_PROD:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

.field public static final enum PROD:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->PENDING:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "DISAPPROVED"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->DISAPPROVED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->DISABLED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "PRE_PROD"

    invoke-direct {v0, v1, v6}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->PRE_PROD:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 8
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v7}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->PROD:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 9
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "ONLINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->ONLINE:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 10
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    const-string v1, "IMPORTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->IMPORTED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->PENDING:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->DISAPPROVED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->DISABLED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->PRE_PROD:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->PROD:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->ONLINE:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->IMPORTED:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->$VALUES:[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->$VALUES:[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationStatus;

    return-object v0
.end method
