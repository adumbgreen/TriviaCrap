.class Lcom/etermax/adsinterface/a/a$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/a/a$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/etermax/adsinterface/a/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/a/a$1;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/etermax/adsinterface/a/a$1$2;->b:Lcom/etermax/adsinterface/a/a$1;

    iput-object p2, p0, Lcom/etermax/adsinterface/a/a$1$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1$2;->b:Lcom/etermax/adsinterface/a/a$1;

    iget-object v0, v0, Lcom/etermax/adsinterface/a/a$1;->c:Lcom/etermax/adsinterface/a/c;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/a$1$2;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/c;->onAdInfoLoadedFailed(Ljava/lang/Exception;)V

    .line 98
    return-void
.end method
