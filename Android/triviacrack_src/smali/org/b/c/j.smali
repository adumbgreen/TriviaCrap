.class public final enum Lorg/b/c/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/b/c/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/b/c/j;

.field public static final enum b:Lorg/b/c/j;

.field public static final enum c:Lorg/b/c/j;

.field public static final enum d:Lorg/b/c/j;

.field public static final enum e:Lorg/b/c/j;

.field private static final synthetic g:[Lorg/b/c/j;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 436
    new-instance v0, Lorg/b/c/j;

    const-string v1, "INFORMATIONAL"

    invoke-direct {v0, v1, v7, v3}, Lorg/b/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/b/c/j;->a:Lorg/b/c/j;

    .line 437
    new-instance v0, Lorg/b/c/j;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v3, v4}, Lorg/b/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/b/c/j;->b:Lorg/b/c/j;

    .line 438
    new-instance v0, Lorg/b/c/j;

    const-string v1, "REDIRECTION"

    invoke-direct {v0, v1, v4, v5}, Lorg/b/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/b/c/j;->c:Lorg/b/c/j;

    .line 439
    new-instance v0, Lorg/b/c/j;

    const-string v1, "CLIENT_ERROR"

    invoke-direct {v0, v1, v5, v6}, Lorg/b/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/b/c/j;->d:Lorg/b/c/j;

    .line 440
    new-instance v0, Lorg/b/c/j;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/b/c/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/b/c/j;->e:Lorg/b/c/j;

    .line 434
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/b/c/j;

    sget-object v1, Lorg/b/c/j;->a:Lorg/b/c/j;

    aput-object v1, v0, v7

    sget-object v1, Lorg/b/c/j;->b:Lorg/b/c/j;

    aput-object v1, v0, v3

    sget-object v1, Lorg/b/c/j;->c:Lorg/b/c/j;

    aput-object v1, v0, v4

    sget-object v1, Lorg/b/c/j;->d:Lorg/b/c/j;

    aput-object v1, v0, v5

    sget-object v1, Lorg/b/c/j;->e:Lorg/b/c/j;

    aput-object v1, v0, v6

    sput-object v0, Lorg/b/c/j;->g:[Lorg/b/c/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 445
    iput p3, p0, Lorg/b/c/j;->f:I

    .line 446
    return-void
.end method

.method static synthetic a(Lorg/b/c/i;)Lorg/b/c/j;
    .locals 1
    .parameter

    .prologue
    .line 434
    invoke-static {p0}, Lorg/b/c/j;->b(Lorg/b/c/i;)Lorg/b/c/j;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/b/c/i;)Lorg/b/c/j;
    .locals 6
    .parameter

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/b/c/i;->a()I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    .line 457
    invoke-static {}, Lorg/b/c/j;->values()[Lorg/b/c/j;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 458
    iget v5, v4, Lorg/b/c/j;->f:I

    if-ne v5, v1, :cond_0

    .line 459
    return-object v4

    .line 457
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching constant for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/b/c/j;
    .locals 1
    .parameter

    .prologue
    .line 434
    const-class v0, Lorg/b/c/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/b/c/j;

    return-object v0
.end method

.method public static values()[Lorg/b/c/j;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lorg/b/c/j;->g:[Lorg/b/c/j;

    invoke-virtual {v0}, [Lorg/b/c/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/c/j;

    return-object v0
.end method
