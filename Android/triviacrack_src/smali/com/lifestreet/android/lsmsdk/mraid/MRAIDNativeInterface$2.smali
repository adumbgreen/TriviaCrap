.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->expandToSizeWithUrl(Ljava/lang/String;II)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

.field final synthetic val$browserUserAgent:Ljava/lang/String;

.field final synthetic val$height:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$browserUserAgent:Ljava/lang/String;

    iput p4, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$width:I

    iput p5, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;

    #calls: Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->getMraidController()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;->access$100(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface;)Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$browserUserAgent:Ljava/lang/String;

    iget v3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$width:I

    iget v4, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDNativeInterface$2;->val$height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->loadURLAndExpand(Ljava/lang/String;Ljava/lang/String;II)V

    .line 215
    :cond_0
    return-void
.end method
