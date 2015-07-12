.class public final enum Lcom/etermax/gamescommon/menu/a/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/gamescommon/menu/a/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/gamescommon/menu/a/o;

.field public static final enum b:Lcom/etermax/gamescommon/menu/a/o;

.field public static final enum c:Lcom/etermax/gamescommon/menu/a/o;

.field private static final synthetic e:[Lcom/etermax/gamescommon/menu/a/o;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/etermax/gamescommon/menu/a/o;

    const-string v1, "CHATS"

    sget v2, Lcom/etermax/o;->chat_plural:I

    invoke-direct {v0, v1, v3, v2}, Lcom/etermax/gamescommon/menu/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    .line 8
    new-instance v0, Lcom/etermax/gamescommon/menu/a/o;

    const-string v1, "FRIENDS"

    sget v2, Lcom/etermax/o;->friend_plural:I

    invoke-direct {v0, v1, v4, v2}, Lcom/etermax/gamescommon/menu/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    .line 9
    new-instance v0, Lcom/etermax/gamescommon/menu/a/o;

    const-string v1, "SUGGESTED"

    sget v2, Lcom/etermax/o;->suggested:I

    invoke-direct {v0, v1, v5, v2}, Lcom/etermax/gamescommon/menu/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/etermax/gamescommon/menu/a/o;

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->a:Lcom/etermax/gamescommon/menu/a/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->b:Lcom/etermax/gamescommon/menu/a/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/etermax/gamescommon/menu/a/o;->c:Lcom/etermax/gamescommon/menu/a/o;

    aput-object v1, v0, v5

    sput-object v0, Lcom/etermax/gamescommon/menu/a/o;->e:[Lcom/etermax/gamescommon/menu/a/o;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/etermax/gamescommon/menu/a/o;->d:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/gamescommon/menu/a/o;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/etermax/gamescommon/menu/a/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/a/o;

    return-object v0
.end method

.method public static values()[Lcom/etermax/gamescommon/menu/a/o;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/etermax/gamescommon/menu/a/o;->e:[Lcom/etermax/gamescommon/menu/a/o;

    invoke-virtual {v0}, [Lcom/etermax/gamescommon/menu/a/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/gamescommon/menu/a/o;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/etermax/gamescommon/menu/a/o;->d:I

    return v0
.end method
