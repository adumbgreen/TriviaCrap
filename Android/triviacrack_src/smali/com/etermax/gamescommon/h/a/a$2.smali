.class Lcom/etermax/gamescommon/h/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/h/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/h/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/a/b;->b(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;)I

    move-result v0

    sget v2, Lcom/etermax/i;->tab_all_button:I

    if-ne v0, v2, :cond_2

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/h/a/a;->a(Ljava/lang/String;)V

    .line 147
    :goto_0
    const/4 v0, 0x1

    .line 149
    :goto_1
    return v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;I)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;)I

    move-result v0

    sget v2, Lcom/etermax/i;->tab_favorite_button:I

    if-ne v0, v2, :cond_3

    .line 140
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->b(Lcom/etermax/gamescommon/h/a/a;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/g;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/a$2;->a:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->c(Lcom/etermax/gamescommon/h/a/a;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/g;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/g;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
