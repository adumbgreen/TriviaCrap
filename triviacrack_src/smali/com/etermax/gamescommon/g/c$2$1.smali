.class Lcom/etermax/gamescommon/g/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/g/c$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/g/i;

.field final synthetic b:Lcom/etermax/gamescommon/g/a;

.field final synthetic c:Lcom/etermax/gamescommon/g/c$2;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/g/c$2;Lcom/etermax/gamescommon/g/i;Lcom/etermax/gamescommon/g/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/etermax/gamescommon/g/c$2$1;->c:Lcom/etermax/gamescommon/g/c$2;

    iput-object p2, p0, Lcom/etermax/gamescommon/g/c$2$1;->a:Lcom/etermax/gamescommon/g/i;

    iput-object p3, p0, Lcom/etermax/gamescommon/g/c$2$1;->b:Lcom/etermax/gamescommon/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/etermax/gamescommon/g/c$2$1;->c:Lcom/etermax/gamescommon/g/c$2;

    iget-object v0, v0, Lcom/etermax/gamescommon/g/c$2;->d:Lcom/etermax/gamescommon/g/h;

    iget-object v1, p0, Lcom/etermax/gamescommon/g/c$2$1;->a:Lcom/etermax/gamescommon/g/i;

    iget-object v2, p0, Lcom/etermax/gamescommon/g/c$2$1;->b:Lcom/etermax/gamescommon/g/a;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/g/h;->a(Lcom/etermax/gamescommon/g/i;Lcom/etermax/gamescommon/g/a;)V

    .line 634
    return-void
.end method
