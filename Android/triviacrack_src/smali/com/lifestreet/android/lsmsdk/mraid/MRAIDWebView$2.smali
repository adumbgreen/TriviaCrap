.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;-><init>(Landroid/content/Context;Landroid/webkit/WebViewClient;Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
