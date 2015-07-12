.class Lcom/mopub/nativeads/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/mopub/nativeads/MoPubAdRenderer;

.field private final c:Lcom/mopub/nativeads/NativeResponse;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/nativeads/MoPubAdRenderer;Lcom/mopub/nativeads/NativeResponse;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mopub/nativeads/s;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/mopub/nativeads/s;->b:Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 16
    iput-object p3, p0, Lcom/mopub/nativeads/s;->c:Lcom/mopub/nativeads/NativeResponse;

    .line 17
    return-void
.end method


# virtual methods
.method a()Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mopub/nativeads/s;->b:Lcom/mopub/nativeads/MoPubAdRenderer;

    return-object v0
.end method

.method b()Lcom/mopub/nativeads/NativeResponse;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/nativeads/s;->c:Lcom/mopub/nativeads/NativeResponse;

    return-object v0
.end method
