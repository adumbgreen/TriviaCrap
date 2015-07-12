.class public Lcom/etermax/chat/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/chat/ui/f;


# instance fields
.field private a:Lcom/etermax/chat/a/i;

.field private b:Lcom/etermax/chat/a/l;

.field private c:Ljava/lang/String;

.field private d:Lcom/etermax/chat/a/h;

.field private e:Lcom/etermax/chat/a/k;

.field private f:Ljava/util/Date;

.field private g:Lcom/etermax/chat/a/g;

.field private h:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/etermax/chat/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/etermax/chat/a/f;->a:Lcom/etermax/chat/a/i;

    .line 29
    sget-object v0, Lcom/etermax/chat/a/h;->a:Lcom/etermax/chat/a/h;

    iput-object v0, p0, Lcom/etermax/chat/a/f;->d:Lcom/etermax/chat/a/h;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/chat/a/l;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/chat/a/f;->b:Lcom/etermax/chat/a/l;

    return-object v0
.end method

.method public a(Lcom/etermax/chat/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/etermax/chat/a/f;->g:Lcom/etermax/chat/a/g;

    .line 86
    return-void
.end method

.method public a(Lcom/etermax/chat/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/etermax/chat/a/f;->d:Lcom/etermax/chat/a/h;

    .line 62
    return-void
.end method

.method public a(Lcom/etermax/chat/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/etermax/chat/a/f;->e:Lcom/etermax/chat/a/k;

    .line 70
    return-void
.end method

.method public a(Lcom/etermax/chat/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etermax/chat/a/f;->b:Lcom/etermax/chat/a/l;

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/etermax/chat/a/f;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/etermax/chat/a/f;->f:Ljava/util/Date;

    .line 74
    return-void
.end method

.method public a(Lcom/etermax/chat/a/f;)Z
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/chat/a/f;->b()Lcom/etermax/chat/a/i;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/chat/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/etermax/chat/a/i;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/chat/a/f;->a:Lcom/etermax/chat/a/i;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/etermax/chat/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/etermax/chat/a/h;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/chat/a/f;->d:Lcom/etermax/chat/a/h;

    return-object v0
.end method

.method public e()Lcom/etermax/chat/a/k;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/etermax/chat/a/f;->e:Lcom/etermax/chat/a/k;

    return-object v0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/chat/a/f;->f:Ljava/util/Date;

    return-object v0
.end method

.method public g()Lcom/etermax/chat/a/g;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/chat/a/f;->g:Lcom/etermax/chat/a/g;

    return-object v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/chat/a/f;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
