.class final enum Lcom/mopub/mobileads/ak;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/mopub/mobileads/ak;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

.field public static final enum EXPAND:Lcom/mopub/mobileads/ak;

.field public static final enum GET_CURRENT_POSITION:Lcom/mopub/mobileads/ak;

.field public static final enum GET_DEFAULT_POSITION:Lcom/mopub/mobileads/ak;

.field public static final enum GET_MAX_SIZE:Lcom/mopub/mobileads/ak;

.field public static final enum GET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

.field public static final enum GET_SCREEN_SIZE:Lcom/mopub/mobileads/ak;

.field public static final enum OPEN:Lcom/mopub/mobileads/ak;

.field public static final enum PLAY_VIDEO:Lcom/mopub/mobileads/ak;

.field public static final enum RESIZE:Lcom/mopub/mobileads/ak;

.field public static final enum SET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

.field public static final enum STORE_PICTURE:Lcom/mopub/mobileads/ak;

.field public static final enum UNSPECIFIED:Lcom/mopub/mobileads/ak;

.field public static final enum USECUSTOMCLOSE:Lcom/mopub/mobileads/ak;

.field private static final synthetic b:[Lcom/mopub/mobileads/ak;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->CLOSE:Lcom/mopub/mobileads/ak;

    .line 10
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "EXPAND"

    const-string v2, "expand"

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->EXPAND:Lcom/mopub/mobileads/ak;

    .line 11
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "USECUSTOMCLOSE"

    const-string v2, "usecustomclose"

    invoke-direct {v0, v1, v6, v2}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->USECUSTOMCLOSE:Lcom/mopub/mobileads/ak;

    .line 12
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "OPEN"

    const-string v2, "open"

    invoke-direct {v0, v1, v7, v2}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->OPEN:Lcom/mopub/mobileads/ak;

    .line 13
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "RESIZE"

    const-string v2, "resize"

    invoke-direct {v0, v1, v8, v2}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->RESIZE:Lcom/mopub/mobileads/ak;

    .line 14
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "GET_RESIZE_PROPERTIES"

    const/4 v2, 0x5

    const-string v3, "getResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->GET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

    .line 15
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "SET_RESIZE_PROPERTIES"

    const/4 v2, 0x6

    const-string v3, "setResizeProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->SET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

    .line 16
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "PLAY_VIDEO"

    const/4 v2, 0x7

    const-string v3, "playVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->PLAY_VIDEO:Lcom/mopub/mobileads/ak;

    .line 17
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "STORE_PICTURE"

    const/16 v2, 0x8

    const-string v3, "storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->STORE_PICTURE:Lcom/mopub/mobileads/ak;

    .line 18
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "GET_CURRENT_POSITION"

    const/16 v2, 0x9

    const-string v3, "getCurrentPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->GET_CURRENT_POSITION:Lcom/mopub/mobileads/ak;

    .line 19
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "GET_DEFAULT_POSITION"

    const/16 v2, 0xa

    const-string v3, "getDefaultPosition"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->GET_DEFAULT_POSITION:Lcom/mopub/mobileads/ak;

    .line 20
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "GET_MAX_SIZE"

    const/16 v2, 0xb

    const-string v3, "getMaxSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->GET_MAX_SIZE:Lcom/mopub/mobileads/ak;

    .line 21
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "GET_SCREEN_SIZE"

    const/16 v2, 0xc

    const-string v3, "getScreenSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->GET_SCREEN_SIZE:Lcom/mopub/mobileads/ak;

    .line 22
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v2, 0xd

    const-string v3, "createCalendarEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

    .line 23
    new-instance v0, Lcom/mopub/mobileads/ak;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0xe

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/ak;->UNSPECIFIED:Lcom/mopub/mobileads/ak;

    .line 8
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/mopub/mobileads/ak;

    sget-object v1, Lcom/mopub/mobileads/ak;->CLOSE:Lcom/mopub/mobileads/ak;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mobileads/ak;->EXPAND:Lcom/mopub/mobileads/ak;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/mobileads/ak;->USECUSTOMCLOSE:Lcom/mopub/mobileads/ak;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/mobileads/ak;->OPEN:Lcom/mopub/mobileads/ak;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mopub/mobileads/ak;->RESIZE:Lcom/mopub/mobileads/ak;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mopub/mobileads/ak;->GET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mopub/mobileads/ak;->SET_RESIZE_PROPERTIES:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mopub/mobileads/ak;->PLAY_VIDEO:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mopub/mobileads/ak;->STORE_PICTURE:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mopub/mobileads/ak;->GET_CURRENT_POSITION:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mopub/mobileads/ak;->GET_DEFAULT_POSITION:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mopub/mobileads/ak;->GET_MAX_SIZE:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mopub/mobileads/ak;->GET_SCREEN_SIZE:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mopub/mobileads/ak;->CREATE_CALENDAR_EVENT:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/mopub/mobileads/ak;->UNSPECIFIED:Lcom/mopub/mobileads/ak;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mobileads/ak;->b:[Lcom/mopub/mobileads/ak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/mopub/mobileads/ak;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/mopub/mobileads/ak;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-static {p0}, Lcom/mopub/mobileads/ak;->b(Ljava/lang/String;)Lcom/mopub/mobileads/ak;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/mopub/mobileads/ak;
    .locals 5
    .parameter

    .prologue
    .line 32
    invoke-static {}, Lcom/mopub/mobileads/ak;->values()[Lcom/mopub/mobileads/ak;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    iget-object v4, v0, Lcom/mopub/mobileads/ak;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/ak;->UNSPECIFIED:Lcom/mopub/mobileads/ak;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/ak;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/mopub/mobileads/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/ak;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/ak;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/mopub/mobileads/ak;->b:[Lcom/mopub/mobileads/ak;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/ak;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/ak;->a:Ljava/lang/String;

    return-object v0
.end method
