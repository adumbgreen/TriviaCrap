.class Lcom/etermax/preguntados/d/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/d/a$2;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/d/a$2;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/d/a$2;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/etermax/preguntados/d/a$2$1;->a:Lcom/etermax/preguntados/d/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$2$1;->a:Lcom/etermax/preguntados/d/a$2;

    iget-object v0, v0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    const-string v1, "live"

    invoke-static {v0, v1}, Lcom/etermax/preguntados/d/a;->a(Lcom/etermax/preguntados/d/a;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$2$1;->a:Lcom/etermax/preguntados/d/a$2;

    iget-object v0, v0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/d/a;->dismiss()V

    .line 64
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$2$1;->a:Lcom/etermax/preguntados/d/a$2;

    iget-object v0, v0, Lcom/etermax/preguntados/d/a$2;->a:Lcom/etermax/preguntados/d/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/d/a;->dismiss()V

    .line 69
    return-void
.end method
