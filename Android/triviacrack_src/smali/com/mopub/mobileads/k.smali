.class final enum Lcom/mopub/mobileads/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/k;

.field public static final enum WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/k;

.field private static final synthetic b:[Lcom/mopub/mobileads/k;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/mopub/mobileads/k;

    const-string v1, "WEB_VIEW_DID_APPEAR"

    const-string v2, "javascript:webviewDidAppear();"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/mobileads/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/k;

    .line 28
    new-instance v0, Lcom/mopub/mobileads/k;

    const-string v1, "WEB_VIEW_DID_CLOSE"

    const-string v2, "javascript:webviewDidClose();"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/mobileads/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/k;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/mobileads/k;

    sget-object v1, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_APPEAR:Lcom/mopub/mobileads/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/k;->WEB_VIEW_DID_CLOSE:Lcom/mopub/mobileads/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/k;->b:[Lcom/mopub/mobileads/k;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/mopub/mobileads/k;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/k;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/mopub/mobileads/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/k;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/k;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/mopub/mobileads/k;->b:[Lcom/mopub/mobileads/k;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/k;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/k;->a:Ljava/lang/String;

    return-object v0
.end method
