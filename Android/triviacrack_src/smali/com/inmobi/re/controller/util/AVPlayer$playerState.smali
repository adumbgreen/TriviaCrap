.class public final enum Lcom/inmobi/re/controller/util/AVPlayer$playerState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/re/controller/util/AVPlayer$playerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field public static final enum HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field public static final enum INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field public static final enum PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field public static final enum PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field public static final enum RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field public static final enum SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

.field private static final synthetic a:[Lcom/inmobi/re/controller/util/AVPlayer$playerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "SHOWING"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    new-instance v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    const-string v1, "RELEASED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/re/controller/util/AVPlayer$playerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->INIT:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PLAYING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->PAUSED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->HIDDEN:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->SHOWING:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->COMPLETED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->RELEASED:Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->a:[Lcom/inmobi/re/controller/util/AVPlayer$playerState;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    .locals 1
    .parameter

    .prologue
    .line 100
    const-class v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/inmobi/re/controller/util/AVPlayer$playerState;->a:[Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    invoke-virtual {v0}, [Lcom/inmobi/re/controller/util/AVPlayer$playerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/re/controller/util/AVPlayer$playerState;

    return-object v0
.end method
