.class Lcom/etermax/gamescommon/i/b/a$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/a$11;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a$11;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a$11;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 386
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 387
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    .line 389
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->m(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    invoke-static {v3}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/a;->m(Lcom/etermax/gamescommon/i/b/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/a;->j(Lcom/etermax/gamescommon/i/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$11$1;->a:Lcom/etermax/gamescommon/i/b/a$11;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-static {v0, v3}, Lcom/etermax/gamescommon/i/b/a;->a(Lcom/etermax/gamescommon/i/b/a;Z)Z

    .line 395
    return-void
.end method
