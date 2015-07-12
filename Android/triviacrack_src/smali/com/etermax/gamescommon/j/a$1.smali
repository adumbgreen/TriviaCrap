.class Lcom/etermax/gamescommon/j/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;)Z
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/etermax/gamescommon/j/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/j/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/etermax/gamescommon/j/a$1;->b:Lcom/etermax/gamescommon/j/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/j/a$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/etermax/gamescommon/j/a$1;->b:Lcom/etermax/gamescommon/j/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/j/a$1;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/j/a;->a(Lcom/etermax/gamescommon/j/a;Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/etermax/gamescommon/j/a$1;->b:Lcom/etermax/gamescommon/j/a;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/j/a$1;->b:Lcom/etermax/gamescommon/j/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/j/a;->c()V

    .line 129
    return-void
.end method
