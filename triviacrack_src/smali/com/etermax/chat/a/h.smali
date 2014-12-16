.class public final enum Lcom/etermax/chat/a/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/chat/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/chat/a/h;

.field public static final enum b:Lcom/etermax/chat/a/h;

.field public static final enum c:Lcom/etermax/chat/a/h;

.field public static final enum d:Lcom/etermax/chat/a/h;

.field public static final enum e:Lcom/etermax/chat/a/h;

.field private static final synthetic f:[Lcom/etermax/chat/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/etermax/chat/a/h;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v2}, Lcom/etermax/chat/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/h;->a:Lcom/etermax/chat/a/h;

    .line 5
    new-instance v0, Lcom/etermax/chat/a/h;

    const-string v1, "SENDING_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/etermax/chat/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/h;->b:Lcom/etermax/chat/a/h;

    .line 6
    new-instance v0, Lcom/etermax/chat/a/h;

    const-string v1, "SENT_UNREAD"

    invoke-direct {v0, v1, v4}, Lcom/etermax/chat/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/h;->c:Lcom/etermax/chat/a/h;

    .line 7
    new-instance v0, Lcom/etermax/chat/a/h;

    const-string v1, "SENT_READED"

    invoke-direct {v0, v1, v5}, Lcom/etermax/chat/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/h;->d:Lcom/etermax/chat/a/h;

    .line 8
    new-instance v0, Lcom/etermax/chat/a/h;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v6}, Lcom/etermax/chat/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/chat/a/h;->e:Lcom/etermax/chat/a/h;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/etermax/chat/a/h;

    sget-object v1, Lcom/etermax/chat/a/h;->a:Lcom/etermax/chat/a/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/chat/a/h;->b:Lcom/etermax/chat/a/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/chat/a/h;->c:Lcom/etermax/chat/a/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/chat/a/h;->d:Lcom/etermax/chat/a/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/etermax/chat/a/h;->e:Lcom/etermax/chat/a/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/etermax/chat/a/h;->f:[Lcom/etermax/chat/a/h;

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

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/chat/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/etermax/chat/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/chat/a/h;

    return-object v0
.end method

.method public static values()[Lcom/etermax/chat/a/h;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/etermax/chat/a/h;->f:[Lcom/etermax/chat/a/h;

    invoke-virtual {v0}, [Lcom/etermax/chat/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/chat/a/h;

    return-object v0
.end method
