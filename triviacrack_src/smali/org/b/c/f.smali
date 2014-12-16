.class public final enum Lorg/b/c/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/b/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/b/c/f;

.field public static final enum b:Lorg/b/c/f;

.field public static final enum c:Lorg/b/c/f;

.field public static final enum d:Lorg/b/c/f;

.field public static final enum e:Lorg/b/c/f;

.field public static final enum f:Lorg/b/c/f;

.field public static final enum g:Lorg/b/c/f;

.field private static final synthetic h:[Lorg/b/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lorg/b/c/f;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->a:Lorg/b/c/f;

    new-instance v0, Lorg/b/c/f;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->b:Lorg/b/c/f;

    new-instance v0, Lorg/b/c/f;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->c:Lorg/b/c/f;

    new-instance v0, Lorg/b/c/f;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, v6}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->d:Lorg/b/c/f;

    new-instance v0, Lorg/b/c/f;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v7}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->e:Lorg/b/c/f;

    new-instance v0, Lorg/b/c/f;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->f:Lorg/b/c/f;

    new-instance v0, Lorg/b/c/f;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/b/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/c/f;->g:Lorg/b/c/f;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/b/c/f;

    sget-object v1, Lorg/b/c/f;->a:Lorg/b/c/f;

    aput-object v1, v0, v3

    sget-object v1, Lorg/b/c/f;->b:Lorg/b/c/f;

    aput-object v1, v0, v4

    sget-object v1, Lorg/b/c/f;->c:Lorg/b/c/f;

    aput-object v1, v0, v5

    sget-object v1, Lorg/b/c/f;->d:Lorg/b/c/f;

    aput-object v1, v0, v6

    sget-object v1, Lorg/b/c/f;->e:Lorg/b/c/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/b/c/f;->g:Lorg/b/c/f;

    aput-object v2, v0, v1

    sput-object v0, Lorg/b/c/f;->h:[Lorg/b/c/f;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/b/c/f;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lorg/b/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/b/c/f;

    return-object v0
.end method

.method public static values()[Lorg/b/c/f;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/b/c/f;->h:[Lorg/b/c/f;

    invoke-virtual {v0}, [Lorg/b/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/c/f;

    return-object v0
.end method
