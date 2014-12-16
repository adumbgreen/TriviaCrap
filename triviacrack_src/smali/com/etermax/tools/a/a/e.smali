.class public final enum Lcom/etermax/tools/a/a/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/tools/a/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/tools/a/a/e;

.field public static final enum b:Lcom/etermax/tools/a/a/e;

.field public static final enum c:Lcom/etermax/tools/a/a/e;

.field public static final enum d:Lcom/etermax/tools/a/a/e;

.field private static final synthetic e:[Lcom/etermax/tools/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/etermax/tools/a/a/e;

    const-string v1, "And"

    invoke-direct {v0, v1, v2}, Lcom/etermax/tools/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/tools/a/a/e;->a:Lcom/etermax/tools/a/a/e;

    .line 21
    new-instance v0, Lcom/etermax/tools/a/a/e;

    const-string v1, "BB"

    invoke-direct {v0, v1, v3}, Lcom/etermax/tools/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/tools/a/a/e;->b:Lcom/etermax/tools/a/a/e;

    .line 22
    new-instance v0, Lcom/etermax/tools/a/a/e;

    const-string v1, "Smg"

    invoke-direct {v0, v1, v4}, Lcom/etermax/tools/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/tools/a/a/e;->c:Lcom/etermax/tools/a/a/e;

    .line 23
    new-instance v0, Lcom/etermax/tools/a/a/e;

    const-string v1, "Amzn"

    invoke-direct {v0, v1, v5}, Lcom/etermax/tools/a/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/tools/a/a/e;->d:Lcom/etermax/tools/a/a/e;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/tools/a/a/e;

    sget-object v1, Lcom/etermax/tools/a/a/e;->a:Lcom/etermax/tools/a/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/tools/a/a/e;->b:Lcom/etermax/tools/a/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/tools/a/a/e;->c:Lcom/etermax/tools/a/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/tools/a/a/e;->d:Lcom/etermax/tools/a/a/e;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/tools/a/a/e;->e:[Lcom/etermax/tools/a/a/e;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/tools/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/etermax/tools/a/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/a/a/e;

    return-object v0
.end method

.method public static values()[Lcom/etermax/tools/a/a/e;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/etermax/tools/a/a/e;->e:[Lcom/etermax/tools/a/a/e;

    invoke-virtual {v0}, [Lcom/etermax/tools/a/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/tools/a/a/e;

    return-object v0
.end method
