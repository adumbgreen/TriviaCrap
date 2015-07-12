.class Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final decoratedStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/amazon/device/ads/WebRequest;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/WebRequest;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;->this$0:Lcom/amazon/device/ads/WebRequest;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1169
    iput-object p2, p0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;->decoratedStream:Ljava/io/InputStream;

    .line 1170
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;->decoratedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1182
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;->this$0:Lcom/amazon/device/ads/WebRequest;

    #getter for: Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z
    invoke-static {v0}, Lcom/amazon/device/ads/WebRequest;->access$000(Lcom/amazon/device/ads/WebRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;->this$0:Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->closeConnection()V

    .line 1186
    :cond_0
    return-void
.end method

.method public read()I
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;->decoratedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method
