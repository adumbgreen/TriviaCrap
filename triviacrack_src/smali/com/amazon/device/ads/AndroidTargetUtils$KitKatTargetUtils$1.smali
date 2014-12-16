.class final Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils;->enableWebViewDebugging(Z)V
.end annotation


# instance fields
.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/amazon/device/ads/AndroidTargetUtils$KitKatTargetUtils$1;->val$enable:Z

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 455
    return-void
.end method
