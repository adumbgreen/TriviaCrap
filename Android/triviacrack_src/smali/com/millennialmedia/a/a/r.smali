.class public abstract enum Lcom/millennialmedia/a/a/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/a/a/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/millennialmedia/a/a/r;

.field public static final enum b:Lcom/millennialmedia/a/a/r;

.field private static final synthetic c:[Lcom/millennialmedia/a/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/millennialmedia/a/a/r$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/r$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/r;->a:Lcom/millennialmedia/a/a/r;

    .line 48
    new-instance v0, Lcom/millennialmedia/a/a/r$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/a/a/r$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/r;->b:Lcom/millennialmedia/a/a/r;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/millennialmedia/a/a/r;

    sget-object v1, Lcom/millennialmedia/a/a/r;->a:Lcom/millennialmedia/a/a/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/a/a/r;->b:Lcom/millennialmedia/a/a/r;

    aput-object v1, v0, v3

    sput-object v0, Lcom/millennialmedia/a/a/r;->c:[Lcom/millennialmedia/a/a/r;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/millennialmedia/a/a/r$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/a/a/r;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/millennialmedia/a/a/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/r;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/a/a/r;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/millennialmedia/a/a/r;->c:[Lcom/millennialmedia/a/a/r;

    invoke-virtual {v0}, [Lcom/millennialmedia/a/a/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/a/a/r;

    return-object v0
.end method
