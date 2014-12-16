.class Lcom/smartadserver/android/library/controller/mraid/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->expand(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 211
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASAdView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    const-string v1, "expanded"

    invoke-virtual {v0, v1, v4}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Ljava/lang/String;Z)V

    .line 217
    :cond_0
    const-string v0, "default"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "expanded"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "resized"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->b(Lcom/smartadserver/android/library/controller/mraid/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/a;->c(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/c;

    move-result-object v3

    iget-boolean v3, v3, Lcom/smartadserver/android/library/controller/mraid/c;->a:Z

    if-nez v3, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v3}, Lcom/smartadserver/android/library/controller/mraid/a;->c(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/c;

    move-result-object v3

    iget-object v5, v3, Lcom/smartadserver/android/library/controller/mraid/c;->b:Ljava/lang/String;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;IIZLjava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$2$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$2$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/a$2;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartadserver/android/library/ui/SASAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
