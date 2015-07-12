.class Lcom/etermax/preguntados/d/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/d/a$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/d/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/d/a$1;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/preguntados/d/a$1$1;->a:Lcom/etermax/preguntados/d/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$1$1;->a:Lcom/etermax/preguntados/d/a$1;

    iget-object v0, v0, Lcom/etermax/preguntados/d/a$1;->a:Lcom/etermax/preguntados/d/a;

    const-string v1, "extra_shot"

    invoke-static {v0, v1}, Lcom/etermax/preguntados/d/a;->a(Lcom/etermax/preguntados/d/a;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$1$1;->a:Lcom/etermax/preguntados/d/a$1;

    iget-object v0, v0, Lcom/etermax/preguntados/d/a$1;->a:Lcom/etermax/preguntados/d/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/d/a;->dismiss()V

    .line 43
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/preguntados/d/a$1$1;->a:Lcom/etermax/preguntados/d/a$1;

    iget-object v0, v0, Lcom/etermax/preguntados/d/a$1;->a:Lcom/etermax/preguntados/d/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/d/a;->dismiss()V

    .line 48
    return-void
.end method
