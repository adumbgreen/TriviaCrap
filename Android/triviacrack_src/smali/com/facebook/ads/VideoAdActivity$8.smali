.class Lcom/facebook/ads/VideoAdActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/VideoAdActivity;->configureViews()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/ads/VideoAdActivity;


# direct methods
.method constructor <init>(Lcom/facebook/ads/VideoAdActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #setter for: Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, p1}, Lcom/facebook/ads/VideoAdActivity;->access$602(Lcom/facebook/ads/VideoAdActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 263
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mIsMuted:Z
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$700(Lcom/facebook/ads/VideoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$600(Lcom/facebook/ads/VideoAdActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->updateVideoPlayerSize()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$100(Lcom/facebook/ads/VideoAdActivity;)V

    .line 271
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$800(Lcom/facebook/ads/VideoAdActivity;)Lcom/facebook/ads/VideoAdActivity$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->PAUSED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$800(Lcom/facebook/ads/VideoAdActivity;)Lcom/facebook/ads/VideoAdActivity$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->COMPLETED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-ne v0, v1, :cond_3

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$600(Lcom/facebook/ads/VideoAdActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/facebook/ads/VideoAdActivity;->access$900(Lcom/facebook/ads/VideoAdActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 280
    :cond_1
    :goto_1
    return-void

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$600(Lcom/facebook/ads/VideoAdActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$800(Lcom/facebook/ads/VideoAdActivity;)Lcom/facebook/ads/VideoAdActivity$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->PLAYING:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-ne v0, v1, :cond_4

    .line 274
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$600(Lcom/facebook/ads/VideoAdActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/facebook/ads/VideoAdActivity;->access$900(Lcom/facebook/ads/VideoAdActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 275
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->videoPlay()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$1000(Lcom/facebook/ads/VideoAdActivity;)V

    goto :goto_1

    .line 276
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #getter for: Lcom/facebook/ads/VideoAdActivity;->mState:Lcom/facebook/ads/VideoAdActivity$PlayerState;
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$800(Lcom/facebook/ads/VideoAdActivity;)Lcom/facebook/ads/VideoAdActivity$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->UNINITIALIZED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    if-ne v0, v1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    sget-object v1, Lcom/facebook/ads/VideoAdActivity$PlayerState;->INITIALIZED:Lcom/facebook/ads/VideoAdActivity$PlayerState;

    #calls: Lcom/facebook/ads/VideoAdActivity;->setState(Lcom/facebook/ads/VideoAdActivity$PlayerState;)V
    invoke-static {v0, v1}, Lcom/facebook/ads/VideoAdActivity;->access$1100(Lcom/facebook/ads/VideoAdActivity;Lcom/facebook/ads/VideoAdActivity$PlayerState;)V

    .line 278
    iget-object v0, p0, Lcom/facebook/ads/VideoAdActivity$8;->this$0:Lcom/facebook/ads/VideoAdActivity;

    #calls: Lcom/facebook/ads/VideoAdActivity;->videoPlay()V
    invoke-static {v0}, Lcom/facebook/ads/VideoAdActivity;->access$1000(Lcom/facebook/ads/VideoAdActivity;)V

    goto :goto_1
.end method
