.class Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->loadURLAndExpand(Ljava/lang/String;Ljava/lang/String;II)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

.field final synthetic val$expandHeight:I

.field final synthetic val$expandWidth:I

.field final synthetic val$responseBody:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->val$responseBody:Ljava/lang/String;

    iput p3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->val$expandWidth:I

    iput p4, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->val$expandHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->this$0:Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController;->getMraidView()Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->val$responseBody:Ljava/lang/String;

    iget v2, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->val$expandWidth:I

    iget v3, p0, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDController$2;->val$expandHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lifestreet/android/lsmsdk/mraid/MRAIDView;->expandToSizeWithContent(Ljava/lang/String;II)V

    .line 307
    :cond_0
    return-void
.end method
