.class Lcom/smartadserver/android/library/controller/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/d/a;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/d/a;

.field final synthetic b:Lcom/smartadserver/android/library/ui/g;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/d/a;Lcom/smartadserver/android/library/ui/g;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$4;->d:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$4;->a:Lcom/smartadserver/android/library/d/a;

    iput-object p3, p0, Lcom/smartadserver/android/library/controller/a$4;->b:Lcom/smartadserver/android/library/ui/g;

    iput-object p4, p0, Lcom/smartadserver/android/library/controller/a$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 350
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$4;->a:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 351
    if-nez v1, :cond_0

    .line 353
    invoke-static {}, Lcom/smartadserver/android/library/ui/SASAdView;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$4;->b:Lcom/smartadserver/android/library/ui/g;

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$4;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/ui/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$4;->a:Lcom/smartadserver/android/library/d/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/d/a;->g()I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$4;->b:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonPosition(I)V

    .line 360
    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$4;->d:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    iget-object v1, v1, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v1, v0}, Lcom/smartadserver/android/library/ui/g;->setCloseButtonPosition(I)V

    .line 361
    return-void
.end method
