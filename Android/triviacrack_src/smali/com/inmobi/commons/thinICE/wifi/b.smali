.class final Lcom/inmobi/commons/thinICE/wifi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/thinICE/wifi/WifiScanner;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->a()Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;

    move-result-object v0

    .line 30
    invoke-static {}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->b()V

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;->onTimeout()V

    .line 34
    :cond_0
    return-void
.end method