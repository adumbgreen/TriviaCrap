.class public final enum Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum DISLIKED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum FUTURE_CHANGES:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum MISSPELLED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum OFFENSIVE_CONTENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum OTHER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum REPEATED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum SPAM:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum VERY_SPECIFIC:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum WRONG_ANSWER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum WRONG_CATEGORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum WRONG_LANGUAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum WRONG_REGION:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

.field public static final enum WRONG_SPELLING_OR_GRAMMAR:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;


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
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "REPEATED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->REPEATED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "WRONG_SPELLING_OR_GRAMMAR"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_SPELLING_OR_GRAMMAR:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "OFFENSIVE_CONTENT"

    invoke-direct {v0, v1, v5}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OFFENSIVE_CONTENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 7
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "WRONG_CATEGORY"

    invoke-direct {v0, v1, v6}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_CATEGORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 8
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "WRONG_REGION"

    invoke-direct {v0, v1, v7}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_REGION:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 9
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "WRONG_ANSWER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_ANSWER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 10
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "MISSPELLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->MISSPELLED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 11
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OTHER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 12
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "DISLIKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->DISLIKED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 13
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "VERY_SPECIFIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->VERY_SPECIFIC:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 14
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "WRONG_LANGUAGE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_LANGUAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 15
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "FUTURE_CHANGES"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->FUTURE_CHANGES:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 16
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    const-string v1, "SPAM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->SPAM:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->REPEATED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_SPELLING_OR_GRAMMAR:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OFFENSIVE_CONTENT:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_CATEGORY:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_REGION:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_ANSWER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->MISSPELLED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->OTHER:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->DISLIKED:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->VERY_SPECIFIC:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->WRONG_LANGUAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->FUTURE_CHANGES:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->SPAM:Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->$VALUES:[Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/datasource/dto/enums/QuestionDisapprovalReason;

    return-object v0
.end method
