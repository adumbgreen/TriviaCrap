.class public final enum Lcom/etermax/chat/a/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/chat/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/chat/a/i;

.field public static final enum b:Lcom/etermax/chat/a/i;

.field public static final enum c:Lcom/etermax/chat/a/i;

.field public static final enum d:Lcom/etermax/chat/a/i;

.field public static final enum e:Lcom/etermax/chat/a/i;

.field public static final enum f:Lcom/etermax/chat/a/i;

.field public static final enum g:Lcom/etermax/chat/a/i;

.field public static final enum h:Lcom/etermax/chat/a/i;

.field public static final enum i:Lcom/etermax/chat/a/i;

.field private static final synthetic j:[Lcom/etermax/chat/a/i;


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
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->a:Lcom/etermax/chat/a/i;

    .line 5
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->b:Lcom/etermax/chat/a/i;

    .line 6
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->c:Lcom/etermax/chat/a/i;

    .line 7
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v6}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->d:Lcom/etermax/chat/a/i;

    .line 8
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v7}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->e:Lcom/etermax/chat/a/i;

    .line 9
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "LINK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->f:Lcom/etermax/chat/a/i;

    .line 10
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "FILE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->g:Lcom/etermax/chat/a/i;

    .line 11
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->h:Lcom/etermax/chat/a/i;

    .line 12
    new-instance v0, Lcom/etermax/chat/a/i;

    const-string v1, "DATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/i;->i:Lcom/etermax/chat/a/i;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/etermax/chat/a/i;

    sget-object v1, Lcom/etermax/chat/a/i;->a:Lcom/etermax/chat/a/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/chat/a/i;->b:Lcom/etermax/chat/a/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/chat/a/i;->c:Lcom/etermax/chat/a/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/chat/a/i;->d:Lcom/etermax/chat/a/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/etermax/chat/a/i;->e:Lcom/etermax/chat/a/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/chat/a/i;->f:Lcom/etermax/chat/a/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/etermax/chat/a/i;->g:Lcom/etermax/chat/a/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/etermax/chat/a/i;->h:Lcom/etermax/chat/a/i;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/etermax/chat/a/i;->i:Lcom/etermax/chat/a/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/chat/a/i;->j:[Lcom/etermax/chat/a/i;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/chat/a/i;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/chat/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/i;

    return-object v0
.end method

.method public static values()[Lcom/etermax/chat/a/i;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/chat/a/i;->j:[Lcom/etermax/chat/a/i;

    invoke-virtual {v0}, [Lcom/etermax/chat/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/chat/a/i;

    return-object v0
.end method
