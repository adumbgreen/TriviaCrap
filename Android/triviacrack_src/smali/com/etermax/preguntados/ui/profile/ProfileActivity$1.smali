.class Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/ProfileActivity;Lcom/etermax/preguntados/datasource/dto/ProfileDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/ProfileDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Lcom/etermax/preguntados/ui/profile/ProfileActivity;)V

    .line 113
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;->b:Lcom/etermax/preguntados/ui/profile/ProfileActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->i:Lcom/etermax/tools/social/a/b;

    new-instance v1, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/profile/ProfileActivity$1$1;-><init>(Lcom/etermax/preguntados/ui/profile/ProfileActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/social/a/b;->a(Lcom/etermax/tools/social/a/f;)V

    .line 132
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
