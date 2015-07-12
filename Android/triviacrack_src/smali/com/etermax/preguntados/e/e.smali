.class public final enum Lcom/etermax/preguntados/e/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/e/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/e/e;

.field public static final enum b:Lcom/etermax/preguntados/e/e;

.field public static final enum c:Lcom/etermax/preguntados/e/e;

.field private static final synthetic d:[Lcom/etermax/preguntados/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/preguntados/e/e;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v2}, Lcom/etermax/preguntados/e/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/e/e;->a:Lcom/etermax/preguntados/e/e;

    .line 5
    new-instance v0, Lcom/etermax/preguntados/e/e;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/etermax/preguntados/e/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    .line 6
    new-instance v0, Lcom/etermax/preguntados/e/e;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/etermax/preguntados/e/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/preguntados/e/e;->c:Lcom/etermax/preguntados/e/e;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/preguntados/e/e;

    sget-object v1, Lcom/etermax/preguntados/e/e;->a:Lcom/etermax/preguntados/e/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/preguntados/e/e;->c:Lcom/etermax/preguntados/e/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/etermax/preguntados/e/e;->d:[Lcom/etermax/preguntados/e/e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/e/e;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/preguntados/e/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/e/e;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/preguntados/e/e;->d:[Lcom/etermax/preguntados/e/e;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/e/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/e/e;

    return-object v0
.end method
