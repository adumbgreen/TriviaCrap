.class Lcom/etermax/gamescommon/profile/image/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/etermax/gamescommon/profile/image/e;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field final synthetic f:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/profile/image/a;Lcom/etermax/gamescommon/profile/image/e;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/b;->f:Lcom/etermax/gamescommon/profile/image/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/etermax/gamescommon/profile/image/b;->a:Lcom/etermax/gamescommon/profile/image/e;

    .line 385
    iput-object p3, p0, Lcom/etermax/gamescommon/profile/image/b;->b:Ljava/lang/String;

    .line 386
    iput-object p4, p0, Lcom/etermax/gamescommon/profile/image/b;->c:Landroid/graphics/drawable/Drawable;

    .line 387
    iput-object p5, p0, Lcom/etermax/gamescommon/profile/image/b;->d:Ljava/lang/String;

    .line 388
    iput-object p6, p0, Lcom/etermax/gamescommon/profile/image/b;->e:Ljava/lang/String;

    .line 389
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/b;->b:Ljava/lang/String;

    return-object v0
.end method
