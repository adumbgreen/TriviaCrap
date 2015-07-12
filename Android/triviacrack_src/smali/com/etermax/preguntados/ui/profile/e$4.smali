.class Lcom/etermax/preguntados/ui/profile/e$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/e;->z()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/profile/e;",
        "Lcom/etermax/preguntados/datasource/dto/ProfileDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/profile/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e$4;->b()Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    .line 145
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/gamescommon/profile/ui/h;)V

    .line 146
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/e;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/profile/e;->s()V

    .line 148
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/profile/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 140
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p1, Lcom/etermax/preguntados/ui/profile/e;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/e$4;->a(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p1, Lcom/etermax/preguntados/ui/profile/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/e$4;->a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/ProfileDTO;
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/e;->p:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e$4;->a:Lcom/etermax/preguntados/ui/profile/e;

    iget-wide v1, v1, Lcom/etermax/preguntados/ui/profile/e;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->e(J)Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    move-result-object v0

    return-object v0
.end method
