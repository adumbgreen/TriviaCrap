.class Lcom/etermax/gamescommon/profile/image/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/image/a;->a(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/profile/image/c;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/image/a;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a$2;->b:Lcom/etermax/gamescommon/profile/image/a;

    iput-object p2, p0, Lcom/etermax/gamescommon/profile/image/a$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$2;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/profile/image/b;

    .line 144
    sget-object v2, Lcom/etermax/gamescommon/profile/image/a$8;->a:[I

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a$2;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/profile/image/b;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/image/b;->a:Lcom/etermax/gamescommon/profile/image/e;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/profile/image/e;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a$2;->b:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v2, v0, Lcom/etermax/gamescommon/profile/image/b;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/profile/image/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$2;->b:Lcom/etermax/gamescommon/profile/image/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/image/a;->b()V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$2;->b:Lcom/etermax/gamescommon/profile/image/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/image/a;->c()V

    goto :goto_0

    .line 155
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$2;->b:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->a(Lcom/etermax/gamescommon/profile/image/a;)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
