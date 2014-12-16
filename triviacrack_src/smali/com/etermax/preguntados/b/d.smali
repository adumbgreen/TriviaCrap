.class public final enum Lcom/etermax/preguntados/b/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/b/d;",
        ">;",
        "Lcom/etermax/preguntados/b/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/b/d;

.field public static final enum b:Lcom/etermax/preguntados/b/d;

.field public static final enum c:Lcom/etermax/preguntados/b/d;

.field public static final enum d:Lcom/etermax/preguntados/b/d;

.field public static final enum e:Lcom/etermax/preguntados/b/d;

.field public static final enum f:Lcom/etermax/preguntados/b/d;

.field private static final synthetic i:[Lcom/etermax/preguntados/b/d;


# instance fields
.field private g:Ljava/lang/String;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/etermax/preguntados/b/d;

    const-string v1, "SCIENCE"

    const-string v3, "ciencia"

    const-wide/16 v4, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/preguntados/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/etermax/preguntados/b/d;->a:Lcom/etermax/preguntados/b/d;

    .line 12
    new-instance v3, Lcom/etermax/preguntados/b/d;

    const-string v4, "ART"

    const-string v6, "arte"

    const-wide/16 v7, 0x5

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/etermax/preguntados/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v3, Lcom/etermax/preguntados/b/d;->b:Lcom/etermax/preguntados/b/d;

    .line 13
    new-instance v3, Lcom/etermax/preguntados/b/d;

    const-string v4, "SPORTS"

    const-string v6, "deportes"

    const-wide/16 v7, 0x6

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/etermax/preguntados/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v3, Lcom/etermax/preguntados/b/d;->c:Lcom/etermax/preguntados/b/d;

    .line 14
    new-instance v3, Lcom/etermax/preguntados/b/d;

    const-string v4, "ENTERTAINMENT"

    const-string v6, "entretenimiento"

    const-wide/16 v7, 0x7

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/etermax/preguntados/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v3, Lcom/etermax/preguntados/b/d;->d:Lcom/etermax/preguntados/b/d;

    .line 15
    new-instance v3, Lcom/etermax/preguntados/b/d;

    const-string v4, "HISTORY"

    const-string v6, "historia"

    const-wide/16 v7, 0x8

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/etermax/preguntados/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v3, Lcom/etermax/preguntados/b/d;->e:Lcom/etermax/preguntados/b/d;

    .line 16
    new-instance v3, Lcom/etermax/preguntados/b/d;

    const-string v4, "GEOGRAPHY"

    const/4 v5, 0x5

    const-string v6, "geografia"

    const-wide/16 v7, 0x9

    invoke-direct/range {v3 .. v8}, Lcom/etermax/preguntados/b/d;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v3, Lcom/etermax/preguntados/b/d;->f:Lcom/etermax/preguntados/b/d;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/preguntados/b/d;

    sget-object v1, Lcom/etermax/preguntados/b/d;->a:Lcom/etermax/preguntados/b/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/b/d;->b:Lcom/etermax/preguntados/b/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/etermax/preguntados/b/d;->c:Lcom/etermax/preguntados/b/d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/etermax/preguntados/b/d;->d:Lcom/etermax/preguntados/b/d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/etermax/preguntados/b/d;->e:Lcom/etermax/preguntados/b/d;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/b/d;->f:Lcom/etermax/preguntados/b/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/b/d;->i:[Lcom/etermax/preguntados/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/etermax/preguntados/b/d;->g:Ljava/lang/String;

    .line 26
    iput-wide p4, p0, Lcom/etermax/preguntados/b/d;->h:J

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/b/d;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/preguntados/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/b/d;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/b/d;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/preguntados/b/d;->i:[Lcom/etermax/preguntados/b/d;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/b/d;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/b/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/etermax/gamescommon/resources/b;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    return-object v0
.end method
