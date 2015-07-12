.class Lcom/etermax/gamescommon/i/b/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/i/b/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 381
    new-instance v3, Lcom/etermax/gamescommon/i/b/a$11$1;

    invoke-direct {v3, p0}, Lcom/etermax/gamescommon/i/b/a$11$1;-><init>(Lcom/etermax/gamescommon/i/b/a$11;)V

    .line 399
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 400
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/a;->g:Ljava/util/Date;

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 401
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/p;->DatePickerTheme:I

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 407
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/a$11;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/i/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/p;->DatePickerTheme:I

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0
.end method
