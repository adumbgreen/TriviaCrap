.class Lcom/b/a/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 383
    new-instance v0, Lcom/b/a/ay;

    invoke-direct {v0, p1}, Lcom/b/a/ay;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
