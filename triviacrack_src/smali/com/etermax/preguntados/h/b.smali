.class public Lcom/etermax/preguntados/h/b;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/etermax/preguntados/h/b;->d:Landroid/app/DatePickerDialog$OnDateSetListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "mListener parameter must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    iput p2, p0, Lcom/etermax/preguntados/h/b;->a:I

    .line 37
    iput p3, p0, Lcom/etermax/preguntados/h/b;->b:I

    .line 38
    iput p4, p0, Lcom/etermax/preguntados/h/b;->c:I

    .line 40
    :try_start_0
    iput-object p1, p0, Lcom/etermax/preguntados/h/b;->d:Landroid/app/DatePickerDialog$OnDateSetListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "mListener parameter must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/etermax/preguntados/h/b;->a:I

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/h/b;->a:I

    .line 53
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/etermax/preguntados/h/b;->b:I

    .line 54
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/h/b;->c:I

    .line 58
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/etermax/preguntados/h/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/h/b;->d:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/etermax/preguntados/h/b;->a:I

    iget v4, p0, Lcom/etermax/preguntados/h/b;->b:I

    iget v5, p0, Lcom/etermax/preguntados/h/b;->c:I

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method
