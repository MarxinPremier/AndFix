.class public Lcom/wangzuo/andfix/MainActivity_CF;
.super Landroid/support/v7/app/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wangzuo/andfix/MainActivity$a;
    }
.end annotation


# instance fields
.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/alipay/euler/andfix/patch/PatchManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/l;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wangzuo/andfix/MainActivity;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->m()V

    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->k()V

    .line 40
    invoke-direct {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->j()V

    .line 41
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/wangzuo/andfix/MyApplication;

    invoke-virtual {v0}, Lcom/wangzuo/andfix/MyApplication;->a()Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wangzuo/andfix/MainActivity_CF;->o:Lcom/alipay/euler/andfix/patch/PatchManager;

    .line 48
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 55
    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/wangzuo/andfix/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wangzuo/andfix/MainActivity_CF;->n:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/wangzuo/andfix/MainActivity_CF;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wangzuo/andfix/MainActivity_CF;->m:Landroid/widget/Button;

    .line 59
    invoke-direct {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->l()V

    .line 61
    iget-object v0, p0, Lcom/wangzuo/andfix/MainActivity_CF;->m:Landroid/widget/Button;

    new-instance v1, Lcom/wangzuo/andfix/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/wangzuo/andfix/MainActivity$a;-><init>(Lcom/wangzuo/andfix/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private l()V
    .locals 2
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        clazz = "com.wangzuo.andfix.MainActivity"
        method = "l"
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wangzuo/andfix/MainActivity_CF;->n:Landroid/widget/TextView;

    const-string v1, "no bug"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/out.apatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/wangzuo/andfix/MainActivity_CF;->o:Lcom/alipay/euler/andfix/patch/PatchManager;

    invoke-virtual {v1, v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->addPatch(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "apatch/out.apatch"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    if-nez v0, :cond_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/l;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/wangzuo/andfix/MainActivity_CF;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/wangzuo/andfix/MainActivity_CF;->i()V

    .line 32
    return-void
.end method
