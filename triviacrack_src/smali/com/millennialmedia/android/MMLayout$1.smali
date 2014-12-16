.class Lcom/millennialmedia/android/MMLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMLayout;->setCloseArea(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$1;->b:Lcom/millennialmedia/android/MMLayout;

    iput-object p2, p0, Lcom/millennialmedia/android/MMLayout$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$1;->b:Lcom/millennialmedia/android/MMLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLayout;->a(Lcom/millennialmedia/android/MMLayout;Ljava/lang/String;)V

    .line 351
    return-void
.end method
