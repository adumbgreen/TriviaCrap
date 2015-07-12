.class Lcom/etermax/preguntados/ui/profile/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/e;->r()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/profile/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/e;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/e$2;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$2;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/profile/e;->b(Lcom/etermax/preguntados/ui/profile/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/f;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e$2;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-static {v1}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/ui/profile/e;)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/profile/f;->a(Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V

    .line 116
    return-void
.end method
