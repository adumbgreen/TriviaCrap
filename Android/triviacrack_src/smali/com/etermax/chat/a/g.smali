.class public final enum Lcom/etermax/chat/a/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/chat/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/chat/a/g;

.field public static final enum b:Lcom/etermax/chat/a/g;

.field public static final enum c:Lcom/etermax/chat/a/g;

.field public static final enum d:Lcom/etermax/chat/a/g;

.field private static final synthetic e:[Lcom/etermax/chat/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/etermax/chat/a/g;

    const-string v1, "FIRST_IN_GROUP"

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/g;->a:Lcom/etermax/chat/a/g;

    new-instance v0, Lcom/etermax/chat/a/g;

    const-string v1, "MIDDLE_IN_GROUP"

    invoke-direct {v0, v1, v3}, Lcom/etermax/chat/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/g;->b:Lcom/etermax/chat/a/g;

    new-instance v0, Lcom/etermax/chat/a/g;

    const-string v1, "LAST_IN_GROUP"

    invoke-direct {v0, v1, v4}, Lcom/etermax/chat/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    new-instance v0, Lcom/etermax/chat/a/g;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v5}, Lcom/etermax/chat/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/etermax/chat/a/g;

    sget-object v1, Lcom/etermax/chat/a/g;->a:Lcom/etermax/chat/a/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/chat/a/g;->b:Lcom/etermax/chat/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/chat/a/g;->e:[Lcom/etermax/chat/a/g;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/chat/a/g;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/etermax/chat/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/g;

    return-object v0
.end method

.method public static values()[Lcom/etermax/chat/a/g;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/etermax/chat/a/g;->e:[Lcom/etermax/chat/a/g;

    invoke-virtual {v0}, [Lcom/etermax/chat/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/chat/a/g;

    return-object v0
.end method
