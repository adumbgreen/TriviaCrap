.class Lcom/millennialmedia/android/MMCommand$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMCommand;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/MMWebView;

.field final synthetic b:Lcom/millennialmedia/android/MMJSResponse;

.field final synthetic c:Lcom/millennialmedia/android/MMCommand;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMJSResponse;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/millennialmedia/android/MMCommand$1;->c:Lcom/millennialmedia/android/MMCommand;

    iput-object p2, p0, Lcom/millennialmedia/android/MMCommand$1;->a:Lcom/millennialmedia/android/MMWebView;

    iput-object p3, p0, Lcom/millennialmedia/android/MMCommand$1;->b:Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 163
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->c:Lcom/millennialmedia/android/MMCommand;

    invoke-static {v0}, Lcom/millennialmedia/android/MMCommand;->a(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expandWithProperties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->a:Lcom/millennialmedia/android/MMWebView;

    iput-boolean v4, v0, Lcom/millennialmedia/android/MMWebView;->b:Z

    .line 166
    :cond_0
    const-string v0, "javascript:%s(%s);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/MMCommand$1;->c:Lcom/millennialmedia/android/MMCommand;

    invoke-static {v3}, Lcom/millennialmedia/android/MMCommand;->b(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand$1;->b:Lcom/millennialmedia/android/MMJSResponse;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMJSResponse;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand$1;->a:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 171
    return-void
.end method
