.class Lcom/etermax/adsinterface/a/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/adsinterface/a/a$1;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/adsinterface/a/a;

.field final synthetic b:Lcom/etermax/adsinterface/a/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/adsinterface/a/a$1;Lcom/etermax/adsinterface/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etermax/adsinterface/a/a$1$1;->b:Lcom/etermax/adsinterface/a/a$1;

    iput-object p2, p0, Lcom/etermax/adsinterface/a/a$1$1;->a:Lcom/etermax/adsinterface/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a$1$1;->b:Lcom/etermax/adsinterface/a/a$1;

    iget-object v0, v0, Lcom/etermax/adsinterface/a/a$1;->c:Lcom/etermax/adsinterface/a/c;

    iget-object v1, p0, Lcom/etermax/adsinterface/a/a$1$1;->a:Lcom/etermax/adsinterface/a/a;

    invoke-interface {v0, v1}, Lcom/etermax/adsinterface/a/c;->onAdInfoLoadedOk(Lcom/etermax/adsinterface/a/a;)V

    .line 87
    return-void
.end method
