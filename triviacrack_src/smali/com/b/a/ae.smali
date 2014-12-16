.class public final enum Lcom/b/a/ae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/ae;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/ae;

.field public static final enum b:Lcom/b/a/ae;

.field public static final enum c:Lcom/b/a/ae;

.field private static final synthetic e:[Lcom/b/a/ae;


# instance fields
.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 619
    new-instance v0, Lcom/b/a/ae;

    const-string v1, "MEMORY"

    const v2, -0xff0100

    invoke-direct {v0, v1, v3, v2}, Lcom/b/a/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/ae;->a:Lcom/b/a/ae;

    .line 620
    new-instance v0, Lcom/b/a/ae;

    const-string v1, "DISK"

    const/16 v2, -0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/b/a/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    .line 621
    new-instance v0, Lcom/b/a/ae;

    const-string v1, "NETWORK"

    const/high16 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/ae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/ae;->c:Lcom/b/a/ae;

    .line 618
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/b/a/ae;

    sget-object v1, Lcom/b/a/ae;->a:Lcom/b/a/ae;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/ae;->b:Lcom/b/a/ae;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/ae;->c:Lcom/b/a/ae;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/a/ae;->e:[Lcom/b/a/ae;

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
    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 626
    iput p3, p0, Lcom/b/a/ae;->d:I

    .line 627
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 618
    const-class v0, Lcom/b/a/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/ae;

    return-object v0
.end method

.method public static values()[Lcom/b/a/ae;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lcom/b/a/ae;->e:[Lcom/b/a/ae;

    invoke-virtual {v0}, [Lcom/b/a/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/ae;

    return-object v0
.end method
