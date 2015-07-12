.class Lcom/etermax/preguntados/d/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/d/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/etermax/preguntados/d/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/d/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    iput p2, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v0}, Lcom/etermax/preguntados/d/d;->a(Lcom/etermax/preguntados/d/d;)[Z

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v0}, Lcom/etermax/preguntados/d/d;->a(Lcom/etermax/preguntados/d/d;)[Z

    move-result-object v0

    iget v3, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, v2

    .line 127
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v0}, Lcom/etermax/preguntados/d/d;->a(Lcom/etermax/preguntados/d/d;)[Z

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v0}, Lcom/etermax/preguntados/d/d;->b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    iget-object v0, v0, Lcom/etermax/preguntados/d/d;->a:Lcom/etermax/preguntados/d/c;

    invoke-static {v0}, Lcom/etermax/preguntados/d/c;->c(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v1}, Lcom/etermax/preguntados/d/d;->b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_1
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    iget-object v0, v0, Lcom/etermax/preguntados/d/d;->a:Lcom/etermax/preguntados/d/c;

    invoke-static {v0}, Lcom/etermax/preguntados/d/c;->d(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v1}, Lcom/etermax/preguntados/d/d;->b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v0}, Lcom/etermax/preguntados/d/d;->b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    iget-object v0, v0, Lcom/etermax/preguntados/d/d;->a:Lcom/etermax/preguntados/d/c;

    invoke-static {v0}, Lcom/etermax/preguntados/d/c;->e(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v1}, Lcom/etermax/preguntados/d/d;->b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    iget-object v0, v0, Lcom/etermax/preguntados/d/d;->a:Lcom/etermax/preguntados/d/c;

    invoke-static {v0}, Lcom/etermax/preguntados/d/c;->f(Lcom/etermax/preguntados/d/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/d/d$1;->b:Lcom/etermax/preguntados/d/d;

    invoke-static {v1}, Lcom/etermax/preguntados/d/d;->b(Lcom/etermax/preguntados/d/d;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/d/d$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
