.class public Lcom/etermax/preguntados/ui/tvshow/a/a;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Lcom/etermax/preguntados/h/e;
.implements Lcom/etermax/widget/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/tvshow/a/b;",
        ">;",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "Lcom/etermax/preguntados/h/e;",
        "Lcom/etermax/widget/c",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/etermax/preguntados/datasource/d;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/EditText;

.field i:Landroid/widget/EditText;

.field j:Landroid/widget/EditText;

.field k:Landroid/widget/ToggleButton;

.field l:Landroid/widget/EditText;

.field m:Landroid/widget/EditText;

.field n:Landroid/widget/EditText;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/EditText;

.field q:Landroid/widget/ToggleButton;

.field r:Landroid/widget/TextView;

.field private s:Lcom/etermax/tools/nationality/Nationality;

.field private t:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 517
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/tvshow/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->d()V

    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/etermax/preguntados/ui/tvshow/a/d;->d()Lcom/etermax/preguntados/ui/tvshow/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/tvshow/a/e;->a()Lcom/etermax/preguntados/ui/tvshow/a/a;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 361
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 363
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "REGISTRATION_ERROR_DIALOG"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/tvshow/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->e()V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 266
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 268
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 271
    :try_start_0
    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 273
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 274
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x76c

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x834

    if-gt v2, v3, :cond_0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 278
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 284
    goto :goto_0
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/tvshow/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->h()V

    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/tvshow/a/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->mCallbacks:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Lcom/etermax/preguntados/h/b;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/etermax/preguntados/h/b;-><init>(Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/h/b;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 245
    return-void

    .line 242
    :cond_0
    new-instance v0, Lcom/etermax/preguntados/h/b;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/h/b;-><init>(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/etermax/preguntados/h/f;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    new-instance v1, Lcom/etermax/preguntados/h/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/etermax/preguntados/h/d;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/preguntados/h/e;)V

    .line 297
    invoke-virtual {v1}, Lcom/etermax/preguntados/h/d;->a()V

    .line 298
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    new-instance v1, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;

    invoke-direct {v1}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;-><init>()V

    .line 319
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setName(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setSurname(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setAddress(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setTownship(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setPhone(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setEmail(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setGovernmentId(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " 00:00:00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setBirthdate(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setAreaCode(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setProvince(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setZipCode(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->s:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v0}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setCountry(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->FEMALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;->setGender(Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/a/a$6;

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a$6;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Lcom/etermax/preguntados/datasource/dto/RegistrationDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/a/a$6;->a(Ljava/lang/Object;)Z

    .line 358
    :cond_0
    return-void

    .line 332
    :cond_1
    sget-object v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->MALE:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private g()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    .line 368
    const/4 v0, 0x0

    .line 370
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 371
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_zipcode:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    move v1, v2

    .line 375
    :goto_0
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_township:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    move v1, v2

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_province:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    move v1, v2

    .line 386
    :cond_1
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_user_address:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    move v1, v2

    .line 392
    :cond_2
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 393
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_nationality:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    move v1, v2

    .line 398
    :cond_3
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 399
    :cond_4
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_birthdate:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    move v1, v2

    .line 410
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 411
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_phone:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    move v1, v2

    .line 416
    :cond_6
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 417
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_area_code:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    move v1, v2

    .line 422
    :cond_7
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 423
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_email:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    move v1, v2

    .line 432
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 433
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_id_number:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    move v1, v2

    .line 441
    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 442
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_last_name:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    move v1, v2

    .line 450
    :cond_a
    :goto_4
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 451
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_incomplete_name:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    move-object v1, v0

    move v0, v2

    .line 460
    :goto_5
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 461
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 464
    :cond_b
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_11

    .line 465
    sget v0, Lcom/etermax/o;->tos_14_txt:I

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->b(I)V

    .line 469
    :goto_6
    return v2

    .line 403
    :cond_c
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/etermax/preguntados/h/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v4

    const/16 v5, 0x12

    if-ge v4, v5, :cond_5

    .line 404
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_age:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    move v1, v2

    .line 406
    goto/16 :goto_1

    .line 426
    :cond_d
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/etermax/a/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 427
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->error_invalid_email:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    move v1, v2

    .line 429
    goto/16 :goto_2

    .line 436
    :cond_e
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[0-9]+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 437
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->error_invalid_number:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    move v1, v2

    .line 439
    goto/16 :goto_3

    .line 445
    :cond_f
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 446
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->error_invalid_letters:I

    new-array v4, v3, [Ljava/lang/Object;

    sget v5, Lcom/etermax/o;->last_name:I

    invoke-virtual {p0, v5}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    move v1, v2

    .line 448
    goto/16 :goto_4

    .line 454
    :cond_10
    iget-object v4, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 455
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->error_invalid_letters:I

    new-array v3, v3, [Ljava/lang/Object;

    sget v4, Lcom/etermax/o;->first_name:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    move-object v1, v0

    move v0, v2

    .line 457
    goto/16 :goto_5

    :cond_11
    move v2, v0

    goto/16 :goto_6

    :cond_12
    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto/16 :goto_5

    :cond_13
    move v1, v3

    goto/16 :goto_0
.end method

.method private h()V
    .locals 7

    .prologue
    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-static {}, Lcom/etermax/tools/nationality/Nationality;->values()[Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 548
    new-instance v5, Lcom/etermax/preguntados/ui/dashboard/b/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/etermax/tools/nationality/NationalityManager;->getName(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/etermax/preguntados/ui/dashboard/b/a;-><init>(Ljava/lang/String;Lcom/etermax/tools/nationality/Nationality;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    new-instance v0, Lcom/etermax/widget/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/etermax/widget/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/widget/c;Z)V

    .line 551
    invoke-virtual {v0}, Lcom/etermax/widget/a;->a()V

    .line 552
    return-void
.end method


# virtual methods
.method public a(I)Landroid/text/InputFilter;
    .locals 1
    .parameter

    .prologue
    .line 562
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 563
    return-object v0
.end method

.method public a()Lcom/etermax/preguntados/ui/tvshow/a/b;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/etermax/preguntados/ui/tvshow/a/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/tvshow/a/a$1;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;)V

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->d()V

    .line 235
    return-void
.end method

.method a(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    .line 253
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 262
    :cond_1
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/dashboard/b/a;)V
    .locals 3
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/dashboard/b/a;->a()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 557
    invoke-virtual {p1}, Lcom/etermax/preguntados/ui/dashboard/b/a;->a()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->s:Lcom/etermax/tools/nationality/Nationality;

    .line 558
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 559
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/b/a;

    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(Lcom/etermax/preguntados/ui/dashboard/b/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v4, v2, v1

    .line 477
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    const/4 v0, 0x1

    .line 482
    :cond_0
    return v0

    .line 476
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->e()V

    .line 291
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 515
    return-void
.end method

.method protected c()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x2d

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 140
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->s:Lcom/etermax/tools/nationality/Nationality;

    .line 141
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->s:Lcom/etermax/tools/nationality/Nationality;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->s:Lcom/etermax/tools/nationality/Nationality;

    invoke-static {v1, v3}, Lcom/etermax/tools/nationality/NationalityManager;->getNameResource(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->q:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/etermax/o;->female:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    aget-object v3, v0, v5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    const-string v0, ""

    move v1, v2

    .line 155
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 146
    :cond_1
    sget v0, Lcom/etermax/o;->male:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lcom/etermax/o;->tos_14:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 165
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/c;

    iget-object v3, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    invoke-direct {v1, p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/c;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->c:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 181
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->d:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 183
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->e:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 184
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 185
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 186
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->i:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 187
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->j:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    const/16 v3, 0x3c

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 188
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->l:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v7}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 189
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->m:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 190
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->n:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 191
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    invoke-virtual {p0, v7}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a(I)Landroid/text/InputFilter;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 193
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/a$2;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/a$2;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/a$3;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/a$3;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 213
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/a$4;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/a$4;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 222
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->q:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/etermax/preguntados/ui/tvshow/a/a$5;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/tvshow/a/a$5;-><init>(Lcom/etermax/preguntados/ui/tvshow/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->f()V

    .line 304
    return-void
.end method

.method d(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.etermax.com/es/terms/preguntados_susana"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method e(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->h()V

    .line 543
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/tvshow/a/a;->a()Lcom/etermax/preguntados/ui/tvshow/a/b;

    move-result-object v0

    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 487
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 488
    if-ge p4, v2, :cond_1

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    :goto_0
    add-int/lit8 v1, p3, 0x1

    if-ge v1, v2, :cond_2

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    :goto_1
    iget-object v1, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    .line 501
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 503
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->t:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/h/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->h:Landroid/widget/EditText;

    sget v1, Lcom/etermax/o;->alert_age:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/tvshow/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/tvshow/a/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 508
    return-void

    .line 491
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
