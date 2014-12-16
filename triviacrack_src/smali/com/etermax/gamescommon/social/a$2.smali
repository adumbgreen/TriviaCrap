.class Lcom/etermax/gamescommon/social/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/social/d;

.field final synthetic c:Lcom/etermax/gamescommon/social/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/social/a;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/etermax/gamescommon/social/a$2;->c:Lcom/etermax/gamescommon/social/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/social/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/etermax/gamescommon/social/a$2;->b:Lcom/etermax/gamescommon/social/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Lcom/etermax/gamescommon/b/q;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/etermax/gamescommon/social/a$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/b/q;-><init>(ZLjava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/etermax/gamescommon/social/a$2;->c:Lcom/etermax/gamescommon/social/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/a;->f:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 205
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$2;->b:Lcom/etermax/gamescommon/social/d;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/d;->a()V

    .line 206
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 196
    new-instance v0, Lcom/etermax/gamescommon/b/q;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/etermax/gamescommon/social/a$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/b/q;-><init>(ZLjava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/etermax/gamescommon/social/a$2;->c:Lcom/etermax/gamescommon/social/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/a;->f:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 198
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$2;->b:Lcom/etermax/gamescommon/social/d;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/d;->a()V

    .line 199
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/etermax/gamescommon/b/q;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/etermax/gamescommon/social/a$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/etermax/gamescommon/b/q;-><init>(ZLjava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/etermax/gamescommon/social/a$2;->c:Lcom/etermax/gamescommon/social/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/social/a;->f:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 212
    iget-object v0, p0, Lcom/etermax/gamescommon/social/a$2;->b:Lcom/etermax/gamescommon/social/d;

    invoke-interface {v0}, Lcom/etermax/gamescommon/social/d;->a()V

    .line 213
    return-void
.end method
