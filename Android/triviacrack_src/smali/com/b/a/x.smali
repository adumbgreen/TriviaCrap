.class final enum Lcom/b/a/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/x;

.field public static final enum b:Lcom/b/a/x;

.field public static final enum c:Lcom/b/a/x;

.field private static final synthetic g:[Lcom/b/a/x;


# instance fields
.field final d:I

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v11, -0x1

    const/4 v13, 0x2

    const/4 v6, 0x1

    .line 114
    new-instance v0, Lcom/b/a/x;

    const-string v1, "MICRO"

    const/16 v4, 0x60

    const/16 v5, 0x60

    invoke-direct/range {v0 .. v5}, Lcom/b/a/x;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/b/a/x;->a:Lcom/b/a/x;

    .line 115
    new-instance v4, Lcom/b/a/x;

    const-string v5, "MINI"

    const/16 v8, 0x200

    const/16 v9, 0x180

    move v7, v6

    invoke-direct/range {v4 .. v9}, Lcom/b/a/x;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lcom/b/a/x;->b:Lcom/b/a/x;

    .line 116
    new-instance v7, Lcom/b/a/x;

    const-string v8, "FULL"

    move v9, v13

    move v10, v13

    move v12, v11

    invoke-direct/range {v7 .. v12}, Lcom/b/a/x;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/b/a/x;->c:Lcom/b/a/x;

    .line 113
    new-array v0, v3, [Lcom/b/a/x;

    sget-object v1, Lcom/b/a/x;->a:Lcom/b/a/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/x;->b:Lcom/b/a/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/x;->c:Lcom/b/a/x;

    aput-object v1, v0, v13

    sput-object v0, Lcom/b/a/x;->g:[Lcom/b/a/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput p3, p0, Lcom/b/a/x;->d:I

    .line 124
    iput p4, p0, Lcom/b/a/x;->e:I

    .line 125
    iput p5, p0, Lcom/b/a/x;->f:I

    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/x;
    .locals 1
    .parameter

    .prologue
    .line 113
    const-class v0, Lcom/b/a/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/x;

    return-object v0
.end method

.method public static values()[Lcom/b/a/x;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/b/a/x;->g:[Lcom/b/a/x;

    invoke-virtual {v0}, [Lcom/b/a/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/x;

    return-object v0
.end method
