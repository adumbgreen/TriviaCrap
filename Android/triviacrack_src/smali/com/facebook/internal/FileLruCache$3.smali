.class Lcom/facebook/internal/FileLruCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->postTrim()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FileLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$3;->this$0:Lcom/facebook/internal/FileLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$3;->this$0:Lcom/facebook/internal/FileLruCache;

    #calls: Lcom/facebook/internal/FileLruCache;->trim()V
    invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->access$200(Lcom/facebook/internal/FileLruCache;)V

    .line 273
    return-void
.end method
