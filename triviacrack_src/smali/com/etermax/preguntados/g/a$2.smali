.class Lcom/etermax/preguntados/g/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/g/a;->e()Landroid/media/MediaPlayer$OnCompletionListener;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/g/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/g/a;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/etermax/preguntados/g/a$2;->a:Lcom/etermax/preguntados/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etermax/preguntados/g/a$2;->a:Lcom/etermax/preguntados/g/a;

    invoke-static {v0, p1}, Lcom/etermax/preguntados/g/a;->a(Lcom/etermax/preguntados/g/a;Landroid/media/MediaPlayer;)V

    .line 152
    return-void
.end method
