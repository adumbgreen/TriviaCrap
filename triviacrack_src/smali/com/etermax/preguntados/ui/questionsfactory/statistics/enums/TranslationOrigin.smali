.class public final enum Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

.field public static final enum ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

.field public static final enum TRANSLATION:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    const-string v1, "TRANSLATION"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->TRANSLATION:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->ORIGINAL:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->TRANSLATION:Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->$VALUES:[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->$VALUES:[Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/questionsfactory/statistics/enums/TranslationOrigin;

    return-object v0
.end method
