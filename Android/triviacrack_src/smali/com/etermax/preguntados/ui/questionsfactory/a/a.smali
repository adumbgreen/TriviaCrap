.class public final enum Lcom/etermax/preguntados/ui/questionsfactory/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum b:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum c:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum d:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum e:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum f:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum g:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum h:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum i:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum j:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field public static final enum k:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

.field private static final synthetic n:[Lcom/etermax/preguntados/ui/questionsfactory/a/a;


# instance fields
.field private final l:Lcom/etermax/gamescommon/language/Language;

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "ES"

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->ES:Lcom/etermax/gamescommon/language/Language;

    sget v3, Lcom/etermax/h;->country_es:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 9
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "EN"

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    sget v3, Lcom/etermax/h;->country_us:I

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->b:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 10
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "FR"

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->FR:Lcom/etermax/gamescommon/language/Language;

    sget v3, Lcom/etermax/h;->country_fr:I

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->c:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 11
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "DE"

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->DE:Lcom/etermax/gamescommon/language/Language;

    sget v3, Lcom/etermax/h;->country_de:I

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->d:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 12
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "IT"

    sget-object v2, Lcom/etermax/gamescommon/language/Language;->IT:Lcom/etermax/gamescommon/language/Language;

    sget v3, Lcom/etermax/h;->country_it:I

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->e:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 13
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "CA"

    const/4 v2, 0x5

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->CA:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->language_flag_catalan:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 14
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "PT"

    const/4 v2, 0x6

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->country_pt:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->g:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 15
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "RU"

    const/4 v2, 0x7

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->RU:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->country_ru:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->h:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 16
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "NL"

    const/16 v2, 0x8

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->NL:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->country_nl:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->i:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 17
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "JA"

    const/16 v2, 0x9

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->JA:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->country_jp:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->j:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 18
    new-instance v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    const-string v1, "AR"

    const/16 v2, 0xa

    sget-object v3, Lcom/etermax/gamescommon/language/Language;->AR:Lcom/etermax/gamescommon/language/Language;

    sget v4, Lcom/etermax/h;->country_sa:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;-><init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->k:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    .line 6
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->b:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->c:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->d:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->e:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->f:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->g:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->h:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->i:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->j:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->k:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->n:[Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/etermax/gamescommon/language/Language;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/language/Language;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->l:Lcom/etermax/gamescommon/language/Language;

    .line 33
    iput p4, p0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->m:I

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;
    .locals 6
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->values()[Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 39
    iget-object v5, v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->l:Lcom/etermax/gamescommon/language/Language;

    if-ne v5, v2, :cond_0

    .line 43
    :goto_1
    return-object v0

    .line 38
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->b()Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v0

    goto :goto_1
.end method

.method private static b()Lcom/etermax/preguntados/ui/questionsfactory/a/a;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->b:Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/ui/questionsfactory/a/a;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->n:[Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/ui/questionsfactory/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->m:I

    return v0
.end method
